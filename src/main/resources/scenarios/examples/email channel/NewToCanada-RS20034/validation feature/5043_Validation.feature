Feature: Validation for NTC Campaign Email Campaign

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @NTCCampaignEmail @NTCCampaignEmail_Positive_Validation @Workstream-4 @5043 @EMAIL @RS20034
  Scenario Outline: NTC_RS20034_5043_EMAIL Validate NTC_RS20034_5043_EMAIL offer details against IH for Positive test cases
    Given load data from "NTC" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
    Examples:
      | Test cases                                                      |
      | Validating EMAIL for 5043 - Personal customer                   |
      | Validating EMAIL for 5043 - DNS as N                            |
      | Validating EMAIL for 5043 - Age equal to 18 years               |
      | Validating EMAIL for 5043 - Age greater than 18 years           |
      | Validating EMAIL for 5043 - Marketable Flag as Y                |
      | Validating EMAIL for 5043 - Deceased Flag as N                  |
      | Validating EMAIL for 5043 - Language Code as EN                 |
      | Validating EMAIL for 5043 - Language Code as FR                 |
      | Validating EMAIL for 5043 - Language Code as E                  |
      | Validating EMAIL for 5043 - Language Code as F                  |
      | Validating EMAIL for 5043 - Language Code as small case =en     |
      | Validating EMAIL for 5043 - Language Code as small case =fr     |
      | Validating EMAIL for 5043 - Language Code as small case =e      |
      | Validating EMAIL for 5043 - Language Code as small case =f      |
      | Validating EMAIL for 5043 - IMMGRTN_CAT_CD ! = S                |
      | Validating EMAIL for 5043 - MCB_IND - Y                         |
      | Validating EMAIL for 5043 - Country Code - CA                   |
      | Validating EMAIL for 5043 - EMPLOYEE_STAFF_F - N                |
      | Validating EMAIL for 5043 - BBDWSC_SC_WAIVE_FLAG = 1            |
      | Validating EMAIL for 5043 - BBDWSC_FEE_WAIVER_TYPE = NTC        |
      | Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE = 60th DAY    |
      | Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE > 60 and < 65 |
      | Validating EMAIL for 5043 - Fee Waiver Expiry Date = 65th DAY   |
      | Validating EMAIL for 5043 - Primary Account Holder - Y          |
      | Validating EMAIL for 5043 - VLD_EMAIL_F - Y                     |
      | Validating EMAIL for 5043 - DO_NOT_EMAIL_F - N                  |
      | Validating EMAIL for 5043 - Acct_subsys_id = BB                 |
      | Validating EMAIL for 5043 - Acct_subsys_id = KS                 |
      | Validating EMAIL for 5043 - Acct_subsys_id = AV                 |

  @NTCCampaignEmail @NTCCampaignEmail_Negative_Validation @Workstream-4 @5043 @EMAIL @RS20034
  Scenario Outline: NTC_RS20034_5043_EMAIL Validate NTC_RS20034_5043_EMAIL offer details against IH for Negative  test cases
    Given load data from "NTC" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                               |
      | N-Validating EMAIL for 5043 - Non Personal customer                           |
      | N-Validating EMAIL for 5043 - Country Code - other than CA               |
      | N-Validating EMAIL for 5043 - Country Code NULL                          |
      | N-Validating EMAIL for 5043 - DNS as Y                                   |
      | N-Validating EMAIL for 5043 - Age Less than 18 years                     |
      | N-Validating EMAIL for 5043 - Age is NULL                                |
      | N-Validating EMAIL for 5043 - Marketable Flag as N                       |
      | N-Validating EMAIL for 5043 - Marketable Flag as NULL                    |
      | N-Validating EMAIL for 5043 - Deceased Flag as Y                         |
      | N-Validating EMAIL for 5043 - Deceased Flag as NULL                      |
      | N-Validating EMAIL for 5043 - Language Code NE                           |
      | N-Validating EMAIL for 5043 - Language Code K                            |
      | N-Validating EMAIL for 5043 - Language Code NULL                         |
      | N-Validating EMAIL for 5043 - IMMGRTN_CAT_CD is S                        |
      | N-Validating EMAIL for 5043 - IMMGRTN_CAT_CD is S00                      |
      | N-Validating EMAIL for 5043 - MCB_IND - N                                |
      | N-Validating EMAIL for 5043 - MCB_IND - NULL                             |
      | N-Validating EMAIL for 5043 - EMPLOYEE_STAFF_F - Y                       |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_WAIVE_FLAG - other than 1        |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_WAIVE_FLAG as NULL               |
      | N-Validating EMAIL for 5043 - BBDWSC_FEE_WAIVER_TYPE - other than NTC    |
      | N-Validating EMAIL for 5043 - BBDWSC_FEE_WAIVER_TYPE as NULL             |
      | N-Validating EMAIL for 5043 - Fee Waiver Expiry Date less than 60 days   |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE greater than 65 days |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE NULL                 |
      | N-Validating EMAIL for 5043 - Primary Account Holder - N                 |
      | N-Validating EMAIL for 5043 - Primary Account Holder - NULL              |
      | N-Validating EMAIL for 5043 - VLD_EMAIL_F - N                            |
      | N-Validating EMAIL for 5043 - VLD_EMAIL_F - NULL                         |
      | N-Validating EMAIL for 5043 - DO_NOT_EMAIL_F - Y                         |
      | N-Validating EMAIL for 5043 - DO_NOT_EMAIL_F - NULL                      |
