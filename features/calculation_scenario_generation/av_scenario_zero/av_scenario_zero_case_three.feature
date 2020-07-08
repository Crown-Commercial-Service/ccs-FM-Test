Feature: Assessed value Scenario one building

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on the "Routine cleaning"
    And I click on the "Reception service"
    And I click on the "General waste"
    And I click on the "CAFM system"
    And I click on the "Helpdesk services"
    And I click on "Close all"


  Scenario Outline: Scenario 3- CP, CAFM, Helpdesk TUPE
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Close all"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer estimated annual cost question
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
    And I click on "Save and continue"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and continue"
    And I am on "Contract period" page
    And I enter the number of year as "<years>"
    And I enter the day as "<day>"
    And I enter the month as "<month>"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I am on "Buildings" page
    And I select seventh building "London building" with address "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search summary"
    And I click on "London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I am on "Service requirement volumes" page
    And I enter 34 for routine cleaning for scenario zero
    And I enter 130 for general waste for scenario zero
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I enter 1 for number of personnel
    And I select all day service for Monday to Friday
    And I select not required for Saturday and Sunday
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    And I click on "Continue"
    And I should see the price displayed £2,310,150.63


    Examples:
      | years | day | month | year |
      |   2   | 12  | 10    | 2020 |
