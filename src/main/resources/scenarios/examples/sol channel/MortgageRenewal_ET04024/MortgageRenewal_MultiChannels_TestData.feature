Feature: Test Data Creation For Mortgage Renewals Multi Channels

  @MortgageRenewal @MortgageRenewal_EML_EDGE_DIA_SB_T6_NONSOL_TestData @T6 @NONSOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 EML EDGE DIALER SB T6 Create test data for Multiple Channel positive test cases
    Given load data from "MortRen_T6NONSOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                   |
      | T6_NONSOL_EML_SB_DIA_EDGE_1  |
      | T6_NONSOL_EML_SB_DIA_EDGE_2  |
      | T6_NONSOL_EML_SB_DIA_EDGE_3  |
      | T6_NONSOL_EML_SB_DIA_EDGE_4  |
      | T6_NONSOL_EML_SB_DIA_EDGE_5  |
      | T6_NONSOL_EML_SB_DIA_EDGE_6  |
      | T6_NONSOL_EML_SB_DIA_EDGE_7  |
      | T6_NONSOL_EML_SB_DIA_EDGE_8  |
      | T6_NONSOL_EML_SB_DIA_EDGE_9  |
      | T6_NONSOL_EML_SB_DIA_EDGE_10 |
      | T6_NONSOL_EML_SB_DIA_EDGE_11 |
      | T6_NONSOL_EML_SB_DIA_EDGE_12 |
      | T6_NONSOL_EML_SB_DIA_EDGE_13 |
      | T6_NONSOL_EML_SB_DIA_EDGE_14 |
      | T6_NONSOL_EML_SB_DIA_EDGE_15 |


  @MortgageRenewal @MortgageRenewal_T3_NONSOL_DML_EDGE_DIA_TestData @T3 @NONSOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 T3_NONSOL_DML_EDGE_DIA Create test data for Multiple Channel positive test cases
    Given load data from "MortRen_T3NONSOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                |
      | T3_NONSOL_DML_EDGE_DIA_1  |
      | T3_NONSOL_DML_EDGE_DIA_2  |
      | T3_NONSOL_DML_EDGE_DIA_3  |
      | T3_NONSOL_DML_EDGE_DIA_4  |
      | T3_NONSOL_DML_EDGE_DIA_5  |
      | T3_NONSOL_DML_EDGE_DIA_6  |
      | T3_NONSOL_DML_EDGE_DIA_7  |
      | T3_NONSOL_DML_EDGE_DIA_8  |
      | T3_NONSOL_DML_EDGE_DIA_9  |
      | T3_NONSOL_DML_EDGE_DIA_10 |

  @MortgageRenewal @MortgageRenewal_EML_SOL_EDGE_T6SOL_TestData @SOL @T6 @ET04024
  Scenario Outline: Mortgage Renewal ET04024 EMAIL SOL EDGE Multiple Channels test cases
    Given load data from "MortRen_SOLMulCha" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Testcases            |
      | T6SOL_EML_SOL_EDGE_1 |
      | T6SOL_EML_SOL_EDGE_2 |
      | T6SOL_EML_SOL_EDGE_3 |
      | T6SOL_EML_SOL_EDGE_4 |
      | T6SOL_EML_SOL_EDGE_5 |

  @MortgageRenewal @MortgageRenewal_EML_SOL_EDGE_NOVA_T5_T4_T3_SOL_TestData @SOL @T5 @T4 @T3 @ET04024
  Scenario Outline: Mortgage Renewal ET04024 EMAIL SOL EDGE NOVA SOL Multiple Channels test cases
    Given load data from "MortRen_SOLMulCha" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Testcases                 |
      | T5SOL_EML_SOL_EDGE_NOVA_1 |
      | T5SOL_EML_SOL_EDGE_NOVA_2 |
      | T5SOL_EML_SOL_EDGE_NOVA_3 |
      | T4SOL_EML_SOL_EDGE_NOVA_1 |
      | T4SOL_EML_SOL_EDGE_NOVA_2 |
      | T4SOL_EML_SOL_EDGE_NOVA_3 |
      | T3SOL_EML_SOL_EDGE_NOVA_1 |
      | T3SOL_EML_SOL_EDGE_NOVA_2 |
      | T3SOL_EML_SOL_EDGE_NOVA_3 |

  @MortgageRenewal @MortgageRenewal_EML_SOL_EDGE_SB_T6_SOL_TestData @SOL @T6 @ET04024
  Scenario Outline: Mortgage Renewal ET04024 EMAIL SOL EDGE SB SOL Multiple Channels test cases
    Given load data from "MortRen_SOLMulCha" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Testcases                |
      | T6SOL_EML_SOL_EDGE_SB_1  |
      | T6SOL_EML_SOL_EDGE_SB_2  |
      | T6SOL_EML_SOL_EDGE_SB_3  |
      | T6SOL_EML_SOL_EDGE_SB_4  |
      | T6SOL_EML_SOL_EDGE_SB_5  |
      | T6SOL_EML_SOL_EDGE_SB_6  |
      | T6SOL_EML_SOL_EDGE_SB_7  |
      | T6SOL_EML_SOL_EDGE_SB_8  |
      | T6SOL_EML_SOL_EDGE_SB_9  |
      | T6SOL_EML_SOL_EDGE_SB_10 |
      | T6SOL_EML_SOL_EDGE_SB_11 |
      | T6SOL_EML_SOL_EDGE_SB_12 |
      | T6SOL_EML_SOL_EDGE_SB_13 |
