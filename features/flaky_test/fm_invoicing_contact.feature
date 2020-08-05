Feature:  Facilities Management - Contract Details - Invoicing Contact

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Save and continue"
    And I answer about the contract question
    And I answer contract period question
    And I answer services question
    And I proceed to the contract details page
    And I am on "Contract details" page


 Scenario: Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address Error message
   When I click on the second question for "Invoicing contact details"
   And I am on "Invoicing contact details" page
   When I click on "false" option
   And I click on "Continue"
   And I am on "New invoicing contact details" page
   And I enter the following details into the form:
      | Name                 | Auto Test       |
      | Job title            | Test Analyst    |
      | Email address        | test@test.com   |
      | Postcode             | SW1W 9SZ        |
    And I click on enter invoicing address manually
    And I am on "Add address" page
    And I click on "Continue"
    Then I should see the following error messages
      | Enter a valid postcode, for example SW1A 1AA       |
      | Enter the building or street name of the address   |
      | Enter the town or city of the address              |
