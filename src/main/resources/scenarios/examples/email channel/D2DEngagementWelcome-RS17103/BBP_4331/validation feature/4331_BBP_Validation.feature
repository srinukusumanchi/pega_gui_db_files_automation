Feature: Validation for D2D Engagement Welcome BBP

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementWelcome_Positive_Validation @D2DEngagementWelcomeBBP_Positive_Validation @Workstream-4 @4331 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-BBP_RS17103_4331_EMAIL Validate D2D Engagement Welcome-BBP offer details against IH for Positive test cases
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
      | Test cases                     |
##      | 4331_DO_NOT_SOLICIT_F= Null             |
##      | 4331_INDV_BRTH_DT_Equal to 16           |
##      | 4331_LANG_CD=E                          |
##      | 4331_LANG_CD=EN                         |
##      | 4331_LANG_CD=F                          |
##      | 4331_LANG_CD=FR                         |
##      | 4331_LANG_CD small case =e              |
##      | 4331_LANG_CD small case = en            |
##      | 4331_LANG_CD small case  =f             |
##      | 4331_LANG_CD small case =fr             |
##      | 4331_EMPLOYEE_STAFF_F=NULL              |
##      | 4331_PRD CD- 19, SUB PRD CD -01         |
##      | 4331_PRD CD- 19, SUB PRD CD -02         |
##      | 4331_PRD CD- 19, SUB PRD CD -03         |
##      | 4331_PRD CD- 19, SUB PRD CD -04         |
##      | 4331_PRD CD- 19, SUB PRD CD -07         |
##      | 4331_PRD CD- 19, SUB PRD CD -08         |
##      | 4331_Account Open Date equal to 03 days |
##      | 4331_Account Open Date equal to 10 days |
#      | 4331_NTP_CUST_OPND_DT >120      |
#      | 4331_NTP_CASL_CONSENT_F = Y     |
#      | 4331_NTP_HARDBOUNCE_EMAIL_F !=Y |
#      | 4331_NTP_UNSUBSCRIBED_F !=Y     |
#      | 4331_NTB_CUST_OPND_DT < 120     |
#      | 4331_NTB_CUST_OPND_DT = 120     |
#      | 4331_NTB_CASL_CONSENT_F = Y     |
#      | 4331_NTB_CASL_CONSENT_F = N     |
##      | 4331_NTB_CASL_CONSENT_F = NULL  |
#      | 4331_NTB_UNSUBSCRIBED_F !=Y     |
#      | 4331_NTB_HARDBOUNCE_EMAIL_F !=Y |

# Sep. 15 2022 Release
      | 4331_EMPLOYEE_STAFF_F=NULL_NTC |
      | 4331_Prv_Bnk_Ind=Null          |
      | 4331_Prv_Bnk_Ind=Y             |
      | 4331_EMPLOYEE_STAFF_F=Y        |
      | 4331_NTP_CUST_OPND_DT >120     |
      | 4331_NTB_CUST_OPND_DT < 120    |
      | 4331_NTB_CUST_OPND_DT = 120    |
      | 4331_NOT_AML_KYC_ne_Y          |
      | 4331_NOT_AML_KYC_eq_Null       |


  @D2DEngagementWelcome_Negative_Validation @D2DEngagementWelcomeBBP_Negative_Validation @Workstream-4 @4331 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-BBP_RS17103_4331_EMAIL Verify D2D Engagement Welcome-BBP offer details are not displayed in IH for Negative test cases
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
      | Test cases                       |
##      | N-4331_PRIM_CNTRY_CD!=CA                      |
##      | N-4331_PRIM_CNTRY_CD=Null                     |
##      | N-4331_CUST_TP_CD != PSNL                     |
##      | N-4331_CUST_TP_CD =  Null                     |
##      | N-4331_DO_NOT_SOLICIT_F = Y                   |
##      | N-4331_Indv_Brth_Dt Equal to 15               |
##      | N-4331_Indv_Brth_Dt Equal to Null             |
##      | N-4331_Indv_Brth_Dt with in range (1-14)      |
##      | N-4331_Deceased_F = Y                         |
##      | N-4331_Deceased_F=Null                        |
##      | N-4331_Prv_Bnk_Ind=Null                       |
##      | N-4331_Prv_Bnk_Ind=Y                          |
##      | N-4331_CC_VIP_IND should be 2                 |
##      | N-4331_CC_VIP_IND should be 9                 |
##      | N-4331_PRIM_EMAIL_ADDR = Null                 |
##      | N-4331_INDV_INDV_FRST_NM =  Null              |
##      | N-4331_INDV_LAST_NM = Null                    |
##      | N-4331_Do not Email Flag-Y                    |
##      | N-4331_Do not Email Flag-Null                 |
##      | N-4331_VLD_EMAIL_F -N                         |
##      | N-4331_VLD_EMAIL_F -Null                      |
##      | N-4331_EMPLOYEE_STAFF_F=Y                     |
##      | N-4331_LANG_CD = K                            |
##      | N-4331_LANG_CD = NE                           |
##      | N-4331_ACCT_SUBSYS_ID = KS                    |
##      | N-4331_PRD CD- 19, SUB PRD CD -05             |
##      | N-4331_PRD CD- 18, SUB PRD CD -01             |
##      | N-4331_SRC_ACCT_STAT_CD = B                   |
##      | N-4331_SRC_ACCT_STAT_CD-Null                  |
##      | N-4331_Account Open Date less than 03 days    |
##      | N-4331_Account Open Date greater than 10 days |
##      | N-4331_Account Open Date equal to Null        |
##      | N-4331_PRIM_ACCT_HOLDER_F = Null              |
##      | N-4331_PRIM_ACCT_HOLDER_F = N                 |
#      | N_4331_NTP_CASL_CONSENT_F = N     |
#      | N_4331_NTP_CASL_CONSENT_F = NULL  |
#      | N_4331_NTP_HARDBOUNCE_EMAIL_F = Y |
#      | N_4331_NTP_UNSUBSCRIBED_F =Y      |
#      | N_4331_NTB_UNSUBSCRIBED_F =Y      |
#      | N_4331_NTB_HARDBOUNCE_EMAIL_F = Y |
#      | N_4331_NTB_CUST_OPND_DT > 120     |

# Sep. 15 2022 Release
      | N-4331_Do not Email Flag-Y       |
      | N-4331_Do not Email Flag-Null    |
      | N_4331_NTP_CASL_CONSENT_F = N    |
      | N_4331_NTP_CASL_CONSENT_F = NULL |
      | N_4331_NOT_AML_KYC_eq_Y          |

