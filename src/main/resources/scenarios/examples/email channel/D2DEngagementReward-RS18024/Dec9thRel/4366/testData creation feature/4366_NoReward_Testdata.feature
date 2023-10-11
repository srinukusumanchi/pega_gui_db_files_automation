Feature: Test data creation for D2D Engagement Reward NoReward

  @D2DEngagementReward @D2DEngagementReward_Positive_TestData_NoRewardLatest @Workstream-4 @4366 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4366_No Reward_EMAIL Create test data for positive test cases
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
      | Test cases                                              | ACCT_ODT_Val | Acct_Cnt | Arrival_Dt_Val |
#      | 4366_ISSUE = Engagement and Group = D2D                 | 33,33        | 2        | 45             |
#      | 4366_PRIM_CNTRY_CD= CA                                  | 33,33        | 2        | 45             |
#      | 4366_CUST_TP_CD=PSNL                                    | 33,33        | 2        | 45             |
#      | 4366_DO_NOT_SOLICIT_F=N                                 | 33,33        | 2        | 45             |
#      | 4366_DO_NOT_SOLICIT_F= Null                             | 33,33        | 2        | 45             |
#      | 4366_LANG_CD=E                                          | 33,33        | 2        | 45             |
#      | 4366_LANG_CD=EN                                         | 33,33        | 2        | 45             |
#      | 4366_LANG_CD=F                                          | 33,33        | 2        | 45             |
#      | 4366_LANG_CD=FR                                         | 33,33        | 2        | 45             |
#      | 4366_Language Code as small case=e                      | 33,33        | 2        | 45             |
#      | 4366_Language Code as small case=en                     | 33,33        | 2        | 45             |
#      | 4366_Language Code as small case=f                      | 33,33        | 2        | 45             |
#      | 4366_Language Code as small case=fr                     | 33,33        | 2        | 45             |
#      | 4366_CUST_AGE_Greater than 16                           | 33,33        | 2        | 45             |
#      | 4366_CUST_AGE_Equal to 16                               | 33,33        | 2        | 45             |
#      | 4366_Do not Email Flag=N                                | 33,33        | 2        | 45             |
#      | 4366_INDV_FRST_NM!=NULL                                 | 33,33        | 2        | 45             |
#      | 4366_INDV_LAST_NM!=NULL                                 | 33,33        | 2        | 45             |
#      | 4366_VLD_EMAIL_F=Y                                      | 33,33        | 2        | 45             |
#      | 4366_Prv_Bnk_Ind=N                                      | 33,33        | 2        | 45             |
#      | 4366_Deceased_F=N                                       | 33,33        | 2        | 45             |
#      | 4366_EMPLOYEE_STAFF_F=N                                 | 33,33        | 2        | 45             |
#      | 4366_EMPLOYEE_STAFF_F=Null                              | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -01, REWARD_TP=X             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -03, REWARD_TP=X             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -07, REWARD_TP=X             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -08, REWARD_TP=X             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-07, SUB PRD CD -11, REWARD_TP=X             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-07, SUB PRD CD -12, REWARD_TP=X             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-23, SUB PRD CD -01, REWARD_TP=X             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-23, SUB PRD CD -03, REWARD_TP=X             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -01, REWARD_TP=L             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -03, REWARD_TP=L             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -07, REWARD_TP=L             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -08, REWARD_TP=L             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-07, SUB PRD CD -11, REWARD_TP=L             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-07, SUB PRD CD -12, REWARD_TP=L             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-23, SUB PRD CD -01, REWARD_TP=L             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-23, SUB PRD CD -03, REWARD_TP=L             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -01, REWARD_TP=O             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -03, REWARD_TP=O             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -07, REWARD_TP=O             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-13, SUB PRD CD -08, REWARD_TP=O             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-07, SUB PRD CD -11, REWARD_TP=O             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-07, SUB PRD CD -12, REWARD_TP=O             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-23, SUB PRD CD -01, REWARD_TP=O             | 33,33        | 2        | 45             |
#      | 4366_PRD CD-23, SUB PRD CD -03, REWARD_TP=O             | 33,33        | 2        | 45             |
#      | 4366_SRC_ACCT_STAT_CD-A                                 | 33,33        | 2        | 45             |
#      | 4366_ACCT_SUBSYS_ID_BB                                  | 33,33        | 2        | 45             |
#      | 4366_PRIM_EMAIL_ADDR !=NULL                             | 33,33        | 2        | 45             |

