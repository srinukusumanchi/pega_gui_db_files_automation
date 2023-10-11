Feature: Validation for D2D Acquisition_5748


  @D2DAcq_Email_5748_IH_PositiveTCs_Validation
  Scenario Outline: D2D Acquisition 5748_RS22054_EMAIL Validate IH details against database and pega for Positive test cases
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D Acquisition offer details against IH
    Examples:
      | Test cases                                                                                     |
      | 5748_DECEASED_F = N                                                                            |
      | 5748_CUST_TP_CD = PSNL                                                                         |
      | 5748_PRIM_CNTRY_CD = CA                                                                        |
      | 5748_CUST_AGE = 18                                                                             |
      | 5748_CUST_AGE = 65                                                                             |
      | 5748_CUST_AGE>=18 AND <=65                                                                     |
      | 5748_LANG_CD = en                                                                              |
      | 5748_LANG_CD = fr                                                                              |
      | 5748_EMPLOYEE_STAFF_F = N                                                                      |
      | 5748_EMPLOYEE_STAFF_F = NULL                                                                   |
      | 5748_MRKTBLE_F = Y                                                                             |
      | 5748_NOT_AML_KYC !=  Y                                                                         |
      | 5748_NOT_AML_KYC = NULL                                                                        |
      | 5748_ITRADE_MCLEOD_F != Y                                                                      |
      | 5748_ITRADE_MCLEOD_F = NULL                                                                    |
      | 5748_DO_NOT_SOLICIT_F != Y                                                                     |
      | 5748_DO_NOT_SOLICIT_F = NULL                                                                   |
      | 5748_HAS_CLOSED_CHQ_F ! = Y                                                                    |
      | 5748_HAS_CLOSED_CHQ_F = NULL                                                                   |
      | 5748_VLD_EMAIL_F = Y                                                                           |
      | 5748_PRIM_EMAIL_ADDR not null  or blank                                                        |
      | 5748_INDV_FRST_NM not null or blank                                                            |
      | 5748_DO_NOT_EMAIL_F  = N                                                                       |
      | 5748_MK_BK_OFFERS_EMAIL != N                                                                   |
      | 5748_MK_BK_OFFERS_EMAIL = NULL                                                                 |
      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 1 and CURRENT DATE - EVENT_DATE < 8 days  |
      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 2 and CURRENT DATE - EVENT_DATE = 8 days  |
      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 3 and CURRENT DATE - EVENT_DATE = 8 days  |
      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 4 and CURRENT DATE - EVENT_DATE < 8 days  |
      | 5748_ACCT_SUBSYS_ID! = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts   |
      | 5748_ACCT_SUBSYS_ID = NULL and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts  |
      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and PROD_HIER_LEVEL_4 = Chequing Accounts   |
      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = NULL and PROD_HIER_LEVEL_4 = Chequing Accounts |
      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 != Chequing Accounts   |
      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = NULL                 |

  @D2DAcq_Email_5748_IH_NegativeTCs_Validation
  Scenario Outline: D2D Acquisition 5748_RS22054_EMAIL Validate IH details for Negative Test Cases
    Given load data from "D2DAcqCrossSell" excel sheet
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
      | Test cases                                                                                               |
      | N_5748_DECEASED_F != N                                                                                   |
      | N_5748_DECEASED_F = NULL                                                                                 |
      | N_5748_CUST_TP_CD != PSNL                                                                                |
      | N_5748_CUST_TP_CD = NULL                                                                                 |
      | N_5748_PRIM_CNTRY_CD != CA                                                                               |
      | N_5748_PRIM_CNTRY_CD = NULL                                                                              |
      | N_5748_CUST_AGE < 18                                                                                     |
      | N_5748_CUST_AGE > 65                                                                                     |
      | N_5748_CUST_AGE = NULL                                                                                   |
      | N_5748_LANG_CD not in (en,fr)                                                                            |
      | N_5748_LANG_CD = NULL                                                                                    |
      | N_5748_EMPLOYEE_STAFF_F != N                                                                             |
      | N_5748_MRKTBLE_F != Y                                                                                    |
      | N_5748_MRKTBLE_F = NULL                                                                                  |
      | N_5748_NOT_AML_KYC =  Y                                                                                  |
      | N_5748_ITRADE_MCLEOD_F = Y                                                                               |
      | N_5748_DO_NOT_SOLICIT_F = Y                                                                              |
      | N_5748_HAS_CLOSED_CHQ_F  = Y                                                                             |
      | N_5748_VLD_EMAIL_F != Y                                                                                  |
      | N_5748_VLD_EMAIL_F = NULL                                                                                |
      | N_5748_PRIM_EMAIL_ADDR = NULL                                                                            |
      | N_5748_PRIM_EMAIL_ADDR = BLANK                                                                           |
      | N_5748_INDV_FRST_NM = NULL                                                                               |
      | N_5748_INDV_FRST_NM = BLANK                                                                              |
      | N_5748_DO_NOT_EMAIL_F != N                                                                               |
      | N_5748_DO_NOT_EMAIL_F = NULL                                                                             |
      | N_5748_MK_BK_OFFERS_EMAIL = N                                                                            |
      | N_5748_INSIGHT_CD =  and CURR_VAL not in (1,2,3,4) and CURRENT DATE - EVENT_DATE < 8 days                |
      | N_5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = NULL and CURRENT DATE - EVENT_DATE < 8 days       |
      | N_5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL in (1,2,3,4) and CURRENT DATE - EVENT_DATE > 8 days |
      | N_5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL in (1,2,3,4) and CURRENT DATE - EVENT_DATE = NULL   |
      | N_5748_PHYSICIANS_F = Y_IH Summary_pychannel = COS_current date - lead start date =< 365 days            |
      | N_5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts            |

