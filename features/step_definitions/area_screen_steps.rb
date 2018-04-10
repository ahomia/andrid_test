Given(/^I land on help popup$/) do
  text("Help")

end

When(/^I click on Got it button$/) do
  find_element(id: "button1").click
end

Then(/^I land on Area screen$/) do
  text("Area")
end

# And(/^I see Sq Kilometre in From header$/) do
#   puts("User sees Sq Kilometre")
# end
#
# And(/^I see Sq Metre  in To header$/) do
#   puts("User sees Sq Metre")
# end

When(/^I click on Swap button$/) do
  find_element(id:"fab").click
end

Then(/^I see "([^"]*)" in From header$/) do |value|
  actual_value = find_element(id: "header_text_unit_from").text
  equal_assertion(actual_value, value)
end

And(/^I see "([^"]*)"  in To header$/) do |value|
  actual_value = find_element(id: "header_text_unit_to").text
  equal_assertion(actual_value, value)
end


And(/^I click on Clear button$/) do
  find_element(id:"menu_clear").click
end

When(/^I enter "([^"]*)" to From field$/) do |value|
  find_element(id: "header_value_from").send_keys(value)
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  actual_value = find_element(id: "header_value_to").text
    equal_assertion(actual_value, value)
end

When(/^I click on From from field$/) do
  find_element(id: "header_value_from").click
end

And(/^I press "([^"]*)" on soft keyboard$/) do |value|
  digits = value.split("")
  digits.each do |key|
  digit = Integer(key)
  press_keycode 7 + digit
  end
end

When(/^I select "([^"]*)" from left column$/) do |value|
  find_element(id:"radio_group_from").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click

end

When(/^I select "([^"]*)" from right column$/) do |value|
  find_element(id:"radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
end








# Egual assertion of two values
private
def equal_assertion(actual_value, value)
  if actual_value != value
    fail("Expected value is #{value} but actual is #{actual_value}")
  end
end


