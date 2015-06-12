# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms

Sauce.config do |config|
	config[:browsers] = [
		["Windows 8.1", "Internet Explorer", "11"],
		["Windows 8", "Internet Explorer", "10"]
	]
	config[:start_tunnel] = false
end


# CIRCLE_BRANCH is a default env var set by CircleCi
# RUN_ON_SAUCE should be set when running tests locally with Sauce
use_sauce = (ENV['CIRCLE_BRANCH'] == 'staging' || ENV['RUN_ON_SAUCE'] == 'true')

if use_sauce
	Capybara.default_driver = :sauce
	Capybara.javascript_driver = :sauce
else
	Capybara.register_driver(:selenium) { |app|	Capybara::Selenium::Driver.new(app, :browser => :chrome) }
	Capybara.default_driver = :selenium
	Capybara.javascript_driver = :selenium
end
