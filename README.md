# Ansible Role: ansible-role-ruby
This role does XYZ. This is a boilerplate. Fill me out.

- - - -
# Role Variables

This var does XYZ

    var_name: "default value"

This var does ABC

    some_other_var: "default value"

- - - -
# Example Playbook

    ---
    - hosts: localhost
      connection: local
      become: true
      become_method: sudo
      roles:
        - ansible-role-ruby
    ...

- - - -
# How to hack away at this role
Before submitting a PR, please create a test and run it through test-kitchen. You will need to have at least `Ruby 2.x`, probably through `rbenv`, and `bundler`.

Lint all the yaml files with [yamllint](https://github.com/adrienverge/yamllint). Warnings are ok, fix all errors before committing back up.

find -type f -name "*.yml" -exec yamllint -c yamllint.yml -f parsable {} \;

Set up test-kitchen dependencies

    git clone git@gitlab.com:pgporada-dltcode/ansible-role-ruby.git
    bundle install
    bundle update

Test-kitchen needs our bitbucket ssh key so it can pull code from Bitbucket on our behalf.

    ssh-add -D
    ssh-add -k ~/BITBUCKET_KEY_NAME
    ssh-add -L
    bundle exec kitchen create
    bundle exec kitchen converge
    bundle exec kitchen verify
    bundle exec kitchen destroy

- - - -
# Theme Music
[The Slackers - Same Everyday](https://www.youtube.com/watch?v=Qy_2OqTvW34)

- - - -
# Author information and license

BSD

Phil Porada - philporada@gmail.com
