Feature: Branch Locator

  @BranchLocator
  Scenario Outline: Branch Locator Test
    Given the user navigates to "https://maps.scotiabank.com/locator/index.html"
    When the user enters the postal code as "<postalCode>"
    And clicks on the GO button
    Then the locations near the given postal code is displayed

    Examples:
      | postalCode |
      | M1B0C4     |
      | M1K 5L1    |
      | 12345      |
      | 45342      |