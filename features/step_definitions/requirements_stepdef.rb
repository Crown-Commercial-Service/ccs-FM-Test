# frozen_string_literal: true

Then('I enter {string} years and {string} months for the contract period') do |years, months|
  requirements.initial_call_off_period_years.set(years)
  requirements.initial_call_off_period_months.set(months)
end

And(/^I enter values for the initial call-off period date$/) do
  requirements.initial_start_date.day.set(12)
  requirements.initial_start_date.month.set(12)
  requirements.initial_start_date.year.set(2024)
end

Then(/^I enter the day as "([^"]*)"$/) do |day|
  requirements.initial_start_date.day.set(day)
end

Then(/^I enter the month as "([^"]*)"$/) do |month|
  requirements.initial_start_date.month.set(month)
end

Then(/^I enter the year as "([^"]*)"$/) do |year|
  requirements.initial_start_date.year.set(year)
end

And(/^I enter values for initial call-off period/) do
  step 'I enter "4" years and "0" months for the contract period'
  step 'I enter values for the initial call-off period date'
end

Then(/^I enter the mobilisation period for "([^"]*)" weeks$/) do |weeks|
  requirements.mobilisation_radio.period.set(weeks)
end

Then(/^I click on add another extension period$/) do
  requirements.optional_call_off_extensions.add_extension.click
end

Then('I enter {string} years and {string} months for optional extension {int}') do |years, months, extension|
  requirements.optional_call_off_extensions.send(:"#{extension}").years.set(years)
  requirements.optional_call_off_extensions.send(:"#{extension}").months.set(months)
end

Then(/^I enter the mobilisation period for (\d+) weeks$/) do |weeks|
  requirements.mobilisation_radio.period.set(weeks)
end

And(/^The contract name status tag is "([^"]*)"$/) do |text|
  expect(requirements.contract_name_status_tag.text).to eq(text)
end

And(/^The estimated annual cost status tag is "([^"]*)"$/) do |text|
  expect(requirements.estimated_status_tag.text).to eq(text)
end

And(/^The TUPE status tag is "([^"]*)"$/) do |text|
  expect(requirements.tupe_status_tag.text).to eq(text)
end

And(/^The contract period status tag is "([^"]*)"$/) do |text|
  expect(requirements.contract_period_status_tag.text).to eq(text)
end

And(/^The buildings status tag is "([^"]*)"$/) do |text|
  expect(requirements.buildings_status_tag.text).to eq(text)
end

And(/^The services status tag is "([^"]*)"$/) do |text|
  expect(requirements.services_status_tag.text).to eq(text)
end

And(/^The assigning services to buildings status tag is "([^"]*)"$/) do |text|
  expect(requirements.assigned_status_tag.text).to eq(text)
end

And(/^The service requirements status tag is "([^"]*)"$/) do |text|
  expect(requirements.requirements_status_tag.text).to eq(text)
end

And(/^The following summary text is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.service_summary.text).to eq(item)
  end
end

Then(/^I select standard A$/) do
  requirements.service_standard.value_a.click
end

Then(/^I select standard B$/) do
  requirements.service_standard.value_b.click
end

Then(/^I select standard C$/) do
  requirements.service_standard.value_c.click
end

And(/^The assigning buildings to services status tag is "([^"]*)"$/) do |text|
  expect(requirements.assigned_status_tag.text).to eq(text)
end

Then(/^I click on select all$/) do
  requirements.select_all.click
end

And(/^The following contract period is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.length.text).to eq(item)
  end
end

And(/^The following contract period description is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.contract_description.text).to eq(item)
  end
end

And(/^The following mobilisation length is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.mobilisation_length.text).to eq(item)
  end
end

And(/^The following mobilisation description is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.mobilisation_description.text).to eq(item)
  end
end

And(/^The following call-off extension is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_extension.text).to eq(item)
  end
end

And('The following call-off length {int} is displayed:') do |extension, table|
  extension_length = table.transpose.raw.flatten.first

  expect(requirements.contract_period_summary.send(:"extension_#{extension}_length")).to have_content(extension_length)
end

And('The following call-off length {int} description is displayed:') do |extension, table|
  extension_period = table.transpose.raw.flatten.first

  expect(requirements.contract_period_summary.send(:"extension_#{extension}_period")).to have_content(extension_period)
end

Then(/^I am on estimated annual cost page$/) do
  expect(common.header_one.text).to end_with('Estimated annual cost')
end

Then(/^I select no option for estimated annual cost$/) do
  choose 'facilities_management_procurement_estimated_cost_known_false'
end

Then(/^I select no option for tupe$/) do
  choose 'facilities_management_procurement_tupe_false'
