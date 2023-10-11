@5504_IH_Validation
Feature: Validation for 5504 MPSA_Contribution

  @EarlyTenureIndirectMtgLeadsEmail @EarlyTenureIndirectMtgLeadsEmail_IHFile_Positive_Generic_Validation @5688 @EMAIL @21128 @AUTOTESTTOTAL#31
  Scenario Outline: IndirectMortgageLeads Email_RS21128_5688_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "EarlyTenureIndirectMtgLeadsEmail" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Indirect Mtg Email offer details against IH
    Examples:
      | Test cases                                                                                                                                                   |
      | 5688_CUST_TP_CD=PSNL,5688_Primary Country Cd = CA,5688_MRKTBLE_F = Y,5688_Customer Not Decease                                                               |
      | 5688_CUST_AGE >18                                                                                                                                            |
      | 5688_CUST_AGE=18                                                                                                                                             |
      | 5688_LANG_CD in small case_en                                                                                                                                |
      | 5688_LANG_CD in small case_fr                                                                                                                                |
      | 5688_NOT_AML_KYC = N                                                                                                                                         |
      | 5688_NOT_AML_KYC = NULL                                                                                                                                      |
      | 5688_DEDICATED_INVSTMNT_ADVISOR_F = N                                                                                                                        |
      | 5688_DEDICATED_INVSTMNT_ADVISOR_F = NULL                                                                                                                     |
      | 5688_DO_NOT_SOLICIT_F = NULL                                                                                                                                 |
      | 5688_MAPP_TMRRW_LAST_SESS_DT = NULL                                                                                                                          |
      | 5688_DO_NOT_EMAIL_F=N                                                                                                                                        |
      | 5688_VLD_EML_F=Y                                                                                                                                             |
      | 5688_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                |
      | 5688_INDV_FRST_NM!=NULL/BLANK                                                                                                                                |
      | 5688_ACCT_SUBSYS_ID = UO And SRC_ACCT_STAT_CD = Active And IP_AR_RELATN_TYPE_CD = SOL And MORT_COMM_TYPE = Residential And ACCT_SOURCE_ORIG_CHANNEL = BROKER |
      | 5688_ACCT_SUBSYS_ID = UO And SRC_ACCT_STAT_CD = Active And IP_AR_RELATN_TYPE_CD = BOR And MORT_COMM_TYPE = Residential And ACCT_SOURCE_ORIG_CHANNEL = BROKER |
      | 5688_ACCT_SUBSYS_ID = UO And SRC_ACCT_STAT_CD = Active And IP_AR_RELATN_TYPE_CD = COB And MORT_COMM_TYPE = Residential And ACCT_SOURCE_ORIG_CHANNEL = BROKER |
      | 5688_CURRENT DATE - MORT_FNDNG_DT<=90 and >=30                                                                                                               |
      | 5688_CURRENT DATE - MORT_FNDNG_DT = 90                                                                                                                       |
      | 5688_CURRENT DATE - MORT_FNDNG_DT = 30                                                                                                                       |
      | 5688_MK_MORTGAGES_EMAIL_F = Y                                                                                                                                |
      | 5688_MK_MORTGAGES_EMAIL_F = NULL                                                                                                                             |
      | 5688_INDV_TTL_NM = NULL                                                                                                                                      |
      | 5688_INSIGHT_CD = FLG_EMOB_INDIRECTMORTGAGE_RS21128 and CURR_VAL != 1                                                                                        |
      | 5688_INSIGHT_CD = FLG_RESL_CONTINUUM_RS21038_CONTROL and CURR_VAL != 1                                                                                       |
      | 5688_Product_Category_Credit Cards_Other Personal Loans_Auto Loans                                                                                           |
      | 5688_Product_Category_Day to Day_High Interest Savings Accounts_Cash Term Deposit                                                                            |
      | 5688_Product_Category_Day to Day_Scotia Plan Loans_Cash Demand Deposit                                                                                       |
      | 5688_Product_Category_Secured Lines of Credit_Cash Term Deposit_Lines of Credit                                                                              |
      | 5688_Product_Category_Credit Cards_High Interest Savings Accounts                                                                                            |

  @EarlyTenureIndirectMtgLeadsEmail @EarlyTenureIndirectMtgLeadsEmail_Negative_Validation @5688 @EMAIL @RS21128 @AUT0TESTTOTAL#46
  Scenario Outline: IndirectMortgageLeads Email_RS21128_5688_EMAIL Validate offer details against IH for Negative test cases
    Given load data from "EarlyTenureIndirectMtgLeadsEmail" excel sheet
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
      | Test cases                                                                                       |
      | N-5688_INSIGHT_CD = FLG_EMOB_INDIRECTMORTGAGE_RS21128 and CURR_VAL = 1                           |
      | N-5688_INSIGHT_CD = FLG_RESL_CONTINUUM_RS21038_CONTROL and CURR_VAL = 1                          |
      | N-5688_CUST_TP_CD != PSNL                                                                        |
      | N-5688_Primary Country Cd != CA                                                                  |
      | N-5688_Primary Country Cd = NULL                                                                 |
      | N-5688_CUST_AGE < 18                                                                             |
      | N-5688_CUST_AGE = NULL                                                                           |
      | N-5688_LANG_CD NOT in (en, fr)                                                                   |
      | N-5688_LANG_CD = NULL                                                                            |
      | N-5688_NOT_AML_KYC = Y                                                                           |
      | N-5688_DEDICATED_INVSTMNT_ADVISOR_F = Y                                                          |
      | N-5688_DO_NOT_SOLICIT_F = Y                                                                      |
      | N-5688_MRKTBLE_F = N                                                                             |
      | N-5688_MRKTBLE_F = NULL                                                                          |
      | N-5688_Customer Decease - Y                                                                      |
      | N-5688_Customer Decease - NULL                                                                   |
      | N-5688_DO_NOT_EMAIL_F=Y                                                                          |
      | N-5688_DO_NOT_EMAIL_F=NULL                                                                       |
      | N-5688_Valid Email Flag = N                                                                      |
      | N-5688_Valid Email Flag = NULL                                                                   |
      | N-5688_EMAIL Address = NULL                                                                      |
      | N-5688_First Name = NULL                                                                         |
      | N-5688_INDV_LAST_NM = NULL                                                                       |
      | N-5688_MK_MORTGAGES_EMAIL_F = N                                                                  |
      | N-5688_ACCT_SUBSYS_ID != UO                                                                      |
      | N-5688_MAPP_TMRRW_LAST_SESS_DT != NULL                                                           |
      | N-5688_SRC_ACCT_STAT_CD =  A                                                                     |
      | N-5688_SRC_ACCT_STAT_CD = NULL                                                                   |
      | N-5688_IP_AR_RELATN_TYPE_CD NOT IN SOL_BOR_COB                                                   |
      | N-5688_IP_AR_RELATN_TYPE_CD NOT = NULL                                                           |
      | N-5688_MORT_COMM_TYPE != Residential                                                             |
      | N-5688_MORT_COMM_TYPE = NULL                                                                     |
      | N-5688_ACCT_SOURCE_ORIG_CHANNEL != BROKER                                                        |
      | N-5688_ACCT_SOURCE_ORIG_CHANNEL = NULL                                                           |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT = 91                                                         |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT > 91                                                         |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT = 29                                                         |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT < 30                                                         |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT = NULL                                                       |
      | N-5688_Product_Category_Credit Cards_Business Loans_High Interest Savings Accounts               |
      | N-5688_Product_Category_Credit Cards_Scotia Plan Loans_Cash Term Deposit                         |
      | N-5688_Product_Category_Credit Cards_Unsecured Lending_Cash Term Deposit                         |
      | N-5688_Product_Category_Day to Day_Secured Lines of Credit_High Interest Savings Accounts        |
      | N-5688_Product_Category_Day to Day_Other Personal Loans_Auto Loans_Cash Term Deposit             |
      | N-5688_Product_Category_Credit Cards_Day to Day_Mortgages_Cash Term Deposit                      |
      | N-5688_Product_Category_Credit Cards_Auto Loans_High Interest Savings Accounts_Cash Term Deposit |