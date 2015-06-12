Given(/^I'm on the root page$/) do
	visit '/'
end

Then(/^I should see "(.*?)"$/) do |arg1|
	assert page.has_content? arg1
end

When(/^I fill in the textfield with "(.*?)"$/) do |arg1|
	fill_in 'hello-text', :with => arg1
end

When(/^I click "(.*?)"$/) do |arg1|
	click_button arg1
end

Then(/^I should see "(.*?)" in the results div$/) do |arg1|
	assert find('.results').visible?
	assert page.has_content? arg1
end
