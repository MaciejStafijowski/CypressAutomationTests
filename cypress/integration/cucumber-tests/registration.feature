Feature: Registration into the application

  Scenario: Valid registration

    Given user is on home page
    When open Sign in page
    Then user is presented with screen to add email
    When user enters unused email address
    And clicks “Create an account button”
    Then registration form appears
    When user fills all required fields in the form
    And confirms with “Register” button
    Then user account is created
    And user is already logged into the account

