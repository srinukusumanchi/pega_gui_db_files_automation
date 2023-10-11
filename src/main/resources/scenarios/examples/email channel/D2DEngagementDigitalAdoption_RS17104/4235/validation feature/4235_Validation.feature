#Name:	D2D Engagement – Digital Adoption
#Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
Feature: IH Validation for D2D Engagement Digital Adoption
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementDigitalAdoption @D2DEngagementDigitalAdoption_Positive_Validation @Workstream-4 @4235 @EMAIL @RS17104
  Scenario Outline: D2D Engagement Digital Adoption_RS17104_4235_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "DigitalAdoption" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"

#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

    Then validate offer details against IH
    Examples:
      | Test cases                                                                                            |
      | 4235_DO_NOT_SOLICIT_F=NULL                                                                            |
#      | 4235_CUST.AGE_Equal to 16                                                                             |
#      | 4235_LANG_CD=E                                                                                        |
#      | 4235_LANG_CD=EN                                                                                       |
#      | 4235_LANG_CD=F                                                                                        |
#      | 4235_LANG_CD=FR                                                                                       |
#      | 4235_LANG_CD small case =e                                                                            |
#      | 4235_LANG_CD small case =en                                                                           |
#      | 4235_LANG_CD small case =f                                                                            |
#      | 4235_LANG_CD small case =fr                                                                           |
#      | 4235_CC_VIP_IND=NULL                                                                                  |
#      | 4235_EMPLOYEE_STAFF_F=Null                                                                            |
#      | 4235_PRD CD- 01, SUB PRD CD -01                                                                       |
#      | 4235_PRD CD- 01, SUB PRD CD -02                                                                       |
#      | 4235_PRD CD- 01, SUB PRD CD -03                                                                       |
#      | 4235_PRD CD- 01, SUB PRD CD -04                                                                       |
#      | 4235_PRD CD- 02, SUB PRD CD -01                                                                       |
#      | 4235_PRD CD- 02, SUB PRD CD -02                                                                       |
#      | 4235_PRD CD- 02, SUB PRD CD -03                                                                       |
#      | 4235_PRD CD- 13, SUB PRD CD -01                                                                       |
#      | 4235_PRD CD- 13, SUB PRD CD -03                                                                       |
#      | 4235_PRD CD- 13, SUB PRD CD -07                                                                       |
#      | 4235_PRD CD- 13, SUB PRD CD -08                                                                       |
#      | 4235_PRD CD- 19, SUB PRD CD -01                                                                       |
#      | 4235_PRD CD- 19, SUB PRD CD -02                                                                       |
#      | 4235_PRD CD- 19, SUB PRD CD -03                                                                       |
#      | 4235_PRD CD- 19, SUB PRD CD -04                                                                       |
#      | 4235_PRD CD- 19, SUB PRD CD -07                                                                       |
#      | 4235_PRD CD- 19, SUB PRD CD -08                                                                       |
#      | 4235_PRD CD- 23, SUB PRD CD -01                                                                       |
#      | 4235_PRD CD- 23, SUB PRD CD -03                                                                       |
#      | 4235_Account Open Date equal to 12 days                                                               |
#      | 4235_Account Open Date equal to 15 days                                                               |
#      | 4235_SOL_LAST_LOGIN_DT beyond 90 Days and MOB_LAST_LOGIN_DT beyond 90 Days (Creative Id - 4235121701) |
#      | 4235_SOL_LAST_LOGIN_DT as NULL and MOB_LAST_LOGIN_DT as NULL (Creative Id - 4235121701)               |
#      | 4235_NTP_CUST_OPND_DT >120                                                                            |
#      | 4235_NTP_CASL_CONSENT_F = Y                                                                           |
#      | 4235_NTP_HARDBOUNCE_EMAIL_F !=Y                                                                       |
#      | 4235_NTP_UNSUBSCRIBED_F !=Y                                                                           |
#      | 4235_NTB_CUST_OPND_DT < 120                                                                           |
#      | 4235_NTB_CUST_OPND_DT = 120                                                                           |
#      | 4235_NTB_CASL_CONSENT_F = Y                                                                           |
#      | 4235_NTB_CASL_CONSENT_F = N                                                                           |
#      | 4235_NTB_CASL_CONSENT_F = NULL                                                                        |
#      | 4235_NTB_UNSUBSCRIBED_F !=Y                                                                           |
#      | 4235_NTB_HARDBOUNCE_EMAIL_F !=Y                                                                       |
#      | 4235_NTC Creative_NTP_CUST_OPND_DT >120 |
#      | 4235_NTC Creative_NTP_CASL_CONSENT_F = Y                                                              |
#      | 4235_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                                                          |
#      | 4235_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                                              |
#      | 4235_NTC Creative_NTB_CUST_OPND_DT < 120                                                              |
#      | 4235_NTC Creative_NTB_CUST_OPND_DT = 120                                                              |
#      | 4235_NTC Creative_NTB_CASL_CONSENT_F = Y                                                              |
#      | 4235_NTC Creative_NTB_CASL_CONSENT_F = N                                                              |
#      | 4235_NTC Creative_NTB_CASL_CONSENT_F = NULL                                                           |
#      | 4235_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                                              |
#      | 4235_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                                                          |
      # Added for April 27th 2023 Release
      | 4235_Seg_08_SEGMENT_eq_Early_Career                                                                   |
      | 4235_Seg_08_SEGMENT_eq_HENRY                                                                          |
      # Prioritization TCs
