Feature: Batch file validation for Visa Debit Interac 5970

  @D2DEarlyEngagementiTradeCrossSell_Email_5971_Batch_PositiveTCs_Validation
  Scenario Outline: D2D iTrade Cross Sell 5971_RS23034_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "D2Ditrade_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "D2DiTrade" extract file with batch "" Email Specific Text Header
    Then Validate D2D Early Engagement iTrade Cross Sell offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5971_EML_BASE_01 |
      | 5971_EML_BASE_02 |

