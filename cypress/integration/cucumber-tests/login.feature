Feature: Login to Application

  As a valid user
  I want to log in into the Application

  Scenario: Valid login
    Given user is on home page
    When open Sign in page
    Then user is presented with screen to add email and password
    When user enters valid email
    And user enters valid password
    And user clicks Sign in button
    Then Login is confirmed
    And user is redirected to account page

  Scenario: Invalid login with invalid email address
    Given user is on home page
    When open Sign in page
    Then user is presented with screen to add email and password
    When user enters wrong email
    And user enters valid password
    And user clicks Sign in button
    Then Login failed

  Scenario: Invalid login with invalid password
    Given user is on home page
    When open Sign in page
    Then user is presented with screen to add email and password
    When user enters valid email
    And user enters wrong password
    And user clicks Sign in button
    Then Login failed

  Scenario: Invalid login with invalid email address and password
    Given user is on home page
    When open Sign in page
    Then user is presented with screen to add email and password
    When user enters wrong email
    And user enters wrong password
    And user clicks Sign in button
    Then Login failed

  Scenario: Invalid login without entering login and password
    Given user is on home page
    When open Sign in page
    Then user is presented with screen to add email and password
    When user does not enter email
    And user does not enter password
    And user clicks Sign in button
    Then Login failed


