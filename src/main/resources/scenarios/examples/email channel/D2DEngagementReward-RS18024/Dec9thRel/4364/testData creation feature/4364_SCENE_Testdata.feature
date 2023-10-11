Feature: Test data creation for D2D Engagement Reward SCENE And TRAVEL

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementReward @D2DEngagementReward_Positive_TestData_SCENE_TRAVEL @Workstream-4 @4364 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4364_Travel And Scene_EMAIL Create test data for positive test cases
    Given load data from "Reward" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<Arrival_Dt_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases                                              | Arrival_Dt_Val | ACCT_ODT_Val | Acct_Cnt |
#      | 4364_ISSUE = Engagement and Group = D2D                 | 45             | 33,33       | 2        |
#      | 4364_PRIM_CNTRY_CD= CA                                  | 45             | 33,33       | 2        |
#      | 4364_CUST_TP_CD=PSNL                                    | 45             | 33,33       | 2        |
#      | 4364_DO_NOT_SOLICIT_F=N                                 | 45             | 33,33       | 2        |
#      | 4364_DO_NOT_SOLICIT_F= Null                             | 45             | 33,33       | 2        |
#      | 4364_LANG_CD=E                                          | 45             | 33,33       | 2        |
#      | 4364_LANG_CD=EN                                         | 45             | 33,33       | 2        |
#      | 4364_LANG_CD=F                                          | 45             | 33,33       | 2        |
#      | 4364_LANG_CD=FR                                         | 45             | 33,33       | 2        |
#      | 4364_Language Code as small case=e                      | 45             | 33,33       | 2        |
#      | 4364_Language Code as small case=en                     | 45             | 33,33       | 2        |
#      | 4364_Language Code as small case=f                      | 45             | 33,33       | 2        |
#      | 4364_Language Code as small case=fr                     | 45             | 33,33       | 2        |
#      | 4364_CUST_AGE_Greater than 16                           | 45             | 33,33       | 2        |
#      | 4364_CUST_AGE_Equal to 16                               | 45             | 33,33       | 2        |
#      | 4364_Do not Email Flag=N                                | 45             | 33,33       | 2        |
#      | 4364_INDV_FRST_NM!=NULL                                 | 45             | 33,33       | 2        |
#      | 4364_INDV_LAST_NM!=NULL                                 | 45             | 33,33       | 2        |
#      | 4364_VLD_EMAIL_F=Y                                      | 45             | 33,33       | 2        |
#      | 4364_Deceased_F=N                                       | 45             | 33,33       | 2        |
#      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=S_13_03 | 45             | 33,33       | 2        |
#      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=T_13_03 | 1825           | 33,33       | 2        |
#      | 4364_REWARD_TP=S                                        | 45             | 33,33       | 2        |
#      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=S_07_11 | 45             | 33,33       | 2        |
#      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=T_07_11 | 45             | 33,33       | 2        |
#      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=S_23_01 | 45             | 33,33       | 2        |
#      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=T_23_01 | 45             | 33,33       | 2        |
#      | 4364_PRD CD-13, SUB PRD CD -01, REWARD_TP=S             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-13, SUB PRD CD -01, REWARD_TP=T             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-13, SUB PRD CD -03, REWARD_TP=S             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-13, SUB PRD CD -03, REWARD_TP=T             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-13, SUB PRD CD -07, REWARD_TP=S             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-13, SUB PRD CD -07, REWARD_TP=T             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-13, SUB PRD CD -08, REWARD_TP=S             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-13, SUB PRD CD -08, REWARD_TP=T             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-07, SUB PRD CD -11, REWARD_TP=S             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-07, SUB PRD CD -11, REWARD_TP=T             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-07, SUB PRD CD -12, REWARD_TP=S             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-07, SUB PRD CD -12, REWARD_TP=T             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-23, SUB PRD CD -01, REWARD_TP=S             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-23, SUB PRD CD -01, REWARD_TP=T             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-23, SUB PRD CD -03, REWARD_TP=S             | 45             | 33,33       | 2        |
#      | 4364_PRD CD-23, SUB PRD CD -03, REWARD_TP=T             | 45             | 33,33       | 2        |
#      | 4364_SRC_ACCT_STAT_CD-A                                 | 45             | 33,33       | 2        |
#      | 4364_ACCT_SUBSYS_ID=BB                                  | 45             | 33,33       | 2        |
#      | 4364_PRIM_EMAIL_ADDR !=NULL                             | 45             | 33,33       | 2        |
#      | 4364_Account Open Date equal to 32 days              | 45             | 32,32       | 2        |
#      | 4364_Account Open Date equal to 35 days                 | 45             | 35,35        | 2        |
#      | 4364_Account Open Date equal to 33 days(>32 and <35) | 45             | 33,33        | 2        |
#      | 4364_CC_VIP_IND !=2and9                                 | 45             | 33,33       | 2        |
#      | 4364_CC_VIP_IND = NULL                                  | 45             | 33,33       | 2        |
#      | 4364_Primary_Acct_Holder_Flag=Y                         | 45             | 33,33       | 2        |
#      | 4364_Prv_Bnk_Ind=N                                      | 45             | 33,33       | 2        |
#      | 4364_EMPLOYEE_STAFF_F=N                                 | 45             | 33,33       | 2        |
#      | 4364_EMPLOYEE_STAFF_F=Null                              | 45             | 33,33       | 2        |
#      | 4364_Prv_Bnk_Ind=Null                                   | 45             | 33,33       | 2        |
#      | 4364_Prv_Bnk_Ind=Y                                      | 45             | 33,33       | 2        |
#      | 4364_EMPLOYEE_STAFF_F=Y                                 | 45             | 33,33       | 2        |
#      | 4364_NOT_AML_KYC !=Y                                    | 45             | 33,33       | 2        |
#      | 4364_NOT_AML_KYC = NULL                                 | 45             | 33,33       | 2        |
#      | N-4364_NOT_AML_KYC = Y                                  | 45             | 33,33       | 2        |

