import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

describe('Registration into the application', () => {

  Then('user is presented with screen to add email', () => {
    cy.get('#create-account_form').should('be.visible')
  })

  When('user enters unused email address', () => {
    cy.visit('http://www.yopmail.com/pl/email-generator.php')
    const adres_testowy = cy.get('#login').its('value')

    cy.visit('http://automationpractice.com/index.php?controller=authentication&back=my-account')
    cy.get('#email_create').type(adres_testowy)

  })
})