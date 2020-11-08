Feature: Assessed value Scenario Three - No Customer Price and at least 1 Service (but not all services) missing FW & BM price

  Background: Log in and capture contract details
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on start a procurement
    Then I am on "What happens next" page
    And I click on "Continue"
    Then I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page

  Scenario: No CP,CAFM, Helpdesk TUPE - LOT 1A
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Professional snow & ice clearance                  |
      |Management of billable works                       |
    And for scenario 3, lot 1a I add the details for "Outside London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value £289,869
    And unpriced service "Professional snow & ice clearance" should be displayed

  Scenario: Includes TUPE, CAFM, Helpdesk and London Building - LOT 1A
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
    Then I navigate to services page
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Professional snow & ice clearance                  |
      |CAFM system                                        |
      |Helpdesk services                                  |
    And for scenario 3, lot 1a I add the details for "London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value £394,107
    And unpriced service "Professional snow & ice clearance" should be displayed

  Scenario: No CP,CAFM, Helpdesk TUPE - LOT 1B
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Ventilation and air conditioning system maintenance|
      |Professional snow & ice clearance                  |
      |Mobile cleaning                                    |
      |Environmental cleaning service                     |
      |General waste                                      |
      |Recycled waste                                     |
    And for scenario 3, I add the details for "Outside London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value £16,978,383
    And unpriced service "Professional snow & ice clearance" should be displayed

  Scenario: Includes TUPE, CAFM, Helpdesk and London Building - LOT 1B
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
    Then I navigate to services page
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Ventilation and air conditioning system maintenance|
      |Professional snow & ice clearance                  |
      |Mobile cleaning                                    |
      |Environmental cleaning service                     |
      |General waste                                      |
      |Recycled waste                                     |
      |CAFM system                                        |
      |Helpdesk services                                  |
    And for scenario 3, I add the details for "London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value £23,092,200
    And unpriced service "Professional snow & ice clearance" should be displayed

  Scenario: No CP,CAFM, Helpdesk TUPE - LOT 1C
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "7"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Ventilation and air conditioning system maintenance|
      |Professional snow & ice clearance                  |
      |Mobile cleaning                                    |
      |Environmental cleaning service                     |
      |General waste                                      |
      |Recycled waste                                     |
    And for scenario 3, I add the details for "Outside London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value £115,692,494
    And unpriced service "Professional snow & ice clearance" should be displayed

  Scenario: Includes TUPE, CAFM, Helpdesk and London Building - LOT 1C
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "7"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Ventilation and air conditioning system maintenance|
      |Professional snow & ice clearance                  |
      |Mobile cleaning                                    |
      |Environmental cleaning service                     |
      |General waste                                      |
      |Recycled waste                                     |
      |CAFM system                                        |
      |Helpdesk services                                  |
    And for scenario 3, I add the details for "London building" building
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    And I should see the partial price value £157,729,040
    And unpriced service "Professional snow & ice clearance" should be displayed
