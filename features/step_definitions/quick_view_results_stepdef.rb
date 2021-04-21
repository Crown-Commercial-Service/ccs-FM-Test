# frozen_string_literal: true

Then(/^the requirements should be hidden$/) do
  expect(quickview.requirements_list.visible?).to be false
end

Then(/^the requirements should be shown$/) do
  expect(quickview.requirements_list.visible?).to be true
end

Then(/^I add contract name$/) do
  @name = "Auto_#{SecureRandom.uuid}"
  quickview.contract_name.set(@name)
  puts @name
end

Then(/^I add duplicate contract name$/) do
  quickview.contract_name.set(@name)
  puts @name
end

Then(/^I click on contract name$/) do
  click_on @name
end

And(/^The following is displayed on quick search filter section:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div.filter-component-container', text: item)
  end
end

And(/^The up to 7m is displayed$/) do
  expect(quickview.long_list.up_to_7m.text).to eq('up to £7m')
end

And(/^The sublot 1a is displayed$/) do
  expect(quickview.long_list.sublot_1a.text).to eq(text)
end

And(/^The between 7m and 50m is displayed$/) do
  expect(quickview.long_list.between_7_and_50.text).to eq('between £7m-50m')
end

And(/^The sublot 1b is displayed:$/) do |text|
  expect(quickview.long_list.sublot_1b.text).to eq(text)
end

And(/^The over 50m is displayed$/) do
  expect(quickview.long_list.over_50.text).to eq('over £50m')
end

And(/^The following heading text is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('thead tr th', text: item)
  end
end

And(/^I select all da services$/) do
  step 'I click on the "Fire detection and firefighting systems maintenance"'
  step 'I click on the "High voltage (HV) and switchgear maintenance"'
  step 'I click on the "Internal & external building fabric maintenance"'
  step 'I click on the "Building management system (BMS) maintenance"'
  step 'I click on the "Environmental cleaning service"'
  step 'I click on the "Fire detection and firefighting systems maintenance"'
  step 'I click on the "High voltage (HV) and switchgear maintenance"'
  step 'I click on the "Internal & external building fabric maintenance"'
  step 'I click on the "Lifts, hoists & conveyance systems maintenance"'
  step 'I click on the "Mechanical and electrical engineering maintenance"'
  step 'I click on the "Security, access and intruder systems maintenance"'
  step 'I click on the "Standby power system maintenance"'
  step 'I click on the "Ventilation and air conditioning system maintenance"'
  step 'I click on the "Asbestos management"'
  step 'I click on the "Compliance plans, specialist surveys and audits"'
  step 'I click on the "Conditions survey"'
  step 'I click on the "Electrical testing"'
  step 'I click on the "Fire risk assessments"'
  step 'I click on the "Portable appliance testing"'
  step 'I click on the "Statutory inspections"'
  step 'I click on the "Water hygiene maintenance"'
  step 'I click on the "Cleaning of external areas"'
  step 'I click on the "Cleaning of integral barrier mats"'
  step 'I click on the "Deep (periodic) cleaning"'
  step 'I click on the "Mobile cleaning"'
  step 'I click on the "Pest control services"'
  step 'I click on the "Routine cleaning"'
  step 'I click on the "Window cleaning (external)"'
  step 'I click on the "Window cleaning (internal)"'
  step 'I click on the "Handyman services"'
  step 'I click on the "Move and space management - internal moves"'
  step 'I click on the "Car park management and booking"'
  step 'I click on the "Handyman services"'
  step 'I click on the "Move and space management - internal moves"'
  step 'I click on the "Car park management and booking"'
  step 'I click on the "Reception service"'
  step 'I click on the "Taxi booking service"'
  step 'I click on the "Voice announcement system operation"'
  step 'I click on the "CCTV / alarm monitoring"'
  step 'I click on the "Control of access and security passes"'
  step 'I click on the "Emergency response"'
  step 'I click on the "Management of visitors and passes"'
  step 'I click on the "Manned guarding service"'
  step 'I click on the "Patrols (fixed or static guarding)"'
  step 'I click on the "Classified waste"'
  step 'I click on the "Feminine hygiene waste"'
  step 'I click on the "General waste"'
  step 'I click on the "Recycled waste"'
  step 'I click on the "CAFM system"'
  step 'I click on the "Helpdesk services"'
  step 'I click on the "Management of billable works"'
end

And(/^I select FC only services$/) do
  check "Catering equipment maintenance"
  check "Reactive maintenance services"
  check "Planned / group re-lamping service"
  check "Automated barrier control system maintenance"
  check "Audio visual (AV) equipment maintenance"
  check "Television cabling maintenance"
  check "Mail room equipment maintenance"
  check "Office machinery servicing and maintenance"
  check "Voice announcement system maintenance"
  check "Locksmith services"
  check "Airport and aerodrome maintenance services"
  check "Specialist maintenance services"
  check "Grounds maintenance services"
  check "Tree surgery (arboriculture)"
  check "Professional snow & ice clearance"
  check "Reservoirs, ponds, river walls and water features maintenance"
  check "Internal planting"
  check "Cut flowers and christmas trees"
  check "Building information modelling and government soft landings"
  check "Chilled potable water"
  check "Retail services / convenience store"
  check "Deli/coffee bar"
  check "Events and functions"
  check "Full service restaurant"
  check "Hospitality and meetings"
  check "Outside catering"
  check "Trolley service"
  check "Vending services (food & beverage)"
  check "Residential catering services"
  check "Reactive cleaning (outside cleaning operational hours)"
  check "Cleaning of communications and equipment rooms"
  check "Housekeeping"
  check "IT equipment cleaning"
  check "Specialist cleaning"
  check "Cleaning of curtains and window blinds"
  check "Medical and clinical cleaning"
  check "Linen and laundry services"
  check "Clocks"
  check "Mail services"
  check "Internal messenger service"
  check "Courier booking and external distribution"
  check "Porterage"
  check "Signage"
  check "Archiving (on-site)"
  check "Furniture management"
  check "Space management"
  check "Cable management"
  check "Reprographics service"
  check "Stores management"
  check "Portable washroom solutions"
  check "Administrative support services"
  check "Reactive guarding"
  check "Additional security services"
  check "Enhanced security requirements"
  check "Key holding"
  check "Lock up / open up of buyer premises"
  check "Patrols (mobile via a specific visiting vehicle)"
  check "Hazardous waste"
  check "Clinical waste"
  check "Medical waste"
  check "Childcare facility"
  check "Sports and leisure"
  check "Driver and vehicle service"
  check "First aid and medical service"
  check "Flag flying service"
  check "Journal, magazine and newspaper supply"
  check "Hairdressing services"
  check "Footwear cobbling services"
  check "Provision of chaplaincy support services"
  check "Housing and residential accommodation management"
  check "Training establishment management and booking service"
end



