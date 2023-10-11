@VisaDebitAcq_5615
Feature: Test data creation for EMAIL  for Visa Debit Acq Campaign

  @5615_Positive
  Scenario Outline: Visa Debit Acq_RS21132_5615_EMAIL Create test data "<Test cases>" for positive scenarios
    Given load data from "VISADEBITACQ" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    When write dual same account number into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" insights
    And write "<CURR_VAL_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write "<CURR_VAL_TMSTMP_Dual_Account>" for dual accounts into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event data "<EVENT_DATE>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases                                                                                                           | CURR_VAL_TMSTMP | CURR_VAL_TMSTMP_Dual_Account | EVENT_DATE | Acct_Odt | MOB_LOGIN | SOL_LOGIN |
      | 5615_CUST_TP_CD=PSNL                                                                                                 | -101            | -92                          | -1         | 100      | 10        | 10        |
      | 5615_Primary Country Cd = CA                                                                                         | -101            | -92                          | -1         | 92       | 10        | 10        |
      | 5615_CUST_AGE =16                                                                                                    | -101            | -92                          | -1         | 100      | NULL      | 10        |
      | 5615_CUST_AGE >16                                                                                                    | -101            | -92                          | -1         | 100      | NULL      | 10        |
      | 5615_LANG_CD in Capital Letter =E                                                                                    | -101            | -92                          | -1         | 100      | NULL      | 10        |
      | 5615_LANG_CD in Capital Letter =EN                                                                                   | -101            | -92                          | -1         | 100      | NULL      | 10        |
      | 5615_LANG_CD in Capital Letter =F                                                                                    | -101            | -92                          | -1         | 100      | NULL      | 10        |
      | 5615_LANG_CD in Capital Letter =FR                                                                                   | -101            | -92                          | -1         | 100      | NULL      | 10        |
      | 5615_LANG_CD in Small Letter = e                                                                                     | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_LANG_CD in Small Letter = en                                                                                    | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_LANG_CD in Small Letter = f                                                                                     | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_LANG_CD in Small Letter = fr                                                                                    | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_DO_NOT_SOLICIT_F = N                                                                                            | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_DO_NOT_SOLICIT_F = NULL                                                                                         | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_MRKTBLE_F = Y                                                                                                   | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_DECEASED_F=N                                                                                                    | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_MK_BK_INFO_ACCTS_EMAIL_F = Y                                                                                    | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_MK_BK_INFO_ACCTS_EMAIL_F = NULL                                                                                 | -101            | -92                          | -1         | 100      | 10        | NULL      |
      | 5615_DO_NOT_EMAIL_F=N                                                                                                | -101            | -92                          | -1         | 100      | 10        | 10        |
      | 5615_VLD_EMAIL_F=Y                                                                                                   | -101            | -92                          | -1         | 100      | 10        | 10        |
      | 5615_PRIM_EMAIL_ADDRESS != NULL                                                                                      | -101            | -92                          | -1         | 100      | 10        | 10        |
      | 5615_ACCT_ODT = NULL                                                                                                 | -101            | -92                          | -1         | NULL     | 10        | 10        |
      | 5615_PRIMARY_ACCT_HOLDER_FLAG=Y                                                                                      | -101            | -92                          | -1         | 100      | 10        | 10        |
      | 5615_INSIGHT_CD = FLG_CC_Online_Purchase_30D and CUST_INSIGHTS.CURR_VAL = 0                                          | -101            | -92                          | -1         | NULL     | 10        | 10        |
      | 5615_INSIGHT_CD = Flg_Visa_Debit_Txn_Last_7D and CUST_INSIGHTS.CURR_VAL = 1 and EVENT_DATE = 21 days of current date | -101            | -92                          | -21        | NULL     | 10        | 10        |
      | 5615_INSIGHT_CD = Flg_Visa_Debit_Txn_Last_7D and CUST_INSIGHTS.CURR_VAL = 1 and EVENT_DATE < 21 days of current date | -101            | -92                          | -20        | NULL     | 10        | 10        |
      | 5615_PROD_HIER_LEVEL_4 = Chequing Accounts AND ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A                          | -101            | -92                          | -1         | 100      | 10        | 10        |
      | 5615_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A  AND SRC_SYS_PRD_CD = 05 AND SRC_SYS_SUB_PRD_CD = 05               | -101            | -92                          | -1         | NULL     | 10        | 10        |
      | 5615_ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD = A and SCD_NUM starts with 600                                        | -101            | -92                          | -1         | NULL     | 10        | 10        |
      | 5615_5615012201_INSIGHT_MOB & SOL LOGIN < 90 DAYS_NO MOBILE WALLET TRANSACTION                                       | -101            | -92                          | -1         | 100      | 80        | 80        |
      | 5615_5615012201_INSIGHT_MOB & SOL LOGIN = 90 DAYS_NO MOBILE WALLET TRANSACTION                                       | -101            | -92                          | -2         | 100      | 90        | 90        |
      | 5615_5615012202_MOB & SOL LOGIN < 90 DAYS_NO MOBILE WALLET TRANSACTION                                               | -101            | -92                          | -3         | 100      | 80        | 80        |
      | 5615_5615012202_MOB & SOL LOGIN = 90 DAYS_NO MOBILE WALLET TRANSACTION                                               | -101            | -92                          | -4         | 100      | 90        | 90        |
      | 5615_5615012203_mob and sol > 90)                                                                                    | -101            | -92                          | -5         | 100      | 100       | 100       |
      | 5615_5615012203_mob and sol = null)                                                                                  | -101            | -92                          | -5         | 100      | NULL      | NULL      |
      | 5615_5615012203_LAST_APPLE_PAY_TXN_TMSTMP   is NOT null                                                              | -101            | -92                          | -6         | 100      | NULL      | 10        |
      | 5615_5615012203_LAST_ANDROID_PAY_TXN_TMSTMP is NOT null                                                              | -101            | -92                          | -7         | 100      | NULL      | 10        |
      | 5615_5615012203_LAST_SAMSUNG_PAY_TXN_TMSTMP is NOT null                                                              | -101            | -92                          | -8         | 100      | 10        | NULL      |
      | 5615_5615012203_LAST_SCOTIA_PAY_TXN_TMSTMP  is NOT null                                                              | -101            | -92                          | -1         | 100      | 10        | NULL      |


  @5615_Negative
  Scenario Outline: Visa Debit Acq_RS21132_5615_EMAIL Create test data "<Test cases>" for negative scenarios
    Given load data from "VISADEBITACQ" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    When write dual same account number into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" insights
    And write "<CURR_VAL_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write "<CURR_VAL_TMSTMP_Dual_Account>" for dual accounts into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event data "<EVENT_DATE>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases | CURR_VAL_TMSTMP | CURR_VAL_TMSTMP_Dual_Account | EVENT_DATE | Acct_Odt | MOB_LOGIN | SOL_LOGIN |
