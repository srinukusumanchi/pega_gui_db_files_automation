Feature: Validation for D2D Engagement Welcome ScotiaOne

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementWelcome_Positive_Validation @D2DEngagementWelcomeScotiaOne_Positive_Validation @Workstream-4 @4332 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-ScotiaOne_RS17103_4332_EMAIL Validate D2D Engagement Welcome-ScotiaOne offer details against IH for Positive test cases
    Given load data from "Welcome" excel sheet
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
      | Test cases                                        |
#      | 4332_DO_NOT_SOLICIT_F= Null                       |
#      | 4332_INDV_BRTH_DT_Equal to 16                     |
#      | 4332_LANG_CD=E                                    |
#      | 4332_LANG_CD=EN                                   |
#      | 4332_LANG_CD=F                                    |
#      | 4332_LANG_CD=FR                                   |
#      | 4332_LANG_CD small case =e                        |
#      | 4332_LANG_CD small case = en                      |
#      | 4332_LANG_CD small case  =f                       |
#      | 4332_LANG_CD small case =fr                       |
#      | 4332_EMPLOYEE_STAFF_F=NULL                        |
#      | 4332_PRD CD- 13, SUB PRD CD -01                   |
#      | 4332_PRD CD- 13, SUB PRD CD -03                   |
#      | 4332_PRD CD- 13, SUB PRD CD -07                   |
#      | 4332_PRD CD- 13, SUB PRD CD -08                   |
#      | 4332_Account Open Date Less Than Equal to 10 days |
#      | 4332_Account Open Date equal to 10 days           |
#      | 4332_4332092102_MCB_IND = Y                       |
#      | 4332_4332092102_ARRV_DT < 3 years                 |
      | N-4332_4332092102_ARRV_DT = 5 years               |
      | N-4332_4332092102_ARRV_DT > 5 years               |
#      | N-4332_4332092102_MCB_IND = N                     |
#      | N-4332_4332092102_MCB_IND = NULL                  |
#      | N-4332_4332092102_Account>1                       |
      | 4332_NTC Creative_NTP_CUST_OPND_DT >120           |
      | 4332_NTC Creative_NTP_CASL_CONSENT_F = Y          |
#      | 4332_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y      |
#      | 4332_NTC Creative_NTP_UNSUBSCRIBED_F !=Y          |
#      | 4332_NTC Creative_NTB_CUST_OPND_DT < 120          |
#      | 4332_NTC Creative_NTB_CUST_OPND_DT = 120          |
#      | 4332_NTC Creative_NTB_CASL_CONSENT_F = Y          |
#      | 4332_NTC Creative_NTB_CASL_CONSENT_F = N          |
#      | 4332_NTC Creative_NTB_CASL_CONSENT_F = NULL       |
#      | 4332_NTC Creative_NTB_UNSUBSCRIBED_F !=Y          |
#      | 4332_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y      |
#      | 4332_NTP_CUST_OPND_DT >120                        |
#      | 4332_NTP_CASL_CONSENT_F = Y                       |
#      | 4332_NTP_HARDBOUNCE_EMAIL_F !=Y                   |
#      | 4332_NTP_UNSUBSCRIBED_F !=Y                       |
#      | 4332_NTB_CUST_OPND_DT < 120                       |
#      | 4332_NTB_CUST_OPND_DT = 120                       |
#      | 4332_NTB_CASL_CONSENT_F = Y                       |
#      | 4332_NTB_CASL_CONSENT_F = N                       |
#      | 4332_NTB_CASL_CONSENT_F = NULL                    |
#      | 4332_NTB_UNSUBSCRIBED_F !=Y                       |
#      | 4332_NTB_HARDBOUNCE_EMAIL_F !=Y                   |


  @D2DEngagementWelcome_Negative_Validation @D2DEngagementWelcomeScotiaOne_Negative_Validation @Workstream-4 @4332 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-ScotiaOne_RS17103_4332_EMAIL Verify D2D Engagement Welcome-ScotiaOne offer details are not displayed in IH for Negative test cases
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
      | Test cases                                     |
      | N-4332_PRIM_CNTRY_CD!=CA                       |
      | N-4332_PRIM_CNTRY_CD=Null                      |
      | N-4332_CUST_TP_CD != PSNL                      |
      | N-4332_CUST_TP_CD =  Null                      |
      | N-4332_DO_NOT_SOLICIT_F = Y                    |
      | N-4332_Indv_Brth_Dt Equal to 15                |
      | N-4332_Indv_Brth_Dt Equal to Null              |
      | N-4332_Indv_Brth_Dt with in range (1-14)       |
      | N-4332_Deceased_F = Y                          |
      | N-4332_Deceased_F=Null                         |
      | N-4332_Prv_Bnk_Ind=Null                        |
      | N-4332_Prv_Bnk_Ind=Y                           |
      | N-4332_CC_VIP_IND should be 2                  |
      | N-4332_CC_VIP_IND should be 9                  |
      | N-4332_PRIM_EMAIL_ADDR = Null                  |
      | N-4332_INDV_INDV_FRST_NM =  Null               |
      | N-4332_INDV_LAST_NM = Null                     |
      | N-4332_Do not Email Flag-Y                     |
      | N-4332_Do not Email Flag-Null                  |
      | N-4332_VLD_EMAIL_F -N                          |
      | N-4332_VLD_EMAIL_F -Null                       |
      | N-4332_EMPLOYEE_STAFF_F=Y                      |
      | N-4332_LANG_CD = K                             |
      | N-4332_LANG_CD = NE                            |
      | N-4332_ACCT_SUBSYS_ID = KS                     |
      | N-4332_PRD CD- 13, SUB PRD CD -02              |
      | N-4332_PRD CD-13, SUB PRD CD -09               |
      | N-4332_SRC_ACCT_STAT_CD = B                    |
      | N-4332_SRC_ACCT_STAT_CD-Null                   |
      | N-4332_Account Open Date equal to 11 days      |
      | N-4332_Account Open Date greater than 10 days  |
      | N-4332_Account Open Date equal to Null         |
      | N-4332_PRIM_ACCT_HOLDER_F = Null               |
      | N-4332_PRIM_ACCT_HOLDER_F = N                  |
      | N_4332_NTC Creative_NTP_CASL_CONSENT_F = N     |
      | N_4332_NTC Creative_NTP_CASL_CONSENT_F = NULL  |
      | N_4332_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y |
      | N_4332_NTC Creative_NTP_UNSUBSCRIBED_F =Y      |
      | N_4332_NTC Creative_NTB_UNSUBSCRIBED_F =Y      |
      | N_4332_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y |
      | N_4332_NTC Creative_NTB_CUST_OPND_DT > 120     |
      | N_4332_NTP_CASL_CONSENT_F = N                  |
      | N_4332_NTP_CASL_CONSENT_F = NULL               |
      | N_4332_NTP_HARDBOUNCE_EMAIL_F = Y              |
      | N_4332_NTP_UNSUBSCRIBED_F =Y                   |
      | N_4332_NTB_UNSUBSCRIBED_F =Y                   |
      | N_4332_NTB_HARDBOUNCE_EMAIL_F = Y              |
      | N_4332_NTB_CUST_OPND_DT > 120                  |


