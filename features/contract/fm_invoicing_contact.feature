Feature:  Facilities Management - Contract Details - Invoicing Contact


  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I proceed to the contract details page
    And I am on "Contract details" page

  Scenario: Invoicing Contact Details Select - Content
    When I click on the second question for "Invoicing contact details"
    And I am on "Invoicing contact details" page
    Then The following is displayed for contact details:
      | Select an invoicing contact                                                                                 |
      | Enter a new invoicing contact                                                                               |

  Scenario: Invoicing Contact Details Select - Error message
    When I click on the second question for "Invoicing contact details"
    And I am on "Invoicing contact details" page
    And I should see text next to radio button "Enter a new invoicing contact"
    And I click on "Continue"
    Then I should see "There is a problem" and "Select one option" error

  Scenario: Contract - Invoicing Contact Details Details Select - Select new invoicing contact
    When I click on the second question for "Invoicing contact details"
    And I am on "Invoicing contact details" page
    And I click on "true" option
    When I click on "Continue"
    And I am on "Contract details" page
    Then I should see the invoicing contract details "Automation Test, Test Analyst" displayed

  Scenario: Contract - Invoicing contact Details Select - New invoicing contact details - Error messages
    When I click on the second question for "Invoicing contact details"
    And I am on "Invoicing contact details" page
    When I click on "false" option
    And I click on "Continue"
    And I am on "New invoicing contact details" page
    And I click on "Save and return"
    Then I should see error message header "There is a problem"
    Then I should see the following error messages
      | Enter the new invoicing contact name                                                |
      | Enter the new invoicing contact job title                                           |
      | Enter an email address in the correct format, for example name@organisation.gov.uk  |
      | Enter a valid postcode, for example SW1A 1AA                                        |

 Scenario: Contract - Invoicing contact Details Select - Select new invoicing contact - Select Address Error message
   When I click on the second question for "Invoicing contact details"
   And I am on "Invoicing contact details" page
   When I click on "false" option
   And I click on "Continue"
   And I am on "New invoicing contact details" page
   And I enter the following details into the form:
      | Name          | Auto Test       |
      | Job title     | Test Analyst    |
      | Email address | test@test.com   |
      | Postcode      | SW1W 9SZ        |
    And I click on "Save and return"
    Then I should see the following error messages
      | Select an address from the list or add a missing address |

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
    And  I click on "Find address"
    And I click on enter invoicing address manually
    And I am on "Add address" page
    And I click on "Continue"
    Then I should see the following error messages
      | Enter the building or street name of the address   |
      | Enter the town or city of the address              |
      | Enter a valid postcode, for example SW1A 1AA       |

  Scenario: Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address
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
    And  I click on "Find address"
   And I click on enter invoicing address manually
   And I am on "Add address" page
   And I enter the following details into the form:
      | Building and street  | 112 Strongbow Road   |
      | Town or city         | Westminister         |
      | Postcode             | NW1 4DF              |
    And I click on "Continue"
    Then I should see address:
      |112 Strongbow Road, Westminister NW1 4DF Change|

  Scenario: - Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address - Save
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
    And I click on "Find address"
    And I select address "151 Buckingham Palace Road, London" from the drop down option
    And I click on "Save and return"
    And I am on "Invoicing contact details" page
    And I should see new invoicing contact details:
    |Auto Test, Test Analyst 151 Buckingham Palace Road, London SW1W 9SZ Change|
    And I click on "Continue"
    And I am on "Contract details" page
    And I should see contract details "Auto Test, Test Analyst" displayed
    And I expand the contact details
    Then I should see the contract details:
      |Auto Test, Test Analyst test@test.com Address: 151 Buckingham Palace Road, London SW1W 9SZ|

  Scenario: Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address - Return without save
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
    And I click on "Find address"
    And I select address "151 Buckingham Palace Road, London" from the drop down option
    And I click on "Return to invoicing contact details"
    Then I am on "Invoicing contact details" page

  Scenario: - Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address manually - Save
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
    And I click on "Find address"
    And I click on enter invoicing address manually
    And I am on "Add address" page
    And I enter the following details into the form:
      | Building and street  | 112 Strongbow Road   |
      | Town or city         | Westminister         |
      | Postcode             | NW1 4DF              |
    And I click on "Continue"
    Then I should see address:
      |112 Strongbow Road, Westminister NW1 4DF Change|
    When I click on "Save and return"
    And I am on "Invoicing contact details" page
    Then I should see new invoicing contact details:
      |Auto Test, Test Analyst 112 Strongbow Road, Westminister NW1 4DF Change|

  Scenario: - Contract - Invoicing Contact Details Select - Select new invoicing contact - change address - Save
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
    And I click on "Find address"
    And I select address "151 Buckingham Palace Road, London" from the drop down option
    And I click on "Save and return"
    And I am on "Invoicing contact details" page
    And I should see new invoicing contact details:
      |Auto Test, Test Analyst 151 Buckingham Palace Road, London SW1W 9SZ Change|
    And I click on "Change"
    And I enter the following details into the form:
      | Name          | Sam Smith         |
      | Job title     | Project Manager   |
      | Email address | test123@test.com  |
    And I click on change address
    And I enter the following details into the form:
      | Postcode      | L3 9PP            |
    And I click on "Find address"
    And I select address "90 Old Hall Street, Liverpool" from the drop down option
    And I click on "Save and return"
    And I am on "Invoicing contact details" page
    And I should see new invoicing contact details:
      |Sam Smith, Project Manager 90 Old Hall Street, Liverpool L3 9PP Change|
    And I click on "Continue"
    And I should see the contract details:
      |Sam Smith, Project Manager|
    And I expand the contact details
    And I should see the contract details:
      |Sam Smith, Project Manager test123@test.com Address: 90 Old Hall Street, Liverpool L3 9PP|