#      | 4235_Prioritize_Seg_05_SEGMENT_eq_Early_Career_with_NTC    |
#      | 4235_Prioritize_Seg_05_SEGMENT_eq_HENRY_with_NTC           |
#      | 4235_Prioritize_Seg_08_SEGMENT_eq_Early_Career_without_NTC |
#      | 4235_Prioritize_Seg_08_SEGMENT_eq_HENRY_without_NTC        |
#      | 4235_Prioritize_Seg_01_SEGMENT_eq_NULL                     |

  ## Added for may 25 203 rel
      | 4235_NTC Creative_ARRV_DT_lt_5years                                                                   |

      ##Positive added for july 06 2023 REL
      | 4235_PRD CD- 07, SUB PRD CD -11                                                                       |
      | 4235_PRD CD- 07, SUB PRD CD -12                                                                       |
      | 4235_PRDCD_07_SUB PRDCD_11_4235072310_NTC                                                             |
      | 4235_PRDCD_07_SUB PRDCD_12_4235072310_NTC                                                             |
       ## prioritization Test cases

      | 4235_NTC Creative_Prioritize_Seg10_over_Seg10_and_Seg08                                               |
      | 4235_Non_NTC_Prioritize_Seg09_over_Seg09_Seg08_and_Seg01                                              |
      | 4235_Non_NTC_Prioritize_Seg08_over_Seg08_and_Seg01                                                    |

          ##Decommission segments for july 06 2023 REL
      | 4235_SOL_LAST_LOGIN_DT beyond 90 daya and MOB_LAST_LOGIN_DT within 90 Days (Creative Id - 4235121702) |
      | 4235_SOL_LAST_LOGIN_DT as Null and MOB_LAST_LOGIN_DT within 90 Days (Creative Id - 4235121702)        |
      | 4235_SOL_LAST_LOGIN_DT within 90 Days and MOB_LAST_LOGIN_DT beyond 90 days (Creative Id - 4235121703) |
      | 4235_SOL_LAST_LOGIN_DT within 90 Days and MOB_LAST_LOGIN_DT as Null (Creative Id - 4235121703)        |
      | 4235_NTC_ (Creative Id - 4235092106)                                                                  |
      | 4235_NTC_ (Creative Id -4235092107)                                                                   |


  @D2DEngagementDigitalAdoption @D2DEngagementDigitalAdoption_Negative_Validation @Workstream-4 @4235 @EMAIL @RS17104
  Scenario Outline: D2D Engagement Digital Adoption-_RS17104_4235_EMAIL Validate offer details are not displayed against IH for Negative test cases
    Given load data from "DigitalAdoption" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"

