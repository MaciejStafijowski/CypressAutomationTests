import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

describe("Login feature", () => {

    beforeEach('Get random email address', () => {
        cy.visit('http://www.yopmail.com/pl/email-generator.php')
        cy.get('value').invoke('txt').as('txt')
        });

    it(() => {
        this.txt
    });

    When('user enters unused email address', () => {
            cy.visit('http://automationpractice.com/index.php?controller=authentication&back=my-account')
            cy.get(login).type(this.text)
    });

    Given('user is on home page', () => {
        cy.visit('http://automationpractice.com/index.php');
    })

    When('open Sign in page', () => {
        cy.get(".login").click();
    });

    Then('user is presented with screen to add email and password', () => {
        cy.get("#login_form").should("be.visible");
    });

    When('user enters valid email', () => {
        cy.get("#email").clear();
        cy.get("#email").type("m.s@yopmail.com");
    });

    And('user enters valid password', () => {
        cy.get("#passwd").clear();
        cy.get("#passwd").type("Test123");
    });

    And('user clicks Sign in button', () => {
        cy.get("#SubmitLogin").click();
    });

    Then('Login is confirmed', () => {
        cy.get(".header_user_info").should("be.visible");
    });

    And('user is redirected to account page', () => {
        cy.get('.page-heading').contains('My account')
    });

    When('user enters wrong email', () => {
        cy.get("#email").clear();
        cy.get("#email").type("błędny@email.com");
    })

    Then('Login failed', () => {
        cy.get('.alert-danger')
          .contains('There is 1 error')
          .should('be.visible')
    })

    And('user enters wrong password', () => {
        cy.get("#passwd").clear();
        cy.get("#passwd").type("blednehaslo");
    })

    When('user does not enter email', () => {
        cy.get("#email").clear();
        cy.get("#email").type(" ");
    })

    And('user does not enter password', () => {
        cy.get("#passwd").clear();
        cy.get("#passwd").type(" ");
    });
});