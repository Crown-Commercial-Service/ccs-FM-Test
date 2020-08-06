Feature: Assessed value Scenario one building

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Professional snow & ice clearance"
    And I click on the "CAFM system"
    And I click on the "Helpdesk services"
    And I click on the "Management of billable works "
    And I click on "Close all"



  Scenario Outline: 1
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
    And I select seventh building "London building" with address "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search summary"
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
#    And I should not see the partial price value




    Examples:
      | years | day | month | year |
      |   1   | 12  | 10    | 2020 |