#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

    Then verify offer should not display
    Examples:
      | Test cases |
      | N-4235_PRIM_CNTRY_CD!=CA                                                                                |
      | N-4235_PRIM_CNTRY_CD=Null                                                                               |
      | N-4235_CUST_TP_CD != PSNL                                                                               |
      | N-4235_CUST_TP_CD =  Null                                                                               |
      | N-4235_DO_NOT_SOLICIT_F = Y                                                                             |
      | N-4235_CUST.AGE_Dt Equal to 15                                                                          |
      | N-4235_CUST.AGE is blank value                                                                          |
      | N-4235_CUST.AGE within range (1-16)                                                                     |
      | N-4235_CUST.AGE= NULL                                                                                   |
      | N-4235_Deceased_F = Y                                                                                   |
      | N-4235_Deceased_F = Null                                                                                |
      | N-4235_Prv_Bnk_Ind=Y                                                                                    |
      | N-4235_Prv_Bnk_Ind=Null                                                                                 |
      | N-4235_CC_VIP_IND should be 2                                                                           |
      | N-4235_CC_VIP_IND should be 9                                                                           |
      | N-4235_PRIM_EMAIL_ADDR = Null                                                                           |
      | N-4235_INDV_INDV_FRST_NM =  Null                                                                        |
      | N-4235_INDV_LAST_NM = Null                                                                              |
      | N-4235_Do not Email Flag-Y                                                                              |
      | N-4235_Do not Email Flag-Null                                                                           |
      | N-4235_VLD_EMAIL_F -N                                                                                   |
      | N-4235_VLD_EMAIL_F -Null                                                                                |
      | N-4235_EMPLOYEE_STAFF_F=Y                                                                               |
      | N-4235_LANG_CD = K                                                                                      |
      | N-4235_LANG_CD = NE                                                                                     |
      | N_4235_LANG_CD=Null                                                                                     |
      | N-4235_ACCT_SUBSYS_ID = KS                                                                              |
      | N-4235_ACCT_SUBSYS_ID = Null                                                                            |
      | N-4235_PRD CD- 01, SUB PRD CD -05                                                                       |
      | N-4235_PRD CD-02, SUB PRD CD -04                                                                        |
      | N-4235_PRD CD-07, SUB PRD CD -08                                                                        |
      | N-4235_PRD CD-13, SUB PRD CD -12                                                                        |
      | N-4235_PRD CD-18, SUB PRD CD -01                                                                        |
      | N-4235_PRD CD-18, SUB PRD CD -07                                                                        |
      | N-4235_PRD CD-18, SUB PRD CD -03                                                                        |
      | N-4235_PRD CD-19, SUB PRD CD -11                                                                        |
      | N-4235_PRD CD-23, SUB PRD CD -02                                                                        |
      | N-4235_SRC_ACCT_STAT_CD !=Active                                                                        |
      | N-4235_SRC_ACCT_STAT_CD-Null                                                                            |
      | N-4235_Account Open Date less than 12 days                                                              |
      | N-4235_Account Open Date greater than 15 days                                                           |
      | N-4235_Account Open Date equal to Null                                                                  |
      | N-4235_PRIM_ACCT_HOLDER_F = N                                                                           |
      | N-4235_PRIM_ACCT_HOLDER_F = Null                                                                        |
      | N-4235_SOL_LAST_LOGIN_DT within 90 Days and MOB_LAST_LOGIN_DT within 90 Days                            |
      | N_4235_NTP_CASL_CONSENT_F = N                                                                           |
      | N_4235_NTP_CASL_CONSENT_F = NULL                                                                        |
      | N_4235_NTP_HARDBOUNCE_EMAIL_F = Y                                                                       |
      | N_4235_NTP_UNSUBSCRIBED_F =Y                                                                            |
      | N_4235_NTB_UNSUBSCRIBED_F =Y                                                                            |
      | N_4235_NTB_HARDBOUNCE_EMAIL_F = Y                                                                       |
      | N_4235_NTB_CUST_OPND_DT > 120                                                                           |
      | N_4235_NTC Creative_NTP_CASL_CONSENT_F = N                                                              |
      | N_4235_NTC Creative_NTP_CASL_CONSENT_F = NULL                                                           |
      | N_4235_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y                                                          |
      | N_4235_NTC Creative_NTP_UNSUBSCRIBED_F =Y                                                               |
      | N_4235_NTC Creative_NTB_UNSUBSCRIBED_F =Y                                                               |
      | N_4235_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y                                                          |
      | N_4235_NTC Creative_NTB_CUST_OPND_DT > 120                                                              |
              ## Added for may 25 203 rel
      | N_4235_NTC Creative_ARRV_DT_eq_5years                                                                   |
      | N_4235_NTC Creative_ARRV_DT_gt_5years                                                                   |
      | N_4235_NTC Creative_ARRV_DT_eq_NULL                                                                     |