#      | 4364_NTC_ARRV_DT_eq_5years                                | 1826           | 33,33       | 2        |
      | 4364_NTC_ARRV_DT_gt_5years                                | 1827           | 33,33       | 2        |
#      | 4364_NTC_ARRV_DT_eq_NULL                                | NULL           | 33,33       | 2        |

  @D2DEngagementReward @D2DEngagementReward_Negative_TestData_SCENE_TRAVEL @Workstream-4 @4364 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4364_Travel And Scene_EMAIL Create test data for Negative test cases
    Given load data from "Reward" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts

#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "2" records

    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                | Acct_Odt |
#      | N_4364_PRIM_CNTRY_CD!=CA Eg:- AC                          | 33,33       |
#      | N_4364_PRIM_CNTRY_CD=Null                                 | 33       |
#      | N_4364_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                 | 33       |
#      | N_4364_CUST_TP_CD =  Null                                 | 33       |
#      | N_4364_DO_NOT_SOLICIT_F= Y                                | 33       |
#      | N_4364_Indv_Brth_Dt Equal to 15                           | 33       |
#      | N_4364_Indv_Brth_Dt Equal to Null                         | 33       |
#      | N_4364_Indv_Brth_Dt with in range (1-14)                  | 33       |
#      | N_4364_PRD CD- 07, SUB PRD CD -08                         | 33       |
#      | N_4364_PRD CD- 13, SUB PRD CD -12                         | 33       |
#      | N_4364_PRD CD-18, SUB PRD CD -01                          | 33       |
#      | N_4364_PRD CD-18, SUB PRD CD -07                          | 33       |
#      | N_4364_PRD CD-18, SUB PRD CD -03                          | 33       |
#      | N_4364_PRD CD- 18, SUB PRD CD -02                         | 33       |
#      | N_4364_PRD CD-23, SUB PRD CD -02                          | 33       |
#      | N_4364_PRD CD- 01, SUB PRD CD -01, REWARD_TP=S            | 33       |
#      | N_4364_PRD CD- 01, SUB PRD CD -01, REWARD_TP=T            | 33       |
#      | N_4364_PRD CD- 01, SUB PRD CD -02, REWARD_TP=S            | 33       |
#      | N_4364_PRD CD- 01, SUB PRD CD -02, REWARD_TP=T            | 33       |
#      | N_4364_PRD CD- 01, SUB PRD CD -03, REWARD_TP=S            | 33       |
#      | N_4364_PRD CD- 01, SUB PRD CD -03, REWARD_TP=T            | 33       |
#      | N_4364_PRD CD- 01, SUB PRD CD -04, REWARD_TP=S            | 33       |
#      | N_4364_PRD CD- 01, SUB PRD CD -04, REWARD_TP=T            | 33       |
#      | N_4364_PRD CD-02, SUB PRD CD -01, REWARD_TP=S             | 33       |
#      | N_4364_PRD CD-02, SUB PRD CD -01, REWARD_TP=T             | 33       |
#      | N_4364_PRD CD-02, SUB PRD CD -02, REWARD_TP=S             | 33       |
#      | N_4364_PRD CD-02, SUB PRD CD -02, REWARD_TP=T             | 33       |
#      | N_4364_PRD CD-02, SUB PRD CD -03, REWARD_TP=S             | 33       |
#      | N_4364_PRD CD-02, SUB PRD CD -03, REWARD_TP=T             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -01, REWARD_TP=S             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -01, REWARD_TP=T             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -02, REWARD_TP=S             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -02, REWARD_TP=T             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -03, REWARD_TP=S             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -03, REWARD_TP=T             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -04, REWARD_TP=S             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -04, REWARD_TP=T             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -07, REWARD_TP=S             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -07, REWARD_TP=T             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -08, REWARD_TP=S             | 33       |
#      | N_4364_PRD CD-19, SUB PRD CD -08, REWARD_TP=T             | 33       |
#      | N_4364_SRC_ACCT_STAT_CD-B                                 | 33       |
#      | N_4364_SRC_ACCT_STAT_CD-Null                              | 33       |
#      | N_4364_Account Open Date greater than 35 days             | 36       |
#      | N_4364_Account Open Date equal to Null                    | NULL     |
#      | N_4364_Account Open Date less than 32                     | 31       |
#      | N_4364_Deceased_F=Y                                       | 33       |
#      | N_4364_Deceased_F=Null                                    | 33       |
#      | N_4364_LANG_CD=K                                          | 33       |
#      | N_4364_LANG_CD=NE                                         | 33       |
#      | N_4364_LANG_CD=Null                                       | 33       |
#      | N_4364_ACCT_SUBSYS_ID=KS                                  | 33       |
#      | N_4364_Do not Email Flag=Y                                | 33       |
#      | N_4364_INDV_FRST_NM=NULL                                  | 33       |
#      | N_4364_INDV_LAST_NM=NULL                                  | 33       |
#      | N_4364_VLD_EMAIL_F=N                                      | 33       |
#      | N_4364_PRIM_EMAIL_ADDR =NULL                              | 33       |
#      | N_4364_CC_VIP_IND = 2                                     | 33       |
#      | N_4364_CC_VIP_IND = 9                                     | 33       |
#      | N_4364_Primary_Acct_Holder_Flag=N                         | 33       |
#      | N_4364_Primary_Acct_Holder_Flag=NULL                      | 33       |
#      | N_4364_REWARD_TP=A                                        | 33       |
#      | N_4364_REWARD_TP=NULL                                     | 33       |
#      | N_4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=S_01_01 | 33       |
#      | N_4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=T_01_01 | 33       |
#      | N_4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=S_02_01 | 33       |
#      | N_4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=T_02_01 | 33       |
#      | N_4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=S_19_01 | 33       |
#      | N_4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=T_19_01 | 33       |


  @D2DEngagementReward @D2DEngagementRewardNegativeSingleBBAccTestData_SCENE_Travel @Workstream-4 @4364 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4364_EMAIL Create test data for Single Account Negative testcases
    Given load data from "Reward" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "1" records

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases               | Acct_Odt |
      | N_4364_NONNTC_ONLYBB_ACC | 33       |
      | N_4364_NTC_ONLYBB_ACC    | 33       |

  @D2DEngagementReward @D2DEngagementReward_TwoACAccounts_TestData_Priority @Workstream-4 @4364 @4366 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4364_Travel And Scene_EMAIL Create test data for two AC Accounts Priority test cases
    Given load data from "Reward" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts

#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "3" records

    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases             | Acct_Odt |
      | 4364_PriotiseOver_4366 | 33       |

  @D2DEngagementReward @D2DEngagementReward_PosNeg_AFIL  @Workstream-4 @4364 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4364_Travel And Scene_EMAIL Create test data for AFIL exclusion test cases
    Given load data from "Reward" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts

    And  write Dual account odt "<Acct_Odt>""<Dual_Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts

    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                                                                                | Acct_Odt | Dual_Acct_Odt |
      | 4364_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 33       | 170           |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 33       | 170           |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      | 33       | 170           |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   | 33       | 170           |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months | 33       | 170           |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     | 33       | 181           |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         | 33       | NULL          |
      | N-4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT < 6 months   | 33       | 179           |
      | N-4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = 6 months   | 33       | 180           |
