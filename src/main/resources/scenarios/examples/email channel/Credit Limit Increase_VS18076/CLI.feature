@CLI_Testdata
Feature: Test Data Creation For Credit Limit Increase Email Channel

  @CreditLimitIncrease @CLI_Positive_TestData_Single_Account_CLI  @Email @VS18076
  Scenario Outline: Credit Limit Increase VS18076 Email Create test data for positive test cases
    Given load data from "CLI" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write startdate"<CLI_OFR_ST_DT>" into "ACCT_DIM" sheet for "<Test cases>"
    When write enddate"<CLI_OFR_EXP_DT>" into "ACCT_DIM"  sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases           | CLI_OFR_ST_DT | CLI_OFR_EXP_DT |
      | 4481_IO_ODisp_VCL-RG | 01            | 25             |

  @CreditLimitIncrease @CLI_Positive_TestData_Dual_Account_CLI  @Email @VS18076
  Scenario Outline: Credit Limit Increase VS18076 Email Create test data for positive test cases
    Given load data from "CLI" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write CLI account number into "ACCT_DIM" sheet for "<Test cases>" having 2 accounts
    When write startdate"<CLI_OFR_ST_DT>" into "ACCT_DIM" sheet for "<Test cases>"
    When write enddate"<CLI_OFR_EXP_DT>" into "ACCT_DIM"  sheet for "<Test cases>"
    Then insert CLI customer account details in "ACCT_DIM" table having "2" accounts
    When write CLI cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert CLI customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases           | CLI_OFR_ST_DT | CLI_OFR_EXP_DT |
      | 4479_IO_ODisp_VGD-RG | 01            | 25             |
