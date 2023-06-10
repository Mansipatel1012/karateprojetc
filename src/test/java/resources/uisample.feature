Feature: To demostrate the UI Automation using karate

  Background: Configure Driver
    Given  driver 'https://demo.nopcommerce.com/'

  Scenario: Verify the title of the page
    Then match driver.title == 'nopCommerce demo store'

  Scenario: verify the user navigate to login page
    When click("//a[contains(text(),'Log in')]")
    * def actualText = text("//h1[contains(text(),'Welcome, Please Sign In!')]")
    Then match actualText == "Welcome , please Sign in!"
    And input('#password', "prime123")

