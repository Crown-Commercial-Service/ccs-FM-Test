Feature:Mechanical and electrical engineering maintenance
  Background: Login page
    Given I am a logged in user - buildings account
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all

  Scenario: Navigating to Internal and external areas from service requirement page
    And I click on the "Mechanical and electrical engineering maintenance"
    And I am on requirements page
    Then I answer about the contract question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the service requirements summary page
    When I am on the "Service requirements" page
    And I click on "Change"
    And I am on the "Internal and external areas" page
    And I enter 0 for internal area
    When I click on "Save and return"
    Then I should see the following error messages
      |There is a problem                              |
      |Gross Internal Area (GIA) must be greater than 0|
    And I enter 9999999 for internal area
    When I click on "Save and return"
    Then I am on the "Service requirements" page
    And The mechanical service volume details displayed are:
      |Mechanical and electrical engineering maintenance|
      |Gross Internal Area - number of square metres   |
      |9999|

  Scenario: Navigating to Internal and external areas from service requirement page
    And I click on the "Cleaning of external areas"
    And I am on requirements page
    Then I answer about the contract question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the service requirements summary page
    When I am on the "Service requirements" page
    And I click on "Change"
    And I am on the "Internal and external areas" page
    And I enter 0 for external area
    When I click on "Save and return"
    Then I should see the following error messages
      |There is a problem                  |
      |External area must be greater than 0|
    And I enter 9999999 for external area
    When I click on "Save and return"
    Then I am on the "Service requirements" page
    And The cleaning of external area volume details displayed are:
      |Cleaning of external areas|
      |External area - number of square metres   |
      |9999999|

