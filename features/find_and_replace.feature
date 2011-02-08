Feature: --help option

  Use the --help option in the shell to describe the arguments accepted by find_and_replace

  Scenario: access help
    When I run "ruby find_and_replace.rb --help"
    Then the output should contain "Help"
