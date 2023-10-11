Feature: Validation for D2D Engagement Welcome StudentBanking

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementWelcome_Positive_Validation @D2DEngagementWelcomeStudentBanking_Positive_Validation @Workstream-4 @4334 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-StudentBanking_RS17103_4334_EMAIL Validate D2D Engagement Welcome-StudentBanking offer details against IH for Positive test cases
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
      | Test cases                                  |
##      | 4334_EMPLOYEE_STAFF_F=NULL                        |
##      | 4334_INDV_BRTH_DT_Equal to 16                     |
##      | 4334_LANG_CD=E                                    |
##      | 4334_LANG_CD=EN                                   |
##      | 4334_LANG_CD=F                                    |
##      | 4334_LANG_CD=FR                                   |
##      | 4334_LANG_CD small case =e                        |
##      | 4334_LANG_CD small case = en                      |
##      | 4334_LANG_CD small case  =f                       |
##      | 4334_LANG_CD small case =fr                       |
##      | 4334_EMPLOYEE_STAFF_F=NULL                        |
##      | 4334_PRD CD- 07, SUB PRD CD -11                   |
##      | 4334_PRD CD- 07, SUB PRD CD -12                   |
##      | 4334_Account Open Date Less Than Equal to 10 days |
##      | 4334_Account Open Date equal to 10 days           |
##      | 4334_4334092102_MCB_IND = Y                       |
      | 4334_4334092102_ARRV_DT < 5 years                 |
      | N-4334_4334092102_ARRV_DT = 5 years               |
      | N-4334_4334092102_ARRV_DT > 5 years               |
      |N-4334_4334092102_ARRV_DT = NULL                   |
##      | N-4334_4334092102_MCB_IND = N                     |
##      | N-4334_4334092102_MCB_IND = NULL                  |
##      | N-4334_4334092102_Account>1                       |
#      | 4334_NTC Creative_NTP_CUST_OPND_DT >120           |
#      | 4334_NTC Creative_NTP_CASL_CONSENT_F = Y          |
#      | 4334_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y      |
#      | 4334_NTC Creative_NTP_UNSUBSCRIBED_F !=Y          |
#      | 4334_NTC Creative_NTB_CUST_OPND_DT < 120          |
#      | 4334_NTC Creative_NTB_CUST_OPND_DT = 120          |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = Y          |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = N          |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = NULL       |
#      | 4334_NTC Creative_NTB_UNSUBSCRIBED_F !=Y          |
#      | 4334_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y      |
#      | 4334_NTP_CUST_OPND_DT >120                        |
#      | 4334_NTP_CASL_CONSENT_F = Y                       |
#      | 4334_NTP_HARDBOUNCE_EMAIL_F !=Y                   |
#      | 4334_NTP_UNSUBSCRIBED_F !=Y                       |
#      | 4334_NTB_CUST_OPND_DT < 120                       |
#      | 4334_NTB_CUST_OPND_DT = 120                       |
#      | 4334_NTB_CASL_CONSENT_F = Y                       |
#      | 4334_NTB_CASL_CONSENT_F = N                       |
#      | 4334_NTB_CASL_CONSENT_F = NULL                    |
#      | 4334_NTB_UNSUBSCRIBED_F !=Y                       |
#      | 4334_NTB_HARDBOUNCE_EMAIL_F !=Y                   |

