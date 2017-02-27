#!/usr/bin/env bats

@test "Ensure gem is installed" {
    run rpm -q rubygems
    [ "$status" -eq 0 ]
}

@test "Ensure certain gems (bundler) are installed" {
    local PATH=$PATH:/usr/local/bin
    run which bundler
    [ "$status" -eq 0 ]
}

@test "Ensure certain gems (rubocop) are installed" {
    local PATH=$PATH:/usr/local/bin
    run which rubocop
    [ "$status" -eq 0 ]
}