end

And(/^I am on contract period page$/) do
  expect(common.header_one.text).to end_with('Contract period')
end

Then(/^I select no option for tupe required$/) do
  choose 'facilities_management_procurement_mobilisation_period_required_false'
end

And(/^I select no option for optional call-off extension$/) do
  choose 'facilities_management_procurement_extensions_required_false'
end

Then(/^I click on return to requirements$/) do
  click_on 'Return to requirements'
end

Then(/^I click on buildings link$/) do
  click_on 'Buildings'
end

Then(/^I click on assigning services to buildings link$/) do
  click_on 'Assigning services to buildings'
end

Then(/^I click on the first building on the page$/) do
  requirements.answer_question.click
end

Then(/^I click on service standards change link$/) do
  service_requirements.change_link[1].click
end

And(/^I enter (.+) for service hours$/) do |value|
  service_requirements.number_of_hours.set(value)
  service_requirements.service_hours_requirement.set('Test one')
end

And(/^I enter (.+) for routine cleaning - scenario four$/) do |value|
  common.service_info_volume.routine_cleaning_three.set(value)
end

And(/^I enter (.+) for general waste scenario one b$/) do |value|
  common.service_info_volume.general_waste.set(value)
end

And(/^I enter (.+) for general waste for scenario zero$/) do |value|
  common.service_info_volume.general_waste_three.set(value)
end

And(/^I enter (.+) for routine cleaning for scenario zero$/) do |value|
  common.service_info_volume.routine_cleaning_three.set(value)
end

And(/^I enter (.+) for mobile cleaning services$/) do |value|
  common.service_info_volume.mobile_cleaning.set(value)
end

And(/^I enter (.+) for routine cleaning - AV scenario four$/) do |value|
  common.service_info_volume.routine_cleaning_five.set(value)
end

And(/^I enter (.+) for general waste - AV scenario four$/) do |value|
  common.service_info_volume.general_waste_five.set(value)
end

And(/^I enter (.+) for recycled waste - AV scenario four$/) do |value|
  common.service_info_volume.recycled_waste_three.set(value)
end

And(/^I enter (.+) for mobile cleaning service two$/) do |value|
  common.service_info_volume.mobile_cleaning_two.set(value)
end

And(/^I enter (.+) for portable appliance testing$/) do |value|
  service_requirements.portable_appliance_volume.set(value)
end

And(/^I enter (.+) for cleaning of external areas$/) do |value|
  service_requirements.cleaning_external_area.set(value)
end

And(/^I enter (.+) for mobile cleaning service$/) do |value|
  service_requirements.mobile_cleaning_volume.set(value)
end

And(/^I enter (.+) for routine cleaning$/) do |value|
  service_requirements.routine_cleaning_volume.set(value)
end

And(/^I enter (.+) for mobile cleaning$/) do |value|
  service_requirements.mobile_cleaning_volume.set(value)
end

And(/^I enter (.+) for classified waste$/) do |value|
  service_requirements.classified_waste_volume.set(value)
end

And(/^I enter (.+) for feminine hygiene waste$/) do |value|
  service_requirements.feminine_hygiene_volume.set(value)
end

And(/^I enter (.+) for general waste$/) do |value|
  service_requirements.general_waste_volume.set(value)
end

And(/^I enter (.+) for recycled waste$/) do |value|
  service_requirements.recycled_waste_volume.set(value)
end

And(/^I enter (.+) for hazardous waste$/) do |value|
  service_requirements.hazardous_waste_volume.set(value)
end

And(/^I enter (.+) for clinical waste$/) do |value|
  service_requirements.clinical_waste.set(value)
end

And(/^I enter (.+) for medical waste$/) do |value|
  service_requirements.medical_waste.set(value)
end

And(/^I enter (.+) for handyman services$/) do |value|
  service_requirements.medical_waste.set(value)
end

And(/^The mechanical service volume details displayed are:$/) do |table|
  table.transpose.raw.flatten.each do |services|
    expect(page).to have_css('[id="C.1-gia-volume"]', text: services)
  end
end

Then(/^I click on return to service requirements summary link$/) do
  click_on 'Return to service requirements summary'
end

Then(/^I click on continue to results$/) do
  sleep 2
  click_on 'Continue to results'
end

Then(/^I change contract name$/) do
  @name_change = "Change_contract_name_DS_#{SecureRandom.uuid}"
  requirements.contract_name.set(@name_change)
end

Then(/^The contract name should include "([^"]*)"$/) do |value|
  expect(requirements.procurement_name[1].text).to start_with(value)
end