# Sep 15 2022 Release
#      | 4334_EMPLOYEE_STAFF_F=NULL_NTC              |
#      | 4334_Prv_Bnk_Ind=Null                       |
#      | 4334_Prv_Bnk_Ind=Y                          |
#      | 4334_EMPLOYEE_STAFF_F=Y                     |
#      | 4334_NTC Creative_NTP_CUST_OPND_DT >120     |
#      | 4334_NTC Creative_NTP_CASL_CONSENT_F = Y    |
#      | 4334_NTC Creative_NTB_CUST_OPND_DT < 120    |
#      | 4334_NTC Creative_NTB_CUST_OPND_DT = 120    |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = Y    |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = N    |
#      | 4334_NTP_CUST_OPND_DT >120                  |
#      | 4334_NTB_CUST_OPND_DT < 120                 |
#      | 4334_NTB_CUST_OPND_DT = 120                 |
#      | 4334_NOT_AML_KYC_ne_Y                       |
#      | 4334_NOT_AML_KYC_eq_Null                    |


  @D2DEngagementWelcome_Negative_Validation @D2DEngagementWelcomeStudentBanking_Negative_Validation @Workstream-4 @4334 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-StudentBanking_RS17103_4334_EMAIL Verify D2D Engagement Welcome-StudentBanking offer details are not displayed in IH for Negative test cases
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
##      | N-4334_PRIM_CNTRY_CD!=CA                       |
##      | N-4334_PRIM_CNTRY_CD=Null                      |
##      | N-4334_CUST_TP_CD != PSNL                      |
##      | N-4334_CUST_TP_CD =  Null                      |
##      | N-4334_DO_NOT_SOLICIT_F = Y                    |
##      | N-4334_Indv_Brth_Dt Equal to 15                |
##      | N-4334_Indv_Brth_Dt Equal to Null              |
##      | N-4334_Indv_Brth_Dt with in range (1-14)       |
##      | N-4334_Deceased_F = Y                          |
##      | N-4334_Deceased_F=Null                         |
##      | N-4334_Prv_Bnk_Ind=Null                        |
##      | N-4334_Prv_Bnk_Ind=Y                           |
##      | N-4334_CC_VIP_IND should be 2                  |
##      | N-4334_CC_VIP_IND should be 9                  |
##      | N-4334_PRIM_EMAIL_ADDR = Null                  |
##      | N-4334_INDV_INDV_FRST_NM =  Null               |
##      | N-4334_INDV_LAST_NM = Null                     |
##      | N-4334_Do not Email Flag-Y                     |
##      | N-4334_Do not Email Flag-Null                  |
##      | N-4334_VLD_EMAIL_F -N                          |
##      | N-4334_VLD_EMAIL_F -Null                       |
##      | N-4334_EMPLOYEE_STAFF_F=Y                      |
##      | N-4334_LANG_CD = K                             |
##      | N-4334_LANG_CD = NE                            |
##      | N-4334_ACCT_SUBSYS_ID = KS                     |
##      | N-4334_PRD CD- 07, SUB PRD CD -10              |
##      | N-4334_PRD CD-07, SUB PRD CD -13               |
##      | N-4334_SRC_ACCT_STAT_CD = B                    |
##      | N-4334_SRC_ACCT_STAT_CD-Null                   |
##      | N-4334_Account Open Date equal to 11 days      |
##      | N-4334_Account Open Date greater than 10 days  |
##      | N-4334_Account Open Date equal to Null         |
##      | N-4334_PRIM_ACCT_HOLDER_F = Null               |
##      | N-4334_PRIM_ACCT_HOLDER_F = N                  |
#      | N_4334_NTC Creative_NTP_CASL_CONSENT_F = N     |
#      | N_4334_NTC Creative_NTP_CASL_CONSENT_F = NULL  |
#      | N_4334_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y |
#      | N_4334_NTC Creative_NTP_UNSUBSCRIBED_F =Y      |
#      | N_4334_NTC Creative_NTB_UNSUBSCRIBED_F =Y      |
#      | N_4334_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y |
#      | N_4334_NTC Creative_NTB_CUST_OPND_DT > 120     |
#      | N_4334_NTP_CASL_CONSENT_F = N                  |
#      | N_4334_NTP_CASL_CONSENT_F = NULL               |
#      | N_4334_NTP_HARDBOUNCE_EMAIL_F = Y              |
#      | N_4334_NTP_UNSUBSCRIBED_F =Y                   |
#      | N_4334_NTB_UNSUBSCRIBED_F =Y                   |
#      | N_4334_NTB_HARDBOUNCE_EMAIL_F = Y              |
#      | N_4334_NTB_CUST_OPND_DT > 120                  |

# Sep 15 2022 Release
      | N-4334_Do not Email Flag-Y                    |
      | N-4334_Do not Email Flag-Null                 |
      | N_4334_NTC Creative_NTP_CASL_CONSENT_F = N    |
      | N_4334_NTP_CASL_CONSENT_F = N                 |
      | N_4334_NOT_AML_KYC_eq_Y                       |


