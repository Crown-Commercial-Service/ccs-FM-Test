Feature: Direct Award scenario One

  Background: Login page
    Given I am a logged in user

  Scenario Outline: Direct Award Scenario One - TUPE, CAFM, Helpdesk, Management
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Fire detection and firefighting systems maintenance"
    And I click on the "High voltage (HV) and switchgear maintenance"
    And I click on the "Internal & external building fabric maintenance"
    And I click on the "Building management system (BMS) maintenance"
    And I click on the "Environmental cleaning service"
    And I click on the "Fire detection and firefighting systems maintenance"
    And I click on the "High voltage (HV) and switchgear maintenance"
    And I click on the "Internal & external building fabric maintenance"
    And I click on the "Lifts, hoists & conveyance systems maintenance"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on the "Security, access and intruder systems maintenance"
    And I click on the "Standby power system maintenance"
    And I click on the "Ventilation and air conditioning system maintenance"
    And I click on the "Asbestos management"
    And I click on the "Compliance plans, specialist surveys and audits"
    And I click on the "Conditions survey"
    And I click on the "Electrical testing"
    And I click on the "Fire risk assessments"
    And I click on the "Portable appliance testing"
    And I click on the "Statutory inspections"
    And I click on the "Water hygiene maintenance"
    And I click on the "Cleaning of external areas"
    And I click on the "Cleaning of integral barrier mats"
    And I click on the "Deep (periodic) cleaning"
    And I click on the "Mobile cleaning"
    And I click on the "Pest control services"
    And I click on the "Routine cleaning"
    And I click on the "Window cleaning (external)"
    And I click on the "Window cleaning (internal)"
    And I click on the "Handyman services"
    And I click on the "Move and space management - internal moves"
    And I click on the "Car park management and booking"
    And I click on the "Handyman services"
    And I click on the "Move and space management - internal moves"
    And I click on the "Car park management and booking"
    And I click on the "Reception service"
    And I click on the "Taxi booking service"
    And I click on the "Voice announcement system operation"
    And I click on the "CCTV / alarm monitoring"
    And I click on the "Control of access and security passes"
    And I click on the "Emergency response"
    And I click on the "Management of visitors and passes"
    And I click on the "Manned guarding service"
    And I click on the "Patrols (fixed or static guarding)"
    And I click on the "Classified waste"
    And I click on the "Feminine hygiene waste"
    And I click on the "General waste"
    And I click on the "Recycled waste"
    And I click on the "CAFM system"
    And I click on the "Helpdesk services"
    And I click on the "Management of billable works"
    And I click on "Continue"
    And I click on "North East (England)"
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
    And I enter the number of year as "<years>"
    And I enter the day as "<day>"
    And I enter the month as "<month>"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I click on "Building"
    And I select first building "Aberdeen" with address "Marischal College, Broad Street, Aberdeen, AB10 1AL"
    And I select second building "Belfast Building" with address "8-10, Royal Avenue, Belfast, BT1 1DA"
    And I select third building "Birmingham" with address "259 Yardley Green Road, Bordesley Green, Birmingham, B9 5QA"
    And I select fourteen building "Westminster Building" with address "10 Downing Street, London, SW1A 2AA"
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
    And I click on "Assigning services to buildings"
    And I am on "Buildings and services summary" page
    And I click on "Aberdeen"
    And I select services for first building "Aberdeen" - DA scenario two
    And I click on "Save and return"
    And I click on "Belfast Building"
    And I select services for second building "Belfast Building" - DA scenario two
    And I click on "Save and return"
    And I click on "Birmingham"
    And I select services for third building "Birmingham" - DA scenario two
    And I click on "Save and return"
    And I click on "Westminster Building"
    And I select services for fourth building "Westminster Building" - DA scenario two
    And I click on "Save and return"
    And I am on "Buildings and services summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on "Aberdeen"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 2 for number of lift floors
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Environmental cleaning service" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Fire detection and firefighting systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Security, access and intruder systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Internal & external building fabric maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Building management system (BMS) maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Standby power system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "High voltage (HV) and switchgear maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Belfast Building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 9 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 9 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Deep (periodic) cleaning" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Cleaning of external areas" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Birmingham"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter 4 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Move and space management - internal moves" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Taxi booking service" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Car park management and booking" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Voice announcement system operation" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Manned guarding service" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Cctv / alarm monitoring" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Control of access and security passes" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Emergency response" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Patrols (fixed or static guarding)" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Management of visitors and passes" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Westminster Building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "General waste" page
    And I enter 2 for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Recycled waste" page
    And I enter 2 for recycled waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Classified waste" page
    And I enter 2 for classified waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Feminine hygiene waste" page
    And I enter 2 for feminine hygiene waste
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I should see the price displayed £234,870.30
    And I click on the Direct award route to market
    And I click on "Continue"
    And the lowest priced supplier is "Wolf-Wiza" and contract price is £234,870.30
    And the second subsequent supplier is "Supplier 2" and contract price is £250,298.86
    And the third subsequent supplier is "Supplier 3" and contract price is £251,029.94
    And the fourth subsequent supplier is "Supplier 4" and contract price is £260,968.75
    And the fifth subsequent supplier is "Supplier 5" and contract price is £262,412.28
    And the sixth subsequent supplier is "Supplier 6" and contract price is £267,133.45
    And the seventh subsequent supplier is "Supplier 7" and contract price is £278,186.69
    And the eighth subsequent supplier is "Supplier 8" and contract price is £279,993.33
    And the ninth subsequent supplier is "Supplier 9" and contract price is £282,709.24
    And the tenth subsequent supplier is "Supplier 10" and contract price is £296,928.35

    Examples:
      | years | day | month | year |
      |   1   | 12  | 10    | 2020 |