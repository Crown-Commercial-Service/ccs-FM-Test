Feature:  Facilities Management - Detailed Search Summary - Question Links - Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I click on "Continue"
    And I click on open all
    And I click on select all for North East England
    And I click on select all for North West England
    And I click on select all for Yorkshire and Humber
    And I click on select all for East Midlands
    And I click on select all for West Midlands
    And I click on select all for East England
    And I click on select all for London
    And I click on select all for South East England
    And I click on select all for South West England
    And I click on select all for Wales
    And I click on select all for Scotland
    And I click on select all for Northern Ireland
    And I should see text "73 Regions selected"
    And I click on "Close all"
    And I click on "Continue"
    And I am on "Results" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost - Yes - exceeds maximum input
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I click to answer estimated annual cost question
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I click on "Save and continue"
    Then I should see the following error messages
      |There is a problem|
      |The estimated annual cost must be an amount of money, such as £12,000 or £1,200|
    And I enter the cost 999999999
    And I click on "Save and return to detailed search"
    And I am on "Detailed search summary" page
    And The estimated annual cost value is "£999,999,999"
