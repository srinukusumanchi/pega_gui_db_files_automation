Feature: Angular app

  @AngularTestSample
  Scenario : Sample angular test
    Given User navigates to "http://www.way2automation.com/angularjs-protractor/multiform/#/form/profile"
    When User enters name, email
    And User clicks on next section
    And User selects a console type
    And User clicks on next section
    Then User is presented with welcome screen