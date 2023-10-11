Feature: Validation for D2D Engagement Welcome Ultimate

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementWelcome_Positive_Validation @D2DEngagementWelcomeUltimate_Positive_Validation @Workstream-4 @4658 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-Ultimate_RS17103_4658_EMAIL Validate D2D Engagement Welcome-Ultimate offer details against IH for Positive test cases
    Given load data from "Welcome" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                              |
#      | 4658_DO_NOT_SOLICIT_F= Null             |
#      | 4658_INDV_BRTH_DT_Equal to 16           |
#      | 4658_LANG_CD=E                          |
#      | 4658_LANG_CD=EN                         |
#      | 4658_LANG_CD=F                          |
#      | 4658_LANG_CD=FR                         |
#      | 4658_LANG_CD small case =e              |
#      | 4658_LANG_CD small case = en            |
#      | 4658_LANG_CD small case  =f             |
#      | 4658_LANG_CD small case =fr             |
#      | 4658_EMPLOYEE_STAFF_F=NULL              |
#      | 4658_PRD CD- 23, SUB PRD CD -01         |
#      | 4658_PRD CD- 23, SUB PRD CD -03         |
#      | 4658_Account Open Date equal to 03 days |
#      | 4658_Account Open Date equal to 10 days |
      | 4658_NTP_CUST_OPND_DT >120                                                                            |
      | 4658_NTP_CASL_CONSENT_F = Y                                                                           |
      | 4658_NTP_HARDBOUNCE_EMAIL_F !=Y                                                                       |
      | 4658_NTP_UNSUBSCRIBED_F !=Y                                                                           |
      | 4658_NTB_CUST_OPND_DT < 120                                                                           |
      | 4658_NTB_CUST_OPND_DT = 120                                                                           |
      | 4658_NTB_CASL_CONSENT_F = Y                                                                           |
      | 4658_NTB_CASL_CONSENT_F = N                                                                           |
#      | 4658_NTB_CASL_CONSENT_F = NULL                                                                        |
      | 4658_NTB_UNSUBSCRIBED_F !=Y                                                                           |
      | 4658_NTB_HARDBOUNCE_EMAIL_F !=Y                                                                       |


  @D2DEngagementWelcome_Negative_Validation @D2DEngagementWelcomeUltimate_Negative_Validation @Workstream-4 @4658 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-Ultimate_RS17103_4658_EMAIL Verify D2D Engagement Welcome-Ultimate offer details are not displayed in IH for Negative test cases
    Given load data from "Welcome" excel sheet
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
      | Test cases                                    |
#      | N-4658_PRIM_CNTRY_CD!=CA                      |
#      | N-4658_PRIM_CNTRY_CD=Null                     |
#      | N-4658_CUST_TP_CD != PSNL                     |
#      | N-4658_CUST_TP_CD =  Null                     |
#      | N-4658_DO_NOT_SOLICIT_F = Y                   |
#      | N-4658_Indv_Brth_Dt Equal to 15               |
#      | N-4658_Indv_Brth_Dt Equal to Null             |
#      | N-4658_Indv_Brth_Dt with in range (1-14)      |
#      | N-4658_Deceased_F = Y                         |
#      | N-4658_Deceased_F=Null                        |
#      | N-4658_Prv_Bnk_Ind=Null                       |
#      | N-4658_Prv_Bnk_Ind=Y                          |
#      | N-4658_CC_VIP_IND should be 2                 |
#      | N-4658_CC_VIP_IND should be 9                 |
#      | N-4658_PRIM_EMAIL_ADDR = Null                 |
#      | N-4658_INDV_INDV_FRST_NM =  Null              |
#      | N-4658_INDV_LAST_NM = Null                    |
#      | N-4658_Do not Email Flag-Y                    |
#      | N-4658_Do not Email Flag-Null                 |
#      | N-4658_VLD_EMAIL_F -N                         |
#      | N-4658_VLD_EMAIL_F -Null                      |
#      | N-4658_EMPLOYEE_STAFF_F=Y                     |
#      | N-4658_LANG_CD = K                            |
#      | N-4658_LANG_CD = NE                           |
#      | N-4658_ACCT_SUBSYS_ID = KS                    |
#      | N-4658_PRD CD- 23, SUB PRD CD -02             |
#      | N-4658_PRD CD-23, SUB PRD CD -04              |
#      | N-4658_SRC_ACCT_STAT_CD = B                   |
#      | N-4658_SRC_ACCT_STAT_CD-Null                  |
#      | N-4658_Account Open Date less than 03 days    |
#      | N-4658_Account Open Date greater than 10 days |
#      | N-4658_Account Open Date equal to Null        |
#      | N-4658_PRIM_ACCT_HOLDER_F = Null              |
#      | N-4658_PRIM_ACCT_HOLDER_F = N                 |
      | N_4658_NTP_CASL_CONSENT_F = N                                                |
      | N_4658_NTP_CASL_CONSENT_F = NULL                                             |
      | N_4658_NTP_HARDBOUNCE_EMAIL_F = Y                                            |
      | N_4658_NTP_UNSUBSCRIBED_F =Y                                                 |
      | N_4658_NTB_UNSUBSCRIBED_F =Y                                                 |
      | N_4658_NTB_HARDBOUNCE_EMAIL_F = Y                                            |
      | N_4658_NTB_CUST_OPND_DT > 120                                                |
