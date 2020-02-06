{%- set tag = '1.17.8' %}
{%- set repo = 'nginx' %}
{%- set port = '8081' %}

docker_nginx:
  docker_container.running:
      - image: {{ repo }}:{{ tag }}
      - port_bindings:
        - {{ port }}:80
      - restart_policy: always
      - require:
        - sls: docker
