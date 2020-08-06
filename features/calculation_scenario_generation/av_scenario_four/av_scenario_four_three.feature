Feature: Assessed value Scenario Four Case three

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Locksmith services "
    And I click on the "Routine cleaning"
    And I click on the "Reception service"
    And I click on the "General waste"
    And I click on the "CAFM system"
    And I click on the "Helpdesk services"
    And I click on the "Management of billable works "
    And I click on "Close all"



  Scenario Outline: Scenario 3-  CAFM, Helpdesk TUPE, No CP
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Close all"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
    And I am on "Detailed search summary" page
    And I click to answer estimated annual cost question
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
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
#    And I select seventh building "London building" with address "2 Marylebone Road, London, Inner London - West, NW1 4DF"
    And I select twelfth building "Outside London building" with address "10 Kenton Avenue, Manchester, Greater Manchester, M18 7GQ"
    And I click on "Save and return to detailed search summary"
    And I click on "Outside London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Service requirement volumes" page
    And I enter 50 for routine cleaning - scenario four
    And I enter 50 for general waste for scenario zero
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I enter 1 for number of personnel
    And I select all day service for Monday
    And I select not required for Tuesday to Sunday
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    And I click on "Continue"
    And I should see the price displayed £532,021.69


    Examples:
      | years | day | month | year |
      |   1   | 12  | 10    | 2020 |