## ACCT_ODT Date Range was changed to (32 - 35) in Mar 2nd 2023 Release
#      | 4366_Account Open Date equal to 32 days                 | 32 ,32       | 2        | 45             |
#      | 4366_Account Open Date equal to 35 days                 | 35,35        | 2        | 45             |
#      | 4366_Account Open Date equal to 33 days(>32 and <35)    | 33,33        | 2        | 45             |
#      | 4366_CC_VIP_IND!=2and9                                  | 33,33        | 2        | 45             |
#      | 4366_CC_VIP_IND = NULL                                  | 33,33        | 2        | 45             |
#      | 4366_Primary_Acct_Holder_Flag=Y                         | 33,33        | 2        | 45             |
#      | 4366_REWARD_TP=X                                        | 33,33        | 2        | 45             |
#      | 4366_REWARD_TP=Null                                     | 33,33        | 2        | 45             |
#      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_13_03 | 33,33        | 2        | 45             |
#      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_13_03 | 33,33        | 2        | 1825           |
#      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_07_11 | 33,33        | 2        | 45             |
#      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_07_11 | 33,33        | 2        | 45             |
#      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_23_01 | 33,33        | 2        | 45             |
#      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_23_01 | 33,33        | 2        | 45             |

#      | 4366_NTC_ARRV_DT_eq_5years                                | 33,33        | 2        | 1826           |
      | 4366_NTC_ARRV_DT_gt_5years                                | 33,33        | 2        | 1827           |
#      | 4366_NTC_ARRV_DT_eq_NULL                                | 33,33        | 2        | NULL           |


  @D2DEngagementReward @D2DEngagementReward_Negative_TestData_NoRewardLatest @Workstream-4 @4366 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4366_No reward_EMAIL Create test data for Negative test cases
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
      | Test cases | ACCT_ODT_Val | Acct_Cnt | Arrival_Dt_Val |