Then(/^I enter the cost (\d+)$/) do |cost|
  requirements.estimated_cost_input.set(cost)
end

Then(/^I click on service requirements link$/) do
  click_on 'Service requirements'
end

Then(/^I am on service requirements summary page$/) do
  expect(common.header_one.text).to end_with('Service requirements summary')
end

Then(/^I am on contract period summary page$/) do
  expect(common.header_one.text).to end_with('Contract period summary')
end

Then(/^I click on services link$/) do
  click_on 'Services'
end

And(/^I am on buildings page$/) do
  expect(common.header_one.text).to end_with('Buildings')
end

Then(/^I am on Assigning services to buildings summary page$/) do
  expect(common.header_one.text).to end_with('Assigning services to buildings summary')
end

Then(/^I click on the service question$/) do
  requirements.service_question.click
end

Then(/^I select services for first building "([^"]*)"$/) do |_building_name|
  check "Mechanical and electrical engineering maintenance"
  check "Ventilation and air conditioning system maintenance"
  check "Environmental cleaning service"
  check "Fire detection and firefighting systems maintenance"
end

Then(/^I select services for second building "([^"]*)"$/) do |_building_name|
  check "Security, access and intruder systems maintenance"
  check "Internal & external building fabric maintenance"
  check "Building management system (BMS) maintenance"
  check "Standby power system maintenance"
end

Then(/^I select services for third building "([^"]*)"$/) do |_building_name|
  check "High voltage (HV) and switchgear maintenance"
  check "Lifts, hoists & conveyance systems maintenance"
  check "Asbestos management"
  check "Water hygiene maintenance"
end

Then(/^I select services for fourth building "([^"]*)"$/) do |_building_name|
  check "Statutory inspections"
  check "Compliance plans, specialist surveys and audits"
  check "Conditions survey"
  check "Electrical testing"
end

Then(/^I select services for fifth building "([^"]*)"$/) do |_building_name|
  check "Fire risk assessments"
  check "Portable appliance testing"
  check "Routine cleaning"
  check "Cleaning of integral barrier mats"
end

Then(/^I select services for sixth building "([^"]*)"$/) do |_building_name|
  check "Mobile cleaning"
  check "Deep (periodic) cleaning"
  check "Window cleaning (external)"
  check "Window cleaning (internal)"
end

Then(/^I select services for seventh building "([^"]*)"$/) do |_building_name|
  check "Pest control services"
  check "Cleaning of external areas"
  check "Handyman services"
  check "Move and space management - internal moves"
end

Then(/^I select services for eighth building "([^"]*)"$/) do |_building_name|
  check "Reception service"
  check "Taxi booking service"
  check "Car park management and booking"
  check "Voice announcement system operation"
end

Then(/^I select services for ninth building "([^"]*)"$/) do |_building_name|
  check "Manned guarding service"
  check "Cctv / alarm monitoring"
  check "Control of access and security passes"
  check "Emergency response"
end

Then(/^I select services for tenth building "([^"]*)"$/) do |_building_name|
  check "Patrols (fixed or static guarding)"
  check "Management of visitors and passes"
  check "General waste"
  check "Recycled waste"
end

Then(/^I select services for eleventh building "([^"]*)"$/) do |_building_name|
  check "Classified waste"
  check "Feminine hygiene waste"
  check "CAFM system"
  check "Helpdesk services"
  check "Management of billable works"
end

Then(/^I select services for twelfth building "([^"]*)"$/) do |_building_name|
  check "Pest control services"
end

