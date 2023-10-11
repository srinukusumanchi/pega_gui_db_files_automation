#This feature file is used to validate the existence of User Information page for VISA and Mastercard
@acceptance
Feature: User Story - Test LeanFT sample script

  @visa1
  Scenario: TC 1 Verify user able to navigate thru the Scotia pages1
    Given Open the Login page of Scotiabank
    When User should be able to click on "Credit Cards" Menu
    Then USer should be able to select "Travel Rewards" radio button
    And User should be able to click on "Apply Now" button

 @Notepad
   Scenario: Launch notepad and enter text1
   Given Launch notepad enter text


  @Sprinter
  Scenario: Launch an desktop application with LeanFT script1
    Given Launch the Sprinter application

