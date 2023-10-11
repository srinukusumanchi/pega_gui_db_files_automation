@NewToCanada_Testdata
Feature: Test data creation for NTC Campaign Email Campaign

  @NTCCampaignEmail @NTCCampaignEmail_Positive_TestData_5043 @Workstream-4 @5043 @EMAIL @RS20034
  Scenario Outline: NTC_RS20034_5043_EMAIL Create test data for positive test cases NTC campaign
    Given load data from "NTC" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write BBDWSC_SC_EXPIRY_DATE "<BBDWSC_SC_EXPIRY_DATE>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                      | BBDWSC_SC_EXPIRY_DATE |
      | Validating EMAIL for 5043 - Personal customer                   | 61                    |
#      | Validating EMAIL for 5043 - DNS as N                            | 61                    |
#      | Validating EMAIL for 5043 - Age equal to 18 years               | 61                    |
#      | Validating EMAIL for 5043 - Age greater than 18 years           | 61                    |
#      | Validating EMAIL for 5043 - Marketable Flag as Y                | 61                    |
#      | Validating EMAIL for 5043 - Deceased Flag as N                  | 61                    |
#      | Validating EMAIL for 5043 - Language Code as EN                 | 61                    |
#      | Validating EMAIL for 5043 - Language Code as FR                 | 61                    |
#      | Validating EMAIL for 5043 - Language Code as E                  | 61                    |
#      | Validating EMAIL for 5043 - Language Code as F                  | 61                    |
#      | Validating EMAIL for 5043 - Language Code as small case =en     | 61                    |
#      | Validating EMAIL for 5043 - Language Code as small case =fr     | 61                    |
#      | Validating EMAIL for 5043 - Language Code as small case =e      | 61                    |
#      | Validating EMAIL for 5043 - Language Code as small case =f      | 61                    |
#      | Validating EMAIL for 5043 - IMMGRTN_CAT_CD ! = S                | 61                    |
#      | Validating EMAIL for 5043 - MCB_IND - Y                         | 61                    |
#      | Validating EMAIL for 5043 - Country Code - CA                   | 61                    |
#      | Validating EMAIL for 5043 - EMPLOYEE_STAFF_F - N                | 61                    |
#      | Validating EMAIL for 5043 - BBDWSC_SC_WAIVE_FLAG = 1            | 61                    |
#      | Validating EMAIL for 5043 - BBDWSC_FEE_WAIVER_TYPE = NTC        | 61                    |
#      | Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE = 60th DAY    | 60                    |
#      | Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE > 60 and < 65 | 61                    |
#      | Validating EMAIL for 5043 - Fee Waiver Expiry Date = 65th DAY   | 65                    |
#      | Validating EMAIL for 5043 - Primary Account Holder - Y          | 61                    |
#      | Validating EMAIL for 5043 - VLD_EMAIL_F - Y                     | 61                    |
#      | Validating EMAIL for 5043 - DO_NOT_EMAIL_F - N                  | 61                    |
#      | Validating EMAIL for 5043 - Acct_subsys_id = BB                 | 61                    |
#      | Validating EMAIL for 5043 - Acct_subsys_id = KS                 | 61                    |
#      | Validating EMAIL for 5043 - Acct_subsys_id = AV                 | 61                    |

  @NTCCampaignEmail @NTCCampaignEmail_Negative_TestData_5043 @Workstream-4 @5043 @EMAIL @RS20034
  Scenario Outline: NTC_RS20034_5043_EMAIL Create test data for Negative test cases NTC campaign
    Given load data from "NTC" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write BBDWSC_SC_EXPIRY_DATE "<BBDWSC_SC_EXPIRY_DATE>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                               | BBDWSC_SC_EXPIRY_DATE |
      | N-Validating EMAIL for 5043 - Non Personal customer                      | 61                    |
      | N-Validating EMAIL for 5043 - Country Code - other than CA               | 61                    |
      | N-Validating EMAIL for 5043 - Country Code NULL                          | 61                    |
      | N-Validating EMAIL for 5043 - DNS as Y                                   | 61                    |
      | N-Validating EMAIL for 5043 - Age Less than 18 years                     | 61                    |
      | N-Validating EMAIL for 5043 - Age is NULL                                | 61                    |
      | N-Validating EMAIL for 5043 - Marketable Flag as N                       | 61                    |
      | N-Validating EMAIL for 5043 - Marketable Flag as NULL                    | 61                    |
      | N-Validating EMAIL for 5043 - Deceased Flag as Y                         | 61                    |
      | N-Validating EMAIL for 5043 - Deceased Flag as NULL                      | 61                    |
      | N-Validating EMAIL for 5043 - Language Code NE                           | 61                    |
      | N-Validating EMAIL for 5043 - Language Code K                            | 61                    |
      | N-Validating EMAIL for 5043 - Language Code NULL                         | 61                    |
      | N-Validating EMAIL for 5043 - IMMGRTN_CAT_CD is S                        | 61                    |
      | N-Validating EMAIL for 5043 - IMMGRTN_CAT_CD is S00                      | 61                    |
      | N-Validating EMAIL for 5043 - MCB_IND - N                                | 61                    |
      | N-Validating EMAIL for 5043 - MCB_IND - NULL                             | 61                    |
      | N-Validating EMAIL for 5043 - EMPLOYEE_STAFF_F - Y                       | 61                    |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_WAIVE_FLAG - other than 1        | 61                    |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_WAIVE_FLAG as NULL               | 61                    |
      | N-Validating EMAIL for 5043 - BBDWSC_FEE_WAIVER_TYPE - other than NTC    | 61                    |
      | N-Validating EMAIL for 5043 - BBDWSC_FEE_WAIVER_TYPE as NULL             | 61                    |
      | N-Validating EMAIL for 5043 - Fee Waiver Expiry Date less than 60 days   | 59                    |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE greater than 65 days | 66                    |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE NULL                 | NULL                  |
      | N-Validating EMAIL for 5043 - Primary Account Holder - N                 | 61                    |
      | N-Validating EMAIL for 5043 - Primary Account Holder - NULL              | 61                    |
      | N-Validating EMAIL for 5043 - VLD_EMAIL_F - N                            | 61                    |
      | N-Validating EMAIL for 5043 - VLD_EMAIL_F - NULL                         | 61                    |
      | N-Validating EMAIL for 5043 - DO_NOT_EMAIL_F - Y                         | 61                    |
      | N-Validating EMAIL for 5043 - DO_NOT_EMAIL_F - NULL                      | 61                    |
