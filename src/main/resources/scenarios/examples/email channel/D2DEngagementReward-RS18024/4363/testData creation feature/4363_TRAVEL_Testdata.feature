Feature: Test data creation for D2D Engagement Reward TRAVEL


#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementReward @D2DEngagementReward_Positive_TestData_TRAVEL @Workstream-4 @4363 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4363_EMAIL Create test data for positive test cases
    Given load data from "Reward" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases                                           | Acct_Odt |
      | 4363_ISSUE = Engagement and Group = D2D              | 42       |
#      | 4363_PRIM_CNTRY_CD= CA                               | 42       |
#      | 4363_CUST_TP_CD=PSNL                                 | 42       |
#      | 4363_DO_NOT_SOLICIT_F=N                              | 42       |
#      | 4363_DO_NOT_SOLICIT_F= Null                          | 42       |
#      | 4363_LANG_CD=E                                       | 42       |
#      | 4363_LANG_CD=EN                                      | 42       |
#      | 4363_LANG_CD=F                                       | 42       |
#      | 4363_LANG_CD=FR                                      | 42       |
#      | 4363_LANG_CD small case =e                           | 42       |
#      | 4363_LANG_CD small case =en                          | 42       |
#      | 4363_LANG_CD small case =f                           | 42       |
#      | 4363_LANG_CD small case =fr                          | 42       |
#      | 4363_CUST_AGE_Greater than 16                        | 42       |
#      | 4363_CUST_AGE_Equal to 16                            | 42       |
#      | 4363_CUST_AGE!=NULL                                  | 42       |
#      | 4363_Do not Email Flag=N                             | 42       |
#      | 4363_INDV_FRST_NM Is NOT NULL                        | 42       |
#      | 4363_INDV_FRST_NM!=NULL                              | 42       |
#      | 4363_INDV_LAST_NM Is NOT NULL                        | 42       |
#      | 4363_INDV_LAST_NM!=NULL                              | 42       |
#      | 4363_VLD_EMAIL_F=Y                                   | 42       |
#      | 4363_Prv_Bnk_Ind=N                                   | 42       |
#      | 4363_Deceased_F=N                                    | 42       |
#      | 4363_EMPLOYEE_STAFF_F=N                              | 42       |
#      | 4363_EMPLOYEE_STAFF_F=Null                           | 42       |
#      | 4363_PRD CD- 01, SUB PRD CD -01, REWARD_TP=T         | 42       |
#      | 4363_PRD CD- 01, SUB PRD CD -02, REWARD_TP=T         | 42       |
#      | 4363_PRD CD- 01, SUB PRD CD -03, REWARD_TP=T         | 42       |
#      | 4363_PRD CD- 01, SUB PRD CD -04, REWARD_TP=T         | 42       |
#      | 4363_PRD CD-02, SUB PRD CD -01, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-02, SUB PRD CD -02, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-02, SUB PRD CD -03, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-13, SUB PRD CD -01, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-13, SUB PRD CD -03, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-13, SUB PRD CD -07, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-13, SUB PRD CD -08, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-07, SUB PRD CD -11, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-07, SUB PRD CD -12, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-19, SUB PRD CD -01, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-19, SUB PRD CD -02, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-19, SUB PRD CD -03, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-19, SUB PRD CD -04, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-19, SUB PRD CD -07, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-19, SUB PRD CD -08, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-23, SUB PRD CD -01, REWARD_TP=T          | 42       |
#      | 4363_PRD CD-23, SUB PRD CD -03, REWARD_TP=T          | 42       |
#      | 4363_SRC_ACCT_STAT_CD-A                              | 42       |
#      | 4363_ACCT_SUBSYS_ID=BB                               | 42       |
#      | 4363_PRIM_EMAIL_ADDR !=NULL                          | 42       |
#      | 4363_Account Open Date equal to 42 days              | 42       |
#      | 4363_Account Open Date equal to 45 days              | 45       |
#      | 4363_Account Open Date equal to 43 days(>42 and <45) | 43       |
#      | 4363_CC_VIP_IND !=2and9                              | 42       |
#      | 4363_CC_VIP_IND = NULL                               | 42       |
#      | 4363_Primary_Acct_Holder_Flag=Y                      | 42       |
#      | 4363_REWARD_TP=T                                     | 42       |



  @D2DEngagementReward_NegativeTestData @D2DEngagementRewardNegativeTestData_TRAVEL @Workstream-4 @4363 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4363_EMAIL Create test data for Negative test cases
    Given load data from "Reward" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases                                    | Acct_Odt |
      | N_4363_PRIM_CNTRY_CD!=CA Eg:- AC              | 42       |
      | N_4363_PRIM_CNTRY_CD=Null                     | 42       |
      | N_4363_CUST_TP_CD != PSNL (Eg:- Non_PSNL)     | 42       |
      | N_4363_CUST_TP_CD =  Null                     | 42       |
      | N_4363_DO_NOT_SOLICIT_F= Y                    | 42       |
      | N_4363_CUST_AGE_ Equal to 15                  | 42       |
      | N_4363_CUST_AGE_Equal to Null                 | 42       |
      | N_4363_CUST_AGE_ with in range (1-14)         | 42       |
      | N_4363_PRD CD- 01, SUB PRD CD -08             | 42       |
      | N_4363_PRD CD- 02, SUB PRD CD -04             | 42       |
      | N_4363_PRD CD- 07, SUB PRD CD -08             | 42       |
      | N_4363_PRD CD- 13, SUB PRD CD -12             | 42       |
      | N_4363_PRD CD-18, SUB PRD CD -01              | 42       |
      | N_4363_PRD CD-18, SUB PRD CD -07              | 42       |
      | N_4363_PRD CD-18, SUB PRD CD -03              | 42       |
      | N_4363_PRD CD- 18, SUB PRD CD -02             | 42       |
      | N_4363_PRD CD- 19, SUB PRD CD -11             | 42       |
      | N_4363_PRD CD-23, SUB PRD CD -02              | 42       |
      | N_4363_SRC_ACCT_STAT_CD-B                     | 42       |
      | N_4363_SRC_ACCT_STAT_CD-Null                  | 42       |
      | N_4363_Account Open Date greater than 45 days | 49       |
      | N_4363_Account Open Date equal to Null        | NULL     |
      | N_4363_Account Open Date less than 42         | 39       |
      | N_4363_Deceased_F=Y                           | 42       |
      | N_4363_Deceased_F=Null                        | 42       |
      | N_4363_LANG_CD=K                              | 42       |
      | N_4363_LANG_CD=NE                             | 42       |
      | N_4363_LANG_CD=Null                           | 42       |
      | N_4363_EMPLOYEE_STAFF_F=Y                     | 42       |
      | N_4363_ACCT_SUBSYS_ID_KS                      | 42       |
      | N_4363_Prv_Bnk_Ind=Null                       | 42       |
      | N_4363_Prv_Bnk_Ind=Y                          | 42       |
      | N_4363_Do not Email Flag=Y                    | 42       |
      | N_4363_INDV_FRST_NM=NULL                      | 42       |
      | N_4363_INDV_FRST_NM=NULL                      | 42       |
      | N_4363_INDV_LAST_NM=NULL                      | 42       |
      | N_4363_INDV_LAST_NM=NULL                      | 42       |
      | N_4363_VLD_EMAIL_F=N                          | 42       |
      | N_4363_PRIM_EMAIL_ADDR =NULL                  | 42       |
      | N_4363_CC_VIP_IND = 2                         | 42       |
      | N_4363_CC_VIP_IND = 9                         | 42       |
      | N_4363_Primary_Acct_Holder_Flag=N             | 42       |
      | N_4363_Primary_Acct_Holder_Flag=NULL          | 42       |
      | N_4363_REWARD_TP=A                            | 42       |
      | N_4363_REWARD_TP=NULL                         | 42       |
