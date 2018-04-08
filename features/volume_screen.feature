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
        |target|result|
        |Currency|Currency|
