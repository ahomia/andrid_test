Given(/^I land on help popup$/) do
  puts("User lands on Help popup")
end

Then(/^I land on Area screen$/) do
  puts("User lands on Area screen")
end

When(/^I click i Got it button$/) do
  puts("User clicks in Got it button")
end


When(/^I click on Swap button$/) do
  puts("User clicks on Swap button")

end

Then(/^I see "([^"]*)" in From header$/) do |value|
  puts("From header values is"+value)
end

And(/^I see "([^"]*)" in To header$/) do |value|
  puts("To header values is "+value)
end

And(/^I click on Clear button$/) do
  puts("User clicks on Clear button")
end

When(/^I enter "([^"]*)" to From field$/) do |value|
  puts("User enetered #{value} to Form field")
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  puts("User sees #{value} in result field")

end