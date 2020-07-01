Feature:Facilities Management - DA - Contract - Review contract

  Background: Login page
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

  Scenario: Contract Details - Payment method page - Error message
    And I am on "Contract details" page
    And I click on the first question for "Payment method"
    And I am on "Payment method" page
    And I click on "Save and return"
    Then I should see the following error messages
      | Select one payment method |


  Scenario: Contract Details - Payment method page - BACS payment
    And I am on "Contract details" page
    And I click on the first question for "Payment method"
    And I am on "Payment method" page
    And I select Bacs payment
    And I click on "Save and return"
    And I am on "Contract details" page
    Then The payment method should be "BACS payment"
    And I click on change for "Payment method"
    And I am on "Payment method" page




  Scenario: Contract Details - Payment method page - Government procurement card
    And I am on "Contract details" page
    And I click on the first question for "Payment method"
    And I am on "Payment method" page
    And I select Government procurement card
    And I click on "Save and return"
    And I am on "Contract details" page
    Then The payment method should be "Government procurement card"
    And I click on change for "Payment method"
    And I am on "Payment method" page


















