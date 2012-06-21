Given /^that I'm on the home page$/ do
  visit '/'
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in field, :with => value
end

When /^I press "(.*?)"$/ do |button|
  click_button button
end

Then /^I should see "(.*?)"$/ do |result|
  page.should have_content(result)
end

When /^I click on "(.*?)"$/ do |link|
  click_link link
end

Then /^I must click on "(.*?)"$/ do |arg1|
  page.evaluate_script('window.confirm = function() { return true; }')
  page.click('Remove')
end

