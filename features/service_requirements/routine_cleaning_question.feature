Feature:Routine cleaning
  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Routine cleaning"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page

  Scenario: Number of occupants question
    When I am on the "Service requirements" page
    And I click on Answer question
    And I am on the "Routine cleaning" page
    When I click on "Save and return"
    Then I should see the following error messages
      |Enter number of building occupants|
    When I enter 0 for routine cleaning
    And I click on "Save and return"
    Then I should see the following error messages
      |The number of building occupants must be a whole number between 1 and 999,999,999|
    When I enter 999999999 for routine cleaning
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Change"
    Then I am on the "Routine cleaning" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page