Then(/^I select services for building 13 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Audio visual (AV) equipment maintenance"
  check "Television cabling maintenance"
  check "Mail room equipment maintenance"
  check "Office machinery servicing and maintenance"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 14 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Voice announcement system maintenance"
  check "Locksmith services"
  check "Airport and aerodrome maintenance services"
  check "Specialist maintenance services"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 15 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Grounds maintenance services"
  check "Tree surgery (arboriculture)"
  check "Professional snow & ice clearance"
  check "Reservoirs, ponds, river walls and water features maintenance"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 16 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Internal planting"
  check "Cut flowers and christmas trees"
  check "Building information modelling and government soft landings"
  check "Chilled potable water"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 17 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Retail services / convenience store"
  check "Deli/coffee bar"
  check "Events and functions"
  check "Full service restaurant"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 18 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Hospitality and meetings"
  check "Outside catering"
  check "Trolley service"
  check "Vending services (food & beverage)"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 19 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Residential catering services"
  check "Reactive cleaning (outside cleaning operational hours)"
  check "Cleaning of communications and equipment rooms"
  check "Housekeeping"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 20 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "It equipment cleaning"
  check "Specialist cleaning"
  check "Cleaning of curtains and window blinds"
  check "Medical and clinical cleaning"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 21 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Linen and laundry services"
  check "Clocks"
  check "Mail services"
  check "Internal messenger service"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 22 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Courier booking and external distribution"
  check "Porterage"
  check "Signage"
  check "Archiving (on-site)"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 23 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Furniture management"
  check "Space management"
  check "Cable management"
  check "Reprographics service"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 24 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Stores management"
  check "Portable washroom solutions"
  check "Administrative support services"
  check "Reactive guarding"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 25 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Additional security services"
  check "Enhanced security requirements"
  check "Key holding"
  check "Lock up / open up of buyer premises"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 26 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Patrols (mobile via a specific visiting vehicle)"
  check "Hazardous waste"
  check "Clinical waste"
  check "Medical waste"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 27 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Childcare facility"
  check "Sports and leisure"
  check "Driver and vehicle service"
  check "First aid and medical service"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 28 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Flag flying service"
  check "Journal, magazine and newspaper supply"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 29 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Hairdressing services"
  check "Footwear cobbling services"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 30 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Provision of chaplaincy support services"
  check "Housing and residential accommodation management"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 31 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Training establishment management and booking service"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 32 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "First aid and medical service"
  step 'I click on "Save and return"'
end

Then(/^I select services for building 33 "([^"]*)"$/) do |_building_name|
  click_on _building_name
  check "Catering equipment maintenance"
  check "Reactive maintenance services"
  check "Planned / group re-lamping service"
  check "Automated barrier control system maintenance"
  step 'I click on "Save and return"'
end

When(/^I select services with no service questions$/) do
  check 'Voice announcement system maintenance'
  check 'Airport and aerodrome maintenance services'
  check 'Specialist maintenance services'
  check 'Professional snow & ice clearance'
  check 'Building information modelling and government soft landings'
  check 'Retail services / convenience store '
  check 'Deli/coffee bar'
  check 'Events and functions'
  check 'Full service restaurant'
  check 'Hospitality and meetings'
  check 'Outside catering'
  check 'Trolley service'
  check 'Vending services (food & beverage)'
  check 'Residential catering services'
  check 'Cleaning of communications and equipment rooms'
  check 'Specialist cleaning'
  check 'Cleaning of curtains and window blinds'
  check 'Cable management'
  check 'Stores management'
  check 'Portable washroom solutions'
  check 'Administrative support services'
  check 'Additional security services'
  check 'Patrols (mobile via a specific visiting vehicle)'
  check 'Journal, magazine and newspaper supply'
  check 'Footwear cobbling services'
  check 'Provision of chaplaincy support services'
  check 'Housing and residential accommodation management'
  check 'Training establishment management and booking service'
end

Then(/^I am on requirements page$/) do
  step 'I click on continue'
  step 'I click on open all'
  step 'I click on Tees Valley and Durham'
  step 'I click on continue'
  step 'I add contract name'
  step 'I click on save and continue'
  step 'I click on continue'
end

Then(/^I answer contract details question$/) do
  step 'I click on estimated annual cost'
  step 'I am on estimated annual cost page'
  step 'I select no option for estimated annual cost'
  step 'I click on save and return'
  step 'I click on TUPE'
  step 'I select no option for tupe'
  step 'I click on save and return'
  step 'I click on contract period'
end

Then(/^I answer contract period question/) do
  step 'I am on contract period page'
  step 'I enter values for initial call-off period'
  step 'I select no option for tupe required'
  step 'I select no option for optional call-off extension'
  step 'I click on save and continue'
  step 'I click on return to requirements'
end

Then(/^I select building/) do
  step 'I click on buildings link'
  step 'I select first building'
  step 'I click on save and continue'
  step 'I click on return to requirements'
end

Then(/^I assign services to buildings/) do
  step 'I click on assigning services to buildings link'
  step 'I click on the first building on the page'
  step 'I click on select all'
  step 'I click on save and return'
  step 'I click on return to requirements'
end

Then(/^I navigate to results page$/) do
  step 'I click on save and return'
  step 'I click on return to service requirements summary link'
  step 'I click on return to requirements'
  step 'I click on continue to results'
end

Then(/^I complete service requirements questions$/) do
  step 'I click on service requirements link'
  step 'I am on service requirements summary page'
  step 'I click on the first building on the page'
  step 'I click on Answer question'
  step 'I select standard A'
end

Then(/^I navigate to services page$/) do
  step 'I click on save and continue'
  step 'I am on contract period summary page'
  step 'I click on return to requirements'
  step 'I click on services link'
  step 'I click on open all'
