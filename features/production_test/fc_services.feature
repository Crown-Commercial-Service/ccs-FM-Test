@prod_test
Feature: Direct Award scenario One

  Background: Login page
    Given I am a logged in user

  Scenario: Direct Award Scenario One - TUPE, CAFM, Helpdesk, Management
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I select all services
    And I click on "Continue"
    And I click on open all
    And I select all regions
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I click on "Building"
    And I find and select "001 DA & FC Building"
    And I find and select "002 DA & FC Building"
    And I find and select "003 DA & FC Building"
    And I find and select "004 DA & FC Building"
    And I find and select "005 DA & FC Building"
    And I find and select "006 DA & FC Building"
    And I find and select "007 DA & FC Building"
    And I find and select "008 DA & FC Building"
    And I find and select "009 DA & FC Building"
    And I find and select "010 DA & FC Building"
    And I find and select "011 DA & FC Building"
    And I find and select "012 DA & FC Building"
    And I find and select "13 FC Building"
    And I find and select "14 FC Building"
    And I find and select "15 FC Building"
    And I find and select "16 FC Building"
    And I find and select "17 FC Building"
    And I find and select "18 FC Building"
    And I find and select "19 FC Building"
    And I find and select "20 FC Building"
    And I find and select "21 FC Building"
    And I find and select "22 FC Building"
    And I find and select "23 FC Building"
    And I find and select "24 FC Building"
    And I find and select "25 FC Building"
    And I find and select "26 FC Building"
    And I find and select "27 FC Building"
    And I find and select "28 FC Building"
    And I find and select "29 FC Building"
    And I find and select "30 FC Building"
    And I find and select "31 FC Building"
    And I find and select "32 FC Building"
    And I find and select "33 FC Building"
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    And I click on "001 DA & FC Building"
    And I select services for first building "001 DA & FC Building"
    And I click on "Save and return"
    And I click on "002 DA & FC Building"
    And I select services for second building "002 DA & FC Building"
    And I click on "Save and return"
    And I click on "003 DA & FC Building"
    And I select services for third building "003 DA & FC Building"
    And I click on "Save and return"
    And I click on "004 DA & FC Building"
    And I select services for fourth building "004 DA & FC Building"
    And I click on "Save and return"
    And I click on "005 DA & FC Building"
    And I select services for fifth building "005 DA & FC Building"
    And I click on "Save and return"
    And I click on "006 DA & FC Building"
    And I select services for sixth building "006 DA & FC Building"
    And I click on "Save and return"
    And I click on "007 DA & FC Building"
    And I select services for seventh building "007 DA & FC Building"
    And I click on "Save and return"
    And I click on "008 DA & FC Building"
    And I select services for eighth building "008 DA & FC Building"
    And I click on "Save and return"
    And I click on "009 DA & FC Building"
    And I select services for ninth building "009 DA & FC Building"
    And I click on "Save and return"
    And I click on "010 DA & FC Building"
    And I select services for tenth building "010 DA & FC Building"
    And I click on "Save and return"
    And I click on "011 DA & FC Building"
    And I select services for eleventh building "011 DA & FC Building"
    And I click on "Save and return"
    And I click on "012 DA & FC Building"
    And I select services for twelfth building "012 DA & FC Building"
    And I click on "Save and return"
    And I select services for building 13 "13 FC Building"
    And I select services for building 14 "14 FC Building"
    And I select services for building 15 "15 FC Building"
    And I select services for building 16 "16 FC Building"
    And I select services for building 17 "17 FC Building"
    And I select services for building 18 "18 FC Building"
    And I select services for building 19 "19 FC Building"
    And I select services for building 20 "20 FC Building"
    And I select services for building 21 "21 FC Building"
    And I select services for building 22 "22 FC Building"
    And I select services for building 23 "23 FC Building"
    And I select services for building 24 "24 FC Building"
    And I select services for building 25 "25 FC Building"
    And I select services for building 26 "26 FC Building"
    And I select services for building 27 "27 FC Building"
    And I select services for building 28 "28 FC Building"
    And I select services for building 29 "29 FC Building"
    And I select services for building 30 "30 FC Building"
    And I select services for building 31 "31 FC Building"
    And I select services for building 32 "32 FC Building"
    And I select services for building 33 "33 FC Building"
    And I am on "Assigning services to buildings summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I answer the service questions for building one "001 DA & FC Building"
    And I answer the service questions for building two "002 DA & FC Building"
    And I answer the service questions for building three "003 DA & FC Building"
    And I answer the service questions for building five "005 DA & FC Building"
    And I answer the service questions for building six "006 DA & FC Building"
    And I answer the service questions for building seven "007 DA & FC Building"
    And I answer the service questions for building eight "008 DA & FC Building"
    And I answer the service questions for building nine "009 DA & FC Building"
    And I answer the service questions for building ten "010 DA & FC Building"
    And I answer the service questions for building eleven "011 DA & FC Building"
    And I answer the service questions for building twenty six "26 FC Building"
    And I answer the service questions for building thirty three "33 FC Building"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    When I click on "Continue"
    And I am on "Results" page
