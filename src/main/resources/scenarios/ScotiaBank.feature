#This feature file is used to validate the existence of User Information page for VISA and Mastercard
@regression
Feature: User Story 1234 Verify that user is able to see Personal Information page for VISA and Mastercard

  @mastercard
  Scenario: TC 2 Verify that user is able to see Personal Information page for Mastercard1
    Given User is on Mastercard Scotia homepage
    When User perform the actions to navigate to Enter Your Info page
    Then User should be able to see Enter Your Info page
    And User should be able to see Contact Us link on Enter Your Info page