#      | N_4366_PRIM_CNTRY_CD!=CA Eg:- AC                          | 33,33 |2|45|
#      | N_4366_PRIM_CNTRY_CD=Null                                 | 33,33 |2|45|
#      | N_4366_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                 | 33,33 |2|45|
#      | N_4366_CUST_TP_CD =  Null                                 | 33,33 |2|45|
#      | N_4366_DO_NOT_SOLICIT_F= Y                                | 33,33 |2|45|
#      | N_4366_Indv_Brth_Dt Equal to 15                           | 33,33 |2|45|
#      | N_4366_Indv_Brth_Dt Equal to Null                         | 33,33 |2|45|
#      | N_4366_Indv_Brth_Dt with in range (1-14)                  | 33,33 |2|45|
#      | N_4366_PRD CD- 07, SUB PRD CD -08                         | 33,33 |2|45|
#      | N_4366_PRD CD- 13, SUB PRD CD -12                         | 33,33 |2|45|
#      | N_4366_PRD CD-18, SUB PRD CD -01                          | 33,33 |2|45|
#      | N_4366_PRD CD-18, SUB PRD CD -07                          | 33,33 |2|45|
#      | N_4366_PRD CD-18, SUB PRD CD -03                          | 33,33 |2|45|
#      | N_4366_PRD CD- 18, SUB PRD CD -02                         | 33,33 |2|45|
#      | N_4366_PRD CD-23, SUB PRD CD -02                          | 33,33 |2|45|
#      | N_4366_SRC_ACCT_STAT_CD-B                                 | 33,33 |2|45|
#      | N_4366_SRC_ACCT_STAT_CD-Null                              | 33,33 |2|45|
#      | N_4366_Account Open Date greater than 35 days | 36 ,36   | 2        | 45             |
#      | N_4366_Account Open Date equal to Null        | NULL     | 2        | 45             |
#      | N_4366_Account Open Date less than 32         | 31 ,31   | 2        | 45             |
#      | N_4366_Deceased_F=Y                                       | 33,33 |2|45|
#      | N_4366_Deceased_F=Null                                    | 33,33 |2|45|
#      | N_4366_LANG_CD=K                                          | 33,33 |2|45|
#      | N_4366_LANG_CD=NE                                         | 33,33 |2|45|
#      | N_4366_LANG_CD=Null                                       | 33,33 |2|45|
#      | N_4366_EMPLOYEE_STAFF_F=Y                                 | 33,33 |2|45|
#      | N_4366_ACCT_SUBSYS_ID_KS                                  | 33,33 |2|45|
#      | N_4366_Prv_Bnk_Ind=Null                                   | 33,33 |2|45|
#      | N_4366_Prv_Bnk_Ind=Y                                      | 33,33 |2|45|
#      | N_4366_Do not Email Flag=Y                                | 33,33 |2|45|
#      | N_4366_INDV_FRST_NM=NULL                                  | 33,33 |2|45|
#      | N_4366_INDV_LAST_NM=NULL                                  | 33,33 |2|45|
#      | N_4366_VLD_EMAIL_F=N                                      | 33,33 |2|45|
#      | N_4366_PRIM_EMAIL_ADDR =NULL                              | 33,33 |2|45|
#      | N_4366_CC_VIP_IND = 2                                     | 33,33 |2|45|
#      | N_4366_CC_VIP_IND = 9                                     | 33,33 |2|45|
#      | N_4366_Primary_Acct_Holder_Flag=N                         | 33,33 |2|45|
#      | N_4366_Primary_Acct_Holder_Flag=NULL                      | 33,33 |2|45|
#      | N_4366_REWARD_TP is S                                     | 33,33 |2|45|
#      | N_4366_REWARD_TP is T                                     | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -01, REWARD_TP=X            | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -02, REWARD_TP=X            | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -03, REWARD_TP=X            | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -04, REWARD_TP=X            | 33,33 |2|45|
#      | N_4366_PRD CD-02, SUB PRD CD -01, REWARD_TP=X             | 33,33 |2|45|
#      | N_4366_PRD CD-02, SUB PRD CD -02, REWARD_TP=X             | 33,33 |2|45|
#      | N_4366_PRD CD-02, SUB PRD CD -03, REWARD_TP=X             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -01, REWARD_TP=X             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -02, REWARD_TP=X             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -03, REWARD_TP=X             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -04, REWARD_TP=X             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -07, REWARD_TP=X             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -08, REWARD_TP=X             | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -01, REWARD_TP=L            | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -02, REWARD_TP=L            | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -03, REWARD_TP=L            | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -04, REWARD_TP=L            | 33,33 |2|45|
#      | N_4366_PRD CD-02, SUB PRD CD -01, REWARD_TP=L             | 33,33 |2|45|
#      | N_4366_PRD CD-02, SUB PRD CD -02, REWARD_TP=L             | 33,33 |2|45|
#      | N_4366_PRD CD-02, SUB PRD CD -03, REWARD_TP=L             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -01, REWARD_TP=L             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -02, REWARD_TP=L             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -03, REWARD_TP=L             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -04, REWARD_TP=L             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -07, REWARD_TP=L             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -08, REWARD_TP=L             | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -01, REWARD_TP=O            | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -02, REWARD_TP=O            | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -03, REWARD_TP=O            | 33,33 |2|45|
#      | N_4366_PRD CD- 01, SUB PRD CD -04, REWARD_TP=O            | 33,33 |2|45|
#      | N_4366_PRD CD-02, SUB PRD CD -01, REWARD_TP=O             | 33,33 |2|45|
#      | N_4366_PRD CD-02, SUB PRD CD -02, REWARD_TP=O             | 33,33 |2|45|
#      | N_4366_PRD CD-02, SUB PRD CD -03, REWARD_TP=O             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -01, REWARD_TP=O             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -02, REWARD_TP=O             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -03, REWARD_TP=O             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -04, REWARD_TP=O             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -07, REWARD_TP=O             | 33,33 |2|45|
#      | N_4366_PRD CD-19, SUB PRD CD -08, REWARD_TP=O             | 33,33 |2|45|
#      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=L_01_01 | 33,33 |2|45|
#      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_01_01 | 33,33 |2|45|
#      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_02_01 | 33,33 |2|45|
#      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=L_02_01 | 33,33 |2|45|
#      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_19_01 | 33,33 |2|45|
#      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_19_01 | 33,33 |2|45|


  @D2DEngagementReward @D2DEngagementRewardNegativeSingleBBAccTestData_NoRewardLatest @Workstream-4 @4366 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4366_EMAIL Create test data for Single Account Negative testcases
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
#    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
#    Then insert customer in "PURL_CUST_PROFILE" table

    Examples:
      | Test cases               | Acct_Odt |
      | N_4366_NONNTC_ONLYBB_ACC | 33,33    |
      | N_4366_NTC_ONLYBB_ACC    | 33,33    |