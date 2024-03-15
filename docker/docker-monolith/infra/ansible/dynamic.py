#!/usr/bin/env python
import json
import requests

# Замените значения переменных на свои реальные данные для доступа к API Yandex Cloud
IAM_TOKEN = 'YOUR_YANDEX_CLOUD_IAM_TOKEN'
CLOUD_ID = 'YOUR_YANDEX_CLOUD_ID'
FOLDER_ID = 'YOUR_YANDEX_CLOUD_FOLDER_ID'

def get_yacloud_instances():
    headers = {
        'Content-Type': 'application/json',
        'Authorization': f'Bearer {IAM_TOKEN}',
    }

    params = {
        'folderId': FOLDER_ID,
    }

    response = requests.get(
        f'https://compute.api.cloud.yandex.net/compute/v1/instances',
        headers=headers,
        params=params,
    )

    if response.status_code != 200:
        raise Exception(f"Failed to fetch instances: {response.text}")

    return response.json()

def format_ansible_inventory(instances):
    inventory = {
        'all': {
            'hosts': [],
            'children': []
        }
    }

    for instance in instances['instances']:
        inventory['all']['hosts'].append(instance['name'])

    return json.dumps(inventory)

if __name__ == "__main__":
    instances = get_yacloud_instances()
    inventory = format_ansible_inventory(instances)
    print(inventory)
