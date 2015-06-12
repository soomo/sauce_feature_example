Given /^I am on the DDG homepage$/ do
  visit 'http://duckduckgo.com'
end

When /^I search for "([^\"]*)"$/ do |query|
  @query = query
  fill_in 'q', :with => query
  click_button "search_button_homepage"
end

Then /^I should see an exact match on the Ruby Gems search page$/ do
  gem_name = @query.split(' ').last
  page.should have_selector("a[href='/gems/#{gem_name}']")
end
