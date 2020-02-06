{% from "docker/map.jinja" import docker with context %}

# Install Docker CE from Docker debian repo
docker-pkg-dep:
  pkg.installed:
    - pkgs:
        {%- for pkgname in docker.prereqs %}
        - {{ pkgname }}
        {%- endfor %}

docker-pkg-repo:
  pkgrepo.managed:
    {% for key, value in docker.repo.items() -%}
    - {{ key }}: {{ value }}
    {% endfor %}
    - refresh: True

docker-pkg:
  pkg.installed: 
   - name: {{ docker.package }}
   - require:
      - pkg: docker-pkg-dep

# Allow these users to access Docker daemon
docker:
  group.present:
     - addusers: 
       - vagrant

# Requirements for Salt to interact with Docker
python-pip:
  pkg.installed

docker-python-modules:
  pip.installed:
    - names: 
      - docker 
    - reload_modules: True
    - upgrade: True
    - require:
      - pkg: python-pip