#      | N_5615_CUST_TP_CD!=PSNL                                                                                                | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_Primary Country Cd! = CA                                                                                        | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_Primary Country Cd = NULL                                                                                       | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_CUST_AGE =15                                                                                                    | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_CUST_AGE = NULL                                                                                                 | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_LANG_CD in Capital Letter = K                                                                                   | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_LANG_CD in Capital Letter = NE                                                                                  | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_LANG_CD in Capital Letter = NULL                                                                                | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_DO_NOT_SOLICIT_F = Y                                                                                            | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_MRKTBLE_F = N                                                                                                   | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_MRKTBLE_F = NULL                                                                                                | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_INDV_FRST_NM = NULL                                                                                             | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_DO_NOT_EMAIL_F= Y                                                                                               | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_DO_NOT_EMAIL_F=NULL                                                                                             | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_VLD_EMAIL_F=N                                                                                                   | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_VLD_EMAIL_F=NULL                                                                                                | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_PRIM_EMAIL_ADDRESS = NULL                                                                                       | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_DECEASED_F= Y                                                                                                   | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_DECEASED_F= NULL                                                                                                | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_MK_BK_INFO_ACCTS_EMAIL_F = N                                                                                    | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_PRD_CD=01,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=01,SUB_PRD_CD=02_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=01,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=01,SUB_PRD_CD=04_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=02,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=02,SUB_PRD_CD=02_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=02,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 80       | 10        | 10        |
#      | N_5615_PRD_CD=19,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 80       | 10        | 10        |
#      | N_5615_PRD_CD=19,SUB_PRD_CD=02_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 80       | 10        | 10        |
#      | N_5615_PRD_CD=19,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 80       | 10        | 10        |
#      | N_5615_PRD_CD=19,SUB_PRD_CD=04_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 80       | 10        | 10        |
#      | N_5615_PRD_CD=19,SUB_PRD_CD=07_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 80       | 10        | 10        |
#      | N_5615_PRD_CD=19,SUB_PRD_CD=08_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 80       | 10        | 10        |
#      | N_5615_PRD_CD=13,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 80       | 10        | 10        |
#      | N_5615_PRD_CD=13,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 80       | 10        | 10        |
#      | N_5615_PRD_CD=13,SUB_PRD_CD=07_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=13,SUB_PRD_CD=08_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=07,SUB_PRD_CD=11_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=07,SUB_PRD_CD=12_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=23,SUB_PRD_CD=01_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRD_CD=23,SUB_PRD_CD=03_ACCT_ODT<=90 days                                                                       | -100            | -101                         | -1         | 90       | 10        | 10        |
#      | N_5615_PRIMARY_ACCT_HOLDER_FLAG = N                                                                                    | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                                                 | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_INSIGHT_CD ! = FLG_CC_Online_Purchase_30D and CURR_VAL = 0                                                      | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_INSIGHT_CD  = FLG_CC_Online_Purchase_30D and CURR_VAL ! = 0                                                     | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_INSIGHT_CD != Flg_Visa_Debit_Txn_Last_7D and CURR_VAL = 1 and EVENT_DATE<= 21 days                              | -100            | -101                         | -15        | 100      | 10        | 10        |
#      | N_5615_INSIGHT_CD = Flg_Visa_Debit_Txn_Last_7D and CURR_VAL != 1 and EVENT_DATE<= 21 days                              | -100            | -101                         | -15        | 100      | 10        | 10        |
#      | N_5615_INSIGHT_CD = Flg_Visa_Debit_Txn_Last_7D and CURR_VAL = 1 and EVENT_DATE > 21 days                               | -100            | -101                         | -22        | 100      | 10        | 10        |
#      | N_5615_PROD_HIER_LEVEL_4 ! = Chequing Accounts AND ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A                        | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_PROD_HIER_LEVEL_4  = Chequing Accounts AND ACCT_SUBSYS_ID ! = BB AND SRC_ACCT_STAT_CD = A                       | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_PROD_HIER_LEVEL_4  = Chequing Accounts AND ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD ! = A                       | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_ACCT_SUBSYS_ID ! = BB AND SRC_ACCT_STAT_CD = A  AND SRC_SYS_PRD_CD = 05 AND SRC_SYS_SUB_PRD_CD = 05             | -100            | -101                         | -1         | NULL     | 10        | 10        |
#      | N_5615_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD ! = A  AND SRC_SYS_PRD_CD = 05 AND SRC_SYS_SUB_PRD_CD = 05             | -100            | -101                         | -1         | NULL     | 10        | 10        |
#      | N_5615_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A  AND SRC_SYS_PRD_CD ! = 05 AND SRC_SYS_SUB_PRD_CD = 05             | -100            | -101                         | -1         | NULL     | 10        | 10        |
#      | N_5615_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A  AND SRC_SYS_PRD_CD = 05 AND SRC_SYS_SUB_PRD_CD ! = 05             | -100            | -101                         | -1         | NULL     | 10        | 10        |
#      | N_5615_ACCT_SUBSYS_ID ! = AC and EDW_ACCT_STAT_CD = A and SCD_NUM starts with 600                                      | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD ! = A and SCD_NUM starts with 600                                      | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD = A and SCD_NUM starts with ! 600                                      | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_5615012201_Insight and MOB && SOL_LOGIN >90 and no mobile wallet transaction                                    | -100            | -101                         | -1         | 100      | 95        | 95        |
#      | N_5615_5615012201_Insight and MOB && SOL_LOGIN <90 had mobile wallet transaction                                       | -100            | -101                         | -1         | 100      | 80        | 80        |
#      | N_5615_5615012201_Insight and MOB && SOL_LOGIN =90 had mobile wallet transaction                                       | -100            | -101                         | -1         | 100      | 90        | 90        |
#      | N_5615_5615012201_Digitally Active and had no mobile wallet transaction and no insight                                 | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_5615012202_Insight and MOB && SOL_LOGIN >90 and no mobile wallet transaction                                    | -100            | -101                         | -1         | 100      | 95        | 95        |
#      | N_5615_5615012202_Insight and MOB && SOL_LOGIN <90 had mobile wallet transaction                                       | -100            | -101                         | -1         | 100      | 80        | 80        |
#      | N_5615_5615012202_Insight and MOB && SOL_LOGIN =90 had mobile wallet transaction                                       | -100            | -101                         | -1         | 100      | 90        | 90        |
#      | N_5615_5615012202_Digitally Active and had no mobile wallet transaction and no insight                                 | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_5615012201_5615012201_Digitally Active and had no mobile wallet transaction device tp!=ios or android           | -100            | -101                         | -1         | 100      | 10        | 10        |
#      | N_5615_5615012203_MOB && SOL_LOGIN >  90 and had mobile wallet transaction and no insight                              | -100            | -101                         | -1         | 100      | 100       | 100       |
#      | N_5615_5615012203_INSIGHT _MOB && SOL_LOGIN = 90 and had no mobile wallet transaction                                  | -100            | -101                         | -1         | 100      | 90        | 90        |
#      | N_5615_5615012203_INSIGHT _MOB && SOL_LOGIN < 90 and had no mobile wallet transaction                                  | -100            | -101                         | -1         | 100      | 80        | 80        |
#      | N_5615_5615012204_LAST_VD_VPOS_TXN_TMSTMP and LAST_VD_OPOS_TXN_TMSTMP > 90 days and had insight                        | -100            | -101                         | -1         | 100      | 10        | 10        |

  @5615_Segment4
  Scenario Outline: Visa Debit Acq_RS21132_5615_EMAIL Create test data "<Test cases>" for positive scenarios of segment 4
    Given load data from "VISADEBITACQ" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write "<CURR_VAL_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event data "<EVENT_DATE>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                                                | CURR_VAL_TMSTMP | EVENT_DATE | Acct_Odt | MOB_LOGIN | SOL_LOGIN |
      | 5615_LAST_VD_VPOS_TXN_TMSTMP >90 days && LAST_VD_OPOS_TXN_TMSTMP = NULL from current date | -101            | NULL       | 100      | 10        | 10        |
      | 5615_LAST_VD_OPOS_TXN_TMSTMP > 90 days && LAST_VD_VPOS_TXN_TMSTMP =NULL from current date | -100            | NULL       | 100      | 10        | 10        |
      | N_5615_5615012204_LAST_VD_VPOS_TXN_TMSTMP>90 days && LAST_VD_OPOS_TXN_TMSTMP < 90 days    | -101            | NULL       | 100      | 10        | 10        |
      | N_5615_5615012204_LAST_VD_OPOS_TXN_TMSTMP>90 days && LAST_VD_VPOS_TXN_TMSTMP < 90 days    | -101            | NULL       | 100      | 10        | 10        |
      | N_5615_5615012204_LAST_VD_VPOS_TXN_TMSTMP < 90                                            | -100            | NULL       | 100      | 10        | 10        |
      | N_5615_5615012204_LAST_VD_VPOS_TXN_TMSTMP = 90                                            | -101            | NULL       | 100      | 10        | 10        |
      | N_5615_5615012204_LAST_VD_OPOS_TXN_TMSTMP < 90                                            | -100            | NULL       | 100      | 10        | 10        |
      | N_5615_5615012204_LAST_VD_OPOS_TXN_TMSTMP = 90                                            | -101            | NULL       | 100      | 10        | 10        |

  @5615_Positive_NotActiveAccount
  Scenario Outline: Visa Debit Acq_RS21132_5615_EMAIL Create test data "<Test cases>" for positive scenarios
    Given load data from "VISADEBITACQ" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    When write dual same account number into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" insights
    And write "<CURR_VAL_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write "<CURR_VAL_TMSTMP_Dual_Account>" for dual accounts into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event data "<EVENT_DATE>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases                                 | CURR_VAL_TMSTMP | CURR_VAL_TMSTMP_Dual_Account | EVENT_DATE | Acct_Odt | MOB_LOGIN | SOL_LOGIN |
      | 5615_ACCT_ODT < 90 and SRC_ACCT_STAT_CD!=A | -101            | -92                          | -1         | 100      | 10        | 10        |
