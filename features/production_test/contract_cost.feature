Feature:Mechanical and electrical engineering maintenance

  Scenario: Login page
    Given I create a new procurement
    And I click on "Services"
    And I am on "Services" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on the "Lifts, hoists & conveyance systems maintenance "
    And I click on the "Cleaning of external areas"
    And I click on the "Routine cleaning"
    And I click on the "Handyman services"
    And I click on the "Portable appliance"
    And I click on the "General waste"
    And I click on the "Classified waste"
    And I click on the "Feminine hygiene waste"
    And I click on the "CAFM system"
    And I click on the "Helpdesk services"
    And I click on the "Management of billable works"
    When I click on "Save and continue"
    And I click on "Return to requirements"
    Then I am on "Requirements" page
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
    And I enter '1' years and '7' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I click on "Building"
    And I find and select "Contract_cost_building"
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    And I click on "Contract_cost_building"
    And I click on the "box-all"
    And I click on "Save and return"
    And I am on "Assigning services to buildings summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I answer the service questions for contract cost building "Contract_cost_building"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Results" page
    Then I should see the price displayed £75,071.58

