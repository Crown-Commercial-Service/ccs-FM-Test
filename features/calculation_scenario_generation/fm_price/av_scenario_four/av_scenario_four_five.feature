Feature: Assessed value Scenario Four - No Customer Price and at least 1 Service missing only FW price.

  Scenario: Scenario 5- Includes TUPE, CAFM, Helpdesk, Variance within 30% (Negative boundary) - LOT 1b
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue"
    And I click on "Estimated annual cost"
    When I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
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
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance|
      |Ventilation and air conditioning system maintenance|
      |Environmental cleaning service                     |
      |Locksmith services                                 |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |Recycled waste                                     |
      |CAFM system                                        |
      |Helpdesk services                                  |
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
    And I am on the "Routine cleaning" page
    And I enter 28000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 4000 for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Recycled waste" page
    And I enter 4000 for recycled waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Environmental cleaning service" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter 28000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 4000 for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Recycled waste" page
    And I enter 4000 for recycled waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Environmental cleaning service" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I select standard A
    When I navigate to results page
    Then I should see the price displayed £10,261,175.01
#    And I should see "Further competition" as the only available route to market
#    And The direct award option should not be displayed
#    And I click on "Continue"
#    And I am on "Further competition" page

