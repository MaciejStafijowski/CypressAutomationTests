import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'


Given('User open main page', () => {
	cy.visit('http://automationpractice.com/index.php')
})

When('User submit valid email', () => {
	cy.get('#newsletter-input').clear()
	cy.get('#newsletter-input').type('maileexample@xyzcdexc.com')
	cy.get('[name="submitNewsletter"]').should('be.visible').click()
})

Then('User see banner with positive added address', () => {
	cy.get('.alert').should('be.visible')
})

When('User submit same email', () => {
	cy.get('#newsletter-input').clear()
	cy.get('#newsletter-input').type('x')
	cy.get('[name="submitNewsletter"]').should('be.visible').click()
})

Then('User see banner info about already registred email address', () => {
	cy.get('.alert').should('be.visible')
})

When('User submit invalid email', () => {
	cy.get('#newsletter-input').clear()
	cy.get('#newsletter-input').type('x')
	cy.get('[name="submitNewsletter"]').should('be.visible').click()
})

Then('User see banner info about invalid email address', () => {
	cy.get('.alert').should('be.visible')
})

When('User submit empty form', () => {
	cy.get('#newsletter-input').clear()
	cy.get('#newsletter-input').type('x')
	cy.get('[name="submitNewsletter"]').should('be.visible').click()
})