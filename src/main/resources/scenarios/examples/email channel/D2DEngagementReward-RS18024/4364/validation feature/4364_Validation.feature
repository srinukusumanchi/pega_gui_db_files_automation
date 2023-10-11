Feature: Validation for D2D Engagement Reward Scene

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementReward @D2DEngagementReward_Positive_Validation_Travel @Workstream-4 @4364 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward-Travel_RS18024_4364_EMAIL Validate D2D Engagement Reward-Scene offer details against IH for Positive test cases
    Given load data from "Reward" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                                                |
      | 4364_ISSUE = Engagement and Group = D2D              |
      | 4364_PRIM_CNTRY_CD= CA                               |
      | 4364_CUST_TP_CD=PSNL                                 |
      | 4364_DO_NOT_SOLICIT_F=N                              |
      | 4364_DO_NOT_SOLICIT_F= Null                          |
      | 4364_LANG_CD=E                                       |
      | 4364_LANG_CD=EN                                      |
      | 4364_LANG_CD=F                                       |
      | 4364_LANG_CD=FR                                      |
      | 4364_Language Code as small case=e                   |
      | 4364_Language Code as small case=en                  |
      | 4364_Language Code as small case=f                   |
      | 4364_Language Code as small case=fr                  |
      | 4364_CUST_AGE_Greater than 16                        |
      | 4364_CUST_AGE_Equal to 16                            |
      | 4364_CUST_AGE!=NULL                                  |
      | 4364_Do not Email Flag=N                             |
      | 4364_INDV_FRST_NM Is NOT NULL                        |
      | 4364_INDV_FRST_NM!=NULL                              |
      | 4364_INDV_LAST_NM Is NOT NULL                        |
      | 4364_INDV_LAST_NM!=NULL                              |
      | 4364_VLD_EMAIL_F=Y                                   |
      | 4364_Prv_Bnk_Ind=N                                   |
      | 4364_Deceased_F=N                                    |
      | 4364_EMPLOYEE_STAFF_F=N                              |
      | 4364_EMPLOYEE_STAFF_F=Null                           |
      | 4364_PRD CD- 01, SUB PRD CD -01, REWARD_TP=S         |
      | 4364_PRD CD- 01, SUB PRD CD -02, REWARD_TP=S         |
      | 4364_PRD CD- 01, SUB PRD CD -03, REWARD_TP=S         |
      | 4364_PRD CD- 01, SUB PRD CD -04, REWARD_TP=S         |
      | 4364_PRD CD-02, SUB PRD CD -01, REWARD_TP=S          |
      | 4364_PRD CD-02, SUB PRD CD -02, REWARD_TP=S          |
      | 4364_PRD CD-02, SUB PRD CD -03, REWARD_TP=S          |
      | 4364_PRD CD-13, SUB PRD CD -01, REWARD_TP=S          |
      | 4364_PRD CD-13, SUB PRD CD -03, REWARD_TP=S          |
      | 4364_PRD CD-13, SUB PRD CD -07, REWARD_TP=S          |
      | 4364_PRD CD-13, SUB PRD CD -08, REWARD_TP=S          |
      | 4364_PRD CD-07, SUB PRD CD -11, REWARD_TP=S          |
      | 4364_PRD CD-07, SUB PRD CD -12, REWARD_TP=S          |
      | 4364_PRD CD-19, SUB PRD CD -01, REWARD_TP=S          |
      | 4364_PRD CD-19, SUB PRD CD -02, REWARD_TP=S          |
      | 4364_PRD CD-19, SUB PRD CD -03, REWARD_TP=S          |
      | 4364_PRD CD-19, SUB PRD CD -04, REWARD_TP=S          |
      | 4364_PRD CD-19, SUB PRD CD -07, REWARD_TP=S          |
      | 4364_PRD CD-19, SUB PRD CD -08, REWARD_TP=S          |
      | 4364_PRD CD-23, SUB PRD CD -01, REWARD_TP=S          |
      | 4364_PRD CD-23, SUB PRD CD -03, REWARD_TP=S          |
      | 4364_SRC_ACCT_STAT_CD-A                              |
      | 4364_ACCT_SUBSYS_ID=BB                               |
      | 4364_PRIM_EMAIL_ADDR !=NULL                          |
      | 4364_Account Open Date equal to 42 days              |
      | 4364_Account Open Date equal to 45 days              |
      | 4364_Account Open Date equal to 43 days(>42 and <45) |
      | 4364_CC_VIP_IND !=2and9                              |
      | 4364_CC_VIP_IND = NULL                               |
      | 4364_Primary_Acct_Holder_Flag=Y                      |
      | 4364_REWARD_TP=S                                     |




  @D2DEngagementReward @D2DEngagementReward-Travel_Negative_Validation @Workstream-4 @4364 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward-Travel_RS18024_4364_EMAIL Verify D2D Engagement Reward-Scene offer details are not displayed in IH for Negative test cases
    Given load data from "Reward" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                              |
      | N_4364_PRIM_CNTRY_CD!=CA Eg:- AC              |
      | N_4364_PRIM_CNTRY_CD=Null                     |
      | N_4364_CUST_TP_CD != PSNL (Eg:- Non_PSNL)     |
      | N_4364_CUST_TP_CD =  Null                     |
      | N_4364_DO_NOT_SOLICIT_F= Y                    |
      | N_4364_Indv_Brth_Dt Equal to 15               |
      | N_4364_Indv_Brth_Dt Equal to Null             |
      | N_4364_Indv_Brth_Dt with in range (1-14)      |
      | N_4364_PRD CD- 01, SUB PRD CD -08             |
      | N_4364_PRD CD- 02, SUB PRD CD -04             |
      | N_4364_PRD CD- 07, SUB PRD CD -08             |
      | N_4364_PRD CD- 13, SUB PRD CD -12             |
      | N_4364_PRD CD-18, SUB PRD CD -01              |
      | N_4364_PRD CD-18, SUB PRD CD -07              |
      | N_4364_PRD CD-18, SUB PRD CD -03              |
      | N_4364_PRD CD- 18, SUB PRD CD -02             |
      | N_4364_PRD CD- 19, SUB PRD CD -11             |
      | N_4364_PRD CD-23, SUB PRD CD -02              |
      | N_4364_SRC_ACCT_STAT_CD-B                     |
      | N_4364_SRC_ACCT_STAT_CD-Null                  |
      | N_4364_Account Open Date greater than 45 days |
      | N_4364_Account Open Date equal to Null        |
      | N_4364_Account Open Date less than 42         |
      | N_4364_Deceased_F=Y                           |
      | N_4364_Deceased_F=Null                        |
      | N_4364_LANG_CD=K                              |
      | N_4364_LANG_CD=NE                             |
      | N_4364_LANG_CD=Null                           |
      | N_4364_EMPLOYEE_STAFF_F=Y                     |
      | N_4364_ACCT_SUBSYS_ID=KS                      |
      | N_4364_Prv_Bnk_Ind=Null                       |
      | N_4364_Prv_Bnk_Ind=Y                          |
      | N_4364_Do not Email Flag=Y                    |
      | N_4364_INDV_FRST_NM=NULL                      |
      | N_4364_INDV_FRST_NM=NULL                      |
      | N_4364_INDV_LAST_NM=NULL                      |
      | N_4364_INDV_LAST_NM=NULL                      |
      | N_4364_VLD_EMAIL_F=N                          |
      | N_4364_PRIM_EMAIL_ADDR =NULL                  |
      | N_4364_CC_VIP_IND = 2                         |
      | N_4364_CC_VIP_IND = 9                         |
      | N_4364_Primary_Acct_Holder_Flag=N             |
      | N_4364_Primary_Acct_Holder_Flag=NULL          |
      | N_4364_REWARD_TP=A                            |
      | N_4364_REWARD_TP=NULL                         |
