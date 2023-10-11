@4354_PACC_BatchValidationFeature
Feature: Batch Validation for 5725 D2D Payment Methods

# Base Positive Scenarios that covers both the Creatives for D2DPaymentMethods Offer
  @PACC @PACC_Base_Positive_Batch_Validation @4354 @EMAIL @OP14037
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against batch file for Base Positive test cases
    Given load data from "PACC" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "PACC" extract file with batch "CampaignNumber;CreditLimit;OfferMnemonic;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get PACC mailID from ddr records
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D Payment Methods details in batch file against database and pega
    Then validate PA CC offer details in batch file against database and pega
    Examples:
      | Test cases |