end

Then(/^I navigate to buildings page$/) do
  step 'I click on save and continue'
  step 'I click on return to requirements'
  step 'I click on buildings link'
  step 'I am on buildings page'
end

Then(/^I navigate to Assigning services to buildings summary page$/) do
  step 'I click on save and continue'
  step 'I click on return to requirements'
  step 'I click on assigning services to buildings link'
  step 'I am on Assigning services to buildings summary page'
end

Then(/^I navigate to Service requirements summary page$/) do
  step 'I click on return to requirements'
  step 'I click on service requirements link'
  step 'I am on service requirements summary page'
end

And(/^for scenario 3, lot 1a I add the details for "([^"]*)" building$/) do |building|
  step 'I navigate to buildings page'
  step "I find and select \"#{building}\""
  step 'I navigate to Assigning services to buildings summary page'
  step "I click on \"#{building}\""
  step 'I select all services for first building'
  step 'I navigate to Service requirements summary page'
  step "I click on \"#{building}\""
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Mechanical and electrical engineering maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
end

And(/^for scenario 3, I add the details for "([^"]*)" building$/) do |building|
  step 'I navigate to buildings page'
  step "I find and select \"#{building}\""
  step 'I navigate to Assigning services to buildings summary page'
  step "I click on \"#{building}\""
  step 'I select all services for first building'
  step 'I navigate to Service requirements summary page'
  step "I click on \"#{building}\""
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Mobile cleaning services" page'
  step 'I enter 10000 for mobile cleaning'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "General waste" page'
  step 'I enter 30000 for general waste'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Recycled waste" page'
  step 'I enter 30000 for recycled waste'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Mechanical and electrical engineering maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Ventilation and air conditioning system maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Environmental cleaning service" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Mobile cleaning services" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
end

And(/^for scenario 0, lot 1a I add the details for "([^"]*)" building$/) do |building|
  step 'I navigate to buildings page'
  step "I find and select \"#{building}\""
  step 'I navigate to Assigning services to buildings summary page'
  step "I click on \"#{building}\""
  step 'I select all services for first building'
  step 'I navigate to Service requirements summary page'
  step "I click on \"#{building}\""
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Routine cleaning" page'
  step 'I enter 34 for routine cleaning'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Reception service" page'
  step 'I enter 6240 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "General waste" page'
  step 'I enter 130 for general waste'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Mechanical and electrical engineering maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Routine cleaning" page'
  step 'I select standard A'
end

Then(/^I answer the service questions for building one "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Mechanical and electrical engineering maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Ventilation and air conditioning system maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Environmental cleaning service" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Fire detection and firefighting systems maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

Then(/^I answer the service questions for building two "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Security, access and intruder systems maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Internal & external building fabric maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Building management system (BMS) maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Standby power system maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

Then(/^I answer the service questions for building three "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Lifts, hoists & conveyance systems maintenance" page'
  step 'I enter 2 for number of lift floors'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "High voltage (HV) and switchgear maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Lifts, hoists & conveyance systems maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

Then(/^I answer the service questions for building five "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Portable appliance testing" page'
  step 'I enter 9 for portable appliance testing'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Routine cleaning" page'
  step 'I enter 4 for routine cleaning'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Routine cleaning" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

Then(/^I answer the service questions for building six "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Mobile cleaning services" page'
  step 'I enter 9 for mobile cleaning service'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Mobile cleaning services" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Deep (periodic) cleaning" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

Then(/^I answer the service questions for building seven "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Handyman services" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Move and space management - internal moves" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Cleaning of external areas" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

Then(/^I answer the service questions for building eight "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Reception service" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Taxi booking service" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Car park management and booking" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Voice announcement system operation" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

Then(/^I answer the service questions for building nine "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Manned guarding service" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Cctv / alarm monitoring" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Control of access and security passes" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Emergency response" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

Then(/^I answer the service questions for building ten "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Patrols (fixed or static guarding)" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Management of visitors and passes" page'
  step 'I enter 1248 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "General waste" page'
  step 'I enter 2 for general waste'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Recycled waste" page'
  step 'I enter 2 for recycled waste'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end

Then(/^I answer the service questions for building eleven "([^"]*)"$/) do |_building_name|
  click_on _building_name
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Classified waste" page'
  step 'I enter 2 for classified waste'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Feminine hygiene waste" page'
  step 'I enter 2 for feminine hygiene waste'
  step 'I click on "Save and return"'
  step 'I am on the "Service requirements" page'
  step 'I click on "Return to service requirements summary"'
  step 'I am on "Service requirements summary" page'
end