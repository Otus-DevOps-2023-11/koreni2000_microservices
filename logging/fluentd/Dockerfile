FROM fluent/fluentd:v1.16-2
USER root
RUN gem uninstall -I elasticsearch && gem install elasticsearch -v 7.17.0
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "5.0.3"]
RUN ["gem", "install", "fluent-plugin-grok-parser", "--no-document", "--version", "2.0.0"]
ADD fluent.conf /fluentd/etc
USER fluent
