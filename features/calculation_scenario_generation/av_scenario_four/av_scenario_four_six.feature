Feature: Assessed value Scenario Four Case Six - 6-  CAFM, TUPE, No CP

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on the "Ventilation and air conditioning system maintenance "
    And I click on the "Environmental cleaning service "
    And I click on the "Locksmith services "
    And I click on the "Routine cleaning"
    And I click on the "Reception service"
    And I click on the "General waste"
    And I click on the "Recycled waste"
    And I click on the "CAFM system"
    And I click on the "Helpdesk services"
    And I click on the "Management of billable works"
    And I click on "Close all"


  Scenario Outline: Scenario 6-  CAFM, TUPE, No CP
    When I am on detailed search page
    And I click on "Estimated annual cost"
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
    And I select seventh building "London building" with address "2 Marylebone Road, London, Inner London - West, NW1 4DF"
    And I select twelfth building "Outside London building" with address "10 Kenton Avenue, Manchester, Greater Manchester, M18 7GQ"
    And I click on "Save and return to detailed search summary"
    And I click on "London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I select standard A for second service
    And I select standard A for third service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I am on "Service requirement volumes" page
    And I enter 3000 for routine cleaning - AV scenario four
    And I enter 4000 for general waste - AV scenario four
    And I enter 4000 for recycled waste - AV scenario four
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I enter 1 for number of personnel
    And I select all day service for Monday to Friday
    And I select all day service for Saturday and Sunday
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    And I click on "Outside London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I select standard A for second service
    And I select standard A for third service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I am on "Service requirement volumes" page
    And I enter 3000 for routine cleaning - AV scenario four
    And I enter 4000 for general waste - AV scenario four
    And I enter 4000 for recycled waste - AV scenario four
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I enter 1 for number of personnel
    And I select all day service for Monday to Friday
    And I select all day service for Saturday and Sunday
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    When I am on "Procurement summary" page
    And I click on "Continue"
    And I should see the price displayed £58,608,378.67
    And I should see "Further competition" as the only available route to market
#    And The direct award option should not be displayed
#    And I click on "Continue"
#    And I am on "Further competition" page



    Examples:
      | years | day | month | year |
      |   7   | 12  | 10    | 2020 |
