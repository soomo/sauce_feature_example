Feature: Post textfield value and see results asynchronously on page

	In order to use Sauce
	As an automated process
	I want to successfully use javascript and selenium tags together

	Background:
		Given I'm on the root page
		 Then I should see "Hello World"

	@javascript
	Scenario:
		When I fill in the textfield with "make it work"
		 And I click "Try Me"
		Then I should see "success" in the results div
		 And I should see "make it work" in the results div
