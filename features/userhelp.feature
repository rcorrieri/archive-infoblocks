Feature: The infoblocks CLI does things a sane CLI should do.

  Scenario: Run infoblocks with no commands
    When I run `infoblocks`
    Then the output should contain "SYNOPSIS"
  
  Scenario: Run infoblocks with help arguments
    When I run `infoblocks -h`
    Then the output should contain "COMMANDS"

  Scenario: Run infoblocks with an invalid command
    When I run `infoblocks not_a_command`
    Then the output should contain "error: Unknown command"
