Feature: User is able to converte volume units

  Background:
    Given I click i Got it button
    Then I land on Area screen

  Scenario: User is able to call menu by swiping
    When I swip in the menu
    Then I see app menu

  Scenario Outline:
    When I swip in the menu
    And I select "<target>" from menu
    Then I land on "<result>" screen

    Examples:
      | target   | result   |
      | Currency | Currency |

  @wip
  Scenario Outline: Converting
    When I swip in the menu
    And I select "<menu>" from menu
    Then I land on "<header>" screen
    When I enter "<target>" to From field
    Then I get "<result>" in To field

    Examples:
      | menu   | header | target | result |
      | Energy | Energy | 3      | 0.003  |
      | Power  | Power  | 3      | 0.003  |
      | Time   | Time   | 3      | 36     |