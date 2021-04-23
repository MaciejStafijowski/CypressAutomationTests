Feature: Filtering results in catalog

  As a customer
  I want to filter displayed items on catalog page

  Scenario: Filtering
    Given I am on catalog page
    When I press a filter option
    Then I see modified search results