# This is an example only. We recommend testers create their own BDD steps using the methods available in GigafoxHelper and provided by Appium
@GigaFoxSample
Feature: GigaFox Sample

  @Example
  Scenario: A sample feature file
    Given the customer opens this URL "https://confluence.agile.bns"
    Then the customer clicks on "blogs.button"
    Then the customer scrolls "UP"
    Then the customer scrolls "DOWN"
    Then the customer changes screen orientation to "LANDSCAPE"
    Then the customer swipes the screen "LEFT"
    Then the customer changes screen orientation to "PORTRAIT"
    Then the customer swipes the screen "RIGHT"
    Then the customer navigates to the previous screen
    Then the customer goes back to the home screen

