Feature: Search for Ruby gems with !rubygems
  As a Ruby developer
  In order to quickly find fancy gems
  The '!rubygems <gemname>` query should take me directly to fancy gems

  Background:
    Given I am on the DDG homepage

  @selenium
  Scenario: Finding the Sauce gem
    When I search for "!rubygems sauce"
    Then I should see an exact match on the Ruby Gems search page
