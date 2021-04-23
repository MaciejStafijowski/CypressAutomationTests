Feature: Adding new items to shopping cart

    As a customer
    I want to add new items to a shopping cart from main page via banners

    As a customer
    I want to add new items to a shopping cart from catalog page via banners

    As a customer
    I want to add new items to a shopping cart from page of a specific item

    Scenario: Add items from main page
    Given I open shop page
    When I hover over banner of specific item
    And I click on add to cart button witihn a banner
    Then I see a pop up confirming successfull addition to a shopping cart

    Scenario: Add items from catalog page
    Given I open catalog page
    When I hover over banner of specific item
    And I click on add to cart button witihn a banner
    Then I see a pop up confirming successfull addition to a shopping cart

    Scenario: Add items from item page
    Given I open the page of a specific item
    When I click on add to cart button on specific items page
    Then I see a pop up confirming successfull addition to a shopping cart