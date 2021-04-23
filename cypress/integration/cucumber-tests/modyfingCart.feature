Feature: Modyfing the quantity of items in a shopping cart

  As a customer
  I want to increase the quantity of a specific item that is currently stored in shopping cart by using buttons

  As a customer
  I want to decrese the quantity of a specific item that is currently stored in shopping cart by using buttons

  As a customer
  I want to change quantity of a specific item that is currently stored in shopping cart by entering a number in a specific field

  As a customer
  I want to see that I entered a quantity of items that excedes current stock by pressing buttons

  As a customer
  I want to see that I entered a quantity of items that excedes current stock by typing in a specific area

  As a customer
  I don't want to be able to type in a negative number of items in a specific area

  As a customer
  I want to remove an item from my shopping cart via shopping cart page by decreasing an amount of specific item to zero

  As a customer
  I want to remove an item from my shopping cart via shopping cart page by pressing a designed button

  As a customer
  I want to remove an item from my shopping cart from any page via dropdown menu

  Scenario: Increase quantity of items with buttons
    Given I have some previously added items in a shopping cart
    And I visit shopping cart
    When I press a button designed to increase the quantity of items in my shopping cart
    Then I see increase in quantity of items in my shopping cart

  Scenario: Decrease quantity of items with buttons
    Given I have some previously added items in a shopping cart
    And I visit shopping cart
    When I press a button designed to decrese the quantity of items in my shopping cart
    Then I see decrese in quantity of items in my shopping cart

  Scenario: Change quantity of items by entering a number
    Given I have some previously added items in a shopping cart
    And I visit shopping cart
    When I enter a number to change the quantity of items in my shopping cart
    Then I see change in quantity of items in my shopping cart

  Scenario: Excede stock quantity by pressing buttons
    Given I have previously added a number of items that should excede stock
    And I visit shopping cart
    When I press a button designed to increase the quantity of items in my shopping cart
    Then I see information about lack of items in stock

  Scenario: Excede stock quantity by entering a number
    Given I have some previously added items in a shopping cart
    And I visit shopping cart
    When I enter a number that should excede stock into quantity area
    Then I see information about lack of items in stock

  Scenario: Typing in a negative quantity of items
    Given I have some previously added items in a shopping cart
    And I visit shopping cart
    When I enter a negative number into quantity area
    Then I see a negative quantity of items

  Scenario: Removing an item by decreasing a number of items to zero
    Given I have exactly 1 item in shopping cart
    And I visit shopping cart
    When I press a button designed to decrese the quantity of items in my shopping cart
    Then I should not have items in shopping cart

  Scenario: Remmoving an item by pressing a designated button from shopping cart
    Given I have some previously added items in a shopping cart
    And I visit shopping cart
    When I press a button designed to remove items from my shopping cart
    Then I should not have items in shopping cart

  Scenario: Remmoving an item by pressing a designated button from any page
    Given I have some previously added items in a shopping cart
    When I press a button designed to remove items from dropdown menu
    Then I should not have items visible in downdown menu

