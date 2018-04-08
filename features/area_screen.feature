@area
Feature: User is able to canverte area units

  Background:
    Given I click i Got it button
 @wip
 Scenario: User is able to desmiss help
   Given I land on help popup
   When I click i Got it button
   Then I land on Area screen

  Scenario: User is able to swap values
    Given I see "Sq Kilometre" in From header
    And I see "Sq Metre" in To header
    When I click on Swap button
    Then I see "Sq Metre" in From header
    And I see "Sq KiloMetre" in To header

  Scenario Outline: User is able to convert default units
    Given I click on Clear button
    When I enter "<target>" to From field
    Then I get "<result>" in To field
    Examples:
      | target | result  |
      | 1      | 1000000 |
      | 2      | 2000000 |
      | 3      | 3000000 |
    Scenario: User is able to use soft keyboard to enter values
      Given I click on Clear button
      And I click on From
      And I press "3" on soft keyboard
      Thet I get "3000000" in To field
