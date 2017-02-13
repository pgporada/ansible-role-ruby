# Ansible Role: ansible-role-ruby
This role does XYZ. This is a boilerplate. Fill me out.

- - - -
# Role Variables

List of gems to install. Defaults to empty list.

    ruby_gemlist: []

- - - -
# Example Playbook

    ---
    - hosts: localhost
      connection: local
      become: true
      become_method: sudo
      vars:
        ruby_gemlist:
          - bundler
          - kitchen
      roles:
        - ansible-role-ruby
    ...

- - - -
# How to hack away at this role
Before submitting a PR, please create a test and run it through test-kitchen. You will need to have at least `Ruby 2.x`, probably through `rbenv`, and `bundler`.

Lint all the yaml files with [yamllint](https://github.com/adrienverge/yamllint). Warnings are ok, fix all errors before committing back up.

find -type f -name "*.yml" -exec yamllint -c yamllint.yml -f parsable {} \;

Set up test-kitchen dependencies

    git clone git@github.com:pgporada/ansible-role-ruby.git
    bundle install
    bundle update
    bundle exec kitchen create
    bundle exec kitchen converge
    bundle exec kitchen verify
    bundle exec kitchen destroy

- - - -
# Theme Music
[The Slackers - Same Everyday](https://www.youtube.com/watch?v=Qy_2OqTvW34)

- - - -
# Author information and license

MIT

Phil Porada - philporada@gmail.com
