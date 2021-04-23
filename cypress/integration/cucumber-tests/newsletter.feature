Feature: Signing up to Newsletter by Newsletter bar on the bottom on the page

  As a user
  i want to sign with valid email in to Newsletter

  As a user
  i want to sign with same email in to Newsletter

  As a user
  i want to sign with invalid email in to Newsletter

  As a user
  i want to sign with without filling uo email in to Newsletter

  Scenario: Sign in with valid email address
    Given User open main page
    When User submit valid email
    Then User see banner with positive added address

  Scenario: Sign in with already registered email address
    Given User open main page
    When User submit same email
    Then User see banner info about already registred email address

  Scenario: Sign in with invalid email address
    Given User open main page
    When User submit invalid email
    Then User see banner info about invalid email address

  Scenario: Sign in, without filling up email address
    Given User open main page
    When User submit empty form
    Then User see banner info about invalid email address
