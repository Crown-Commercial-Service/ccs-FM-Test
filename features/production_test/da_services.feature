Feature: Direct Award scenario One

  Background: Login page
    Given I am a logged in user

  Scenario: Direct Award Scenario One - TUPE, CAFM, Helpdesk, Management
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    When I select all da services
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
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
    And I enter the number of year as "1"
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
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I proceed to the contract details page
    And I am on "Contract details" page
    And I click on the first question for "Payment method"
    And I am on "Payment method" page
    And I select Bacs payment
    And I click on "Save and return"
    And I click on the second question for "Invoicing contact details"
    And I am on "Invoicing contact details" page
    And I select invoicing contact
    And I click on "Continue"
    And I click on the third question for "Authorised representative details"
    And I am on "Authorised representative details" page
    And I select Authorised representative details
    And I click on "Continue"
    And I click on the fourth question for "Notices contact details"
    And I am on "Notices contact details" page
    And I select Notices contact details
    And I click on "Continue"
    And I click on the fifth question for "Security policy"
    And I am on "Security policy document" page
    And I select Security policy option
    And I click on "Save and return"
    And I click on the sixth question for "Local Government Pension Scheme"
    And I am on "Local Government Pension Scheme" page
    And I select pension option
    And I click on save and continue button
    And I click on the seventh question for "Governing law"
    And I am on "Governing law" page
    And I select english law
    And I click on "Save and continue"
    And I am on "Contract details" page
    And I click on "Continue"
    And I am on "Review and generate documents" page
    And I click on "Generate documents"
    And I am on "Review your contract" page


