describe("Browser actions", () => {
  it("Should load correct url", () => {
    cy.visit("http://automationpractice.com/index.php", { timeout: 10000 });
    cy.url().should("include", "http://automationpractice.com/index.php");
  });

  it("Should check for elemtnt in the page", () => {
    cy.get("#header_logo").should("be.visible");
  });

  it("Should click on Sign in button", () => {
    cy.get(".login").click();
    cy.get("#login_form").should("be.visible");
  });

  it("Should enter valid email address", () => {
    cy.get('#email').as('username')
    cy.get("@username").clear();
    cy.get("@usernaem").type("m.s@yopmail.com");
  });

  it("Should enter valid password", () => {
    cy.get("#passwd").as('password')
    cy.get("@password").clear();
    cy.get("@password").type("Test123");
  });

  it("Should submit login operation", () => {
    cy.get("#SubmitLogin").click();
  });

  it("Element should be visible after login", () => {
    cy.get(".header_user_info").should("be.visible");
  });

  it("Open category", () => {
    cy.get(".logo").click();
    cy.get(".product-container")
      .its("length")
      .should("eq", 14);
  });

  it('Open product details page', () => {
    cy.get('.product-container:first')
      .contains('Faded Short Sleeve T-shirts')
      .click()
    cy.get('.our_price_display').contains('$16.51')
  })

  // it('')
});