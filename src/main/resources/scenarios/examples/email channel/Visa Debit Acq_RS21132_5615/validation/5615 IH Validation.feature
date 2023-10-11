@VISADEBITACQ_IH_Validation
Feature: Validation of IH for Visa Debit Acq for all channels

  @EMAIL  @VISADEBITACQ @5616 @VISADEBITACQ_5615_IH_POSITIVE @RS21132
  Scenario Outline: Visa Debit Acq Email channel Validate IH for positive test cases
    Given load data from "VISADEBITACQ" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate latest offer details against IH
    Examples:
      | Test cases                                                                                                           |
      | 5615_CUST_TP_CD=PSNL                                                                                                 |
      | 5615_Primary Country Cd = CA                                                                                         |
      | 5615_CUST_AGE =16                                                                                                    |
      | 5615_CUST_AGE >16                                                                                                    |
      | 5615_LANG_CD in Capital Letter =E                                                                                    |
      | 5615_LANG_CD in Capital Letter =EN                                                                                   |
      | 5615_LANG_CD in Capital Letter =F                                                                                    |
      | 5615_LANG_CD in Capital Letter =FR                                                                                   |
      | 5615_LANG_CD in Small Letter = e                                                                                     |
      | 5615_LANG_CD in Small Letter = en                                                                                    |
      | 5615_LANG_CD in Small Letter = f                                                                                     |
      | 5615_LANG_CD in Small Letter = fr                                                                                    |
      | 5615_DO_NOT_SOLICIT_F = N                                                                                            |
      | 5615_DO_NOT_SOLICIT_F = NULL                                                                                         |
      | 5615_MRKTBLE_F = Y                                                                                                   |
      | 5615_DECEASED_F=N                                                                                                    |
      | 5615_MK_BK_INFO_ACCTS_EMAIL_F = Y                                                                                    |
      | 5615_MK_BK_INFO_ACCTS_EMAIL_F = NULL                                                                                 |
      | 5615_DO_NOT_EMAIL_F=N                                                                                                |
      | 5615_VLD_EMAIL_F=Y                                                                                                   |
      | 5615_PRIM_EMAIL_ADDRESS != NULL                                                                                      |
      | 5615_ACCT_ODT = NULL                                                                                                 |
      | 5615_PRIMARY_ACCT_HOLDER_FLAG=Y                                                                                      |
      | 5615_ACCT_ODT < 90 and SRC_ACCT_STAT_CD!=A                                                                           |
      | 5615_INSIGHT_CD = FLG_CC_Online_Purchase_30D and CUST_INSIGHTS.CURR_VAL = 0                                          |
      | 5615_INSIGHT_CD = Flg_Visa_Debit_Txn_Last_7D and CUST_INSIGHTS.CURR_VAL = 1 and EVENT_DATE < 21 days of current date |
      | 5615_PROD_HIER_LEVEL_4 = Chequing Accounts AND ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A                          |
      | 5615_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A  AND SRC_SYS_PRD_CD = 05 AND SRC_SYS_SUB_PRD_CD = 05               |
      | 5615_ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD = A and SCD_NUM starts with 600                                        |
      | 5615_5615012201_INSIGHT_MOB & SOL LOGIN < 90 DAYS_NO MOBILE WALLET TRANSACTION                                       |
      | 5615_5615012201_INSIGHT_MOB & SOL LOGIN = 90 DAYS_NO MOBILE WALLET TRANSACTION                                       |
      | 5615_5615012202_MOB & SOL LOGIN < 90 DAYS_NO MOBILE WALLET TRANSACTION                                               |
      | 5615_5615012202_MOB & SOL LOGIN = 90 DAYS_NO MOBILE WALLET TRANSACTION                                               |
      | 5615_5615012203_mob and sol > 90)                                                                                    |
      | 5615_5615012203_mob and sol = null)                                                                                  |
      | 5615_5615012203_LAST_APPLE_PAY_TXN_TMSTMP   is NOT null                                                              |
      | 5615_5615012203_LAST_ANDROID_PAY_TXN_TMSTMP is NOT null                                                              |
      | 5615_5615012203_LAST_SAMSUNG_PAY_TXN_TMSTMP is NOT null                                                              |
      | 5615_5615012203_LAST_SCOTIA_PAY_TXN_TMSTMP  is NOT null                                                              |
      | 5615_LAST_VD_VPOS_TXN_TMSTMP >90 days && LAST_VD_OPOS_TXN_TMSTMP = NULL from current date                            |
      | 5615_LAST_VD_OPOS_TXN_TMSTMP > 90 days && LAST_VD_VPOS_TXN_TMSTMP =NULL from current date                            |
      | N_5615_5615012201_Insight and MOB && SOL_LOGIN >90 and no mobile wallet transaction                                  |
      | N_5615_5615012201_Insight and MOB && SOL_LOGIN <90 had mobile wallet transaction                                     |
      | N_5615_5615012201_Insight and MOB && SOL_LOGIN =90 had mobile wallet transaction                                     |
      | N_5615_5615012202_Insight and MOB && SOL_LOGIN >90 and no mobile wallet transaction                                  |
      | N_5615_5615012202_Insight and MOB && SOL_LOGIN <90 had mobile wallet transaction                                     |
      | N_5615_5615012202_Insight and MOB && SOL_LOGIN =90 had mobile wallet transaction                                     |
      | 5615_INSIGHT_CD = Flg_Visa_Debit_Txn_Last_7D and CUST_INSIGHTS.CURR_VAL = 1 and EVENT_DATE = 21 days of current date |

  @EMAIL  @VISADEBITACQ @5616 @VISADEBITACQ_5615_IH_NEGATIVE @RS21132
  Scenario Outline: Visa Debit Acq Email channel Validate IH for negative test cases
    Given load data from "VISADEBITACQ" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                                                           |
      | N_5615_CUST_TP_CD!=PSNL                                                                                              |
      | N_5615_Primary Country Cd! = CA                                                                                      |
      | N_5615_Primary Country Cd = NULL                                                                                     |
      | N_5615_CUST_AGE =15                                                                                                  |
      | N_5615_CUST_AGE = NULL                                                                                               |
      | N_5615_LANG_CD in Capital Letter = K                                                                                 |
      | N_5615_LANG_CD in Capital Letter = NE                                                                                |
      | N_5615_LANG_CD in Capital Letter = NULL                                                                              |
      | N_5615_DO_NOT_SOLICIT_F = Y                                                                                          |
      | N_5615_MRKTBLE_F = N                                                                                                 |
      | N_5615_MRKTBLE_F = NULL                                                                                              |
      | N_5615_INDV_FRST_NM = NULL                                                                                           |
      | N_5615_DO_NOT_EMAIL_F= Y                                                                                             |
      | N_5615_DO_NOT_EMAIL_F=NULL                                                                                           |
      | N_5615_VLD_EMAIL_F=N                                                                                                 |
      | N_5615_VLD_EMAIL_F=NULL                                                                                              |
      | N_5615_PRIM_EMAIL_ADDRESS = NULL                                                                                     |
      | N_5615_DECEASED_F= Y                                                                                                 |
      | N_5615_DECEASED_F= NULL                                                                                              |
      | N_5615_MK_BK_INFO_ACCTS_EMAIL_F = N                                                                                  |
      | N_5615_PRD_CD=01,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=01,SUB_PRD_CD=02_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=01,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=01,SUB_PRD_CD=04_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=02,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=02,SUB_PRD_CD=02_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=02,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=19,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=19,SUB_PRD_CD=02_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=19,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=19,SUB_PRD_CD=04_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=19,SUB_PRD_CD=07_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=19,SUB_PRD_CD=08_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=13,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=13,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=13,SUB_PRD_CD=07_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=13,SUB_PRD_CD=08_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=07,SUB_PRD_CD=11_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=07,SUB_PRD_CD=12_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=23,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRD_CD=23,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                     |
      | N_5615_PRIMARY_ACCT_HOLDER_FLAG = N                                                                                  |
      | N_5615_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                                               |
      | N_5615_INSIGHT_CD ! = FLG_CC_Online_Purchase_30D and CURR_VAL = 0                                                    |
      | N_5615_INSIGHT_CD  = FLG_CC_Online_Purchase_30D and CURR_VAL ! = 0                                                   |
      | N_5615_INSIGHT_CD != Flg_Visa_Debit_Txn_Last_7D and CURR_VAL = 1 and EVENT_DATE<= 21 days                            |
      | N_5615_INSIGHT_CD = Flg_Visa_Debit_Txn_Last_7D and CURR_VAL != 1 and EVENT_DATE<= 21 days                            |
      | N_5615_INSIGHT_CD = Flg_Visa_Debit_Txn_Last_7D and CURR_VAL = 1 and EVENT_DATE > 21 days                             |
      | N_5615_PROD_HIER_LEVEL_4 ! = Chequing Accounts AND ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A                      |
      | N_5615_PROD_HIER_LEVEL_4  = Chequing Accounts AND ACCT_SUBSYS_ID ! = BB AND SRC_ACCT_STAT_CD = A                     |
      | N_5615_PROD_HIER_LEVEL_4  = Chequing Accounts AND ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD ! = A                     |
      | N_5615_ACCT_SUBSYS_ID ! = BB AND SRC_ACCT_STAT_CD = A  AND SRC_SYS_PRD_CD = 05 AND SRC_SYS_SUB_PRD_CD = 05           |
      | N_5615_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD ! = A  AND SRC_SYS_PRD_CD = 05 AND SRC_SYS_SUB_PRD_CD = 05           |
      | N_5615_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A  AND SRC_SYS_PRD_CD ! = 05 AND SRC_SYS_SUB_PRD_CD = 05           |
      | N_5615_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A  AND SRC_SYS_PRD_CD = 05 AND SRC_SYS_SUB_PRD_CD ! = 05           |
      | N_5615_ACCT_SUBSYS_ID ! = AC and EDW_ACCT_STAT_CD = A and SCD_NUM starts with 600                                    |
      | N_5615_ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD ! = A and SCD_NUM starts with 600                                    |
      | N_5615_ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD = A and SCD_NUM starts with ! 600                                    |
      | N_5615_5615012201_Digitally Active and had no mobile wallet transaction and no insight                               |
      | N_5615_5615012202_Digitally Active and had no mobile wallet transaction and no insight                               |
      | N_5615_5615012201_5615012201_Digitally Active and had no mobile wallet transaction device tp!=ios or android         |
      | N_5615_5615012203_MOB && SOL_LOGIN >  90 and had mobile wallet transaction and no insight                            |
      | N_5615_5615012203_INSIGHT _MOB && SOL_LOGIN = 90 and had no mobile wallet transaction                                |
      | N_5615_5615012203_INSIGHT _MOB && SOL_LOGIN < 90 and had no mobile wallet transaction                                |
      | N_5615_5615012204_LAST_VD_VPOS_TXN_TMSTMP and LAST_VD_OPOS_TXN_TMSTMP > 90 days and had insight                      |
      | N_5615_5615012204_LAST_VD_VPOS_TXN_TMSTMP < 90                                                                       |
      | N_5615_5615012204_LAST_VD_VPOS_TXN_TMSTMP = 90                                                                       |
      | N_5615_5615012204_LAST_VD_OPOS_TXN_TMSTMP < 90                                                                       |
      | N_5615_5615012204_LAST_VD_OPOS_TXN_TMSTMP = 90                                                                       |
      | N_5615_5615012204_LAST_VD_VPOS_TXN_TMSTMP>90 days && LAST_VD_OPOS_TXN_TMSTMP < 90 days                                 |
      | N_5615_5615012204_LAST_VD_OPOS_TXN_TMSTMP>90 days && LAST_VD_VPOS_TXN_TMSTMP < 90 days                                 |
