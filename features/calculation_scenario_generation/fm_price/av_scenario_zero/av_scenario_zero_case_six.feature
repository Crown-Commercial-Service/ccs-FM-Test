Feature: Assessed value Scenario Zero - All services has Benchmark and framework rates

  Scenario: Scenario 6- Includes Customer Input, CAFM, Helpdesk, TUPE - Two Buildings (Lot 1B)
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue"
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Ventilation and air conditioning system maintenance |
      |Lifts, hoists & conveyance systems maintenance      |
      |Portable appliance testing                          |
      |Mobile cleaning                                     |
      |CAFM system                                         |
      |Helpdesk services                                   |
      |Management of billable works                        |
    And I navigate to buildings page
    And I find and select "London building"
    And I find and select "Outside London building"
    And I navigate to Assigning services to buildings summary page
    And I click on "London building"
    And I select all services for first building
    And I click on "Outside London building"
    And I select all services for second building
    And I navigate to Service requirements summary page
    And I click on "London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 600 for lift one
    And I enter 600 for lift two
    And I enter 600 for lift three
    And I enter 600 for lift four
    And I enter 600 for lift five
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 1300 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 1300 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 600 for lift one
    And I enter 600 for lift two
    And I enter 600 for lift three
    And I enter 600 for lift four
    And I enter 600 for lift five
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 1300 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 1300 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    When I navigate to results page
    And I should see the price displayed £7,609,449.63
