@prod_test
Feature:Manage Building
  Background:
    Given I am a logged in user - buildings account
    Then I should see the navigation panel has sign out link
    When I click on manage my buildings link
    And I am on "Buildings" page

  Scenario: Save and return to buildings details summary button
    And I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      |Add a description (optional)        | Nursery  |
      | Postcode                           | SW1W9SZ  |
    And I click on find address
    And I select the building address "151 Buckingham Palace Road" from the drop down option
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    And The building status tag is "INCOMPLETE"
    When I click on answer question
    Then I am on "Internal and external areas" page
    And I enter 0 for external area
    And I enter 9 for internal area
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    And The building status tag is "INCOMPLETE"
    When I click on answer question
    Then I am on "Building type" page
    And I select the first building type
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    And The building status tag is "INCOMPLETE"
    When I click on answer question
    Then I am on "Security clearance" page
    And I select the first security type
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    And The building status tag is "COMPLETED"