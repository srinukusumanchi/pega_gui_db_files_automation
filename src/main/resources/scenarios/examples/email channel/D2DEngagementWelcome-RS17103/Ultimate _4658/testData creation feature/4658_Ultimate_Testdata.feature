@4658_TestDataCreation
Feature: Test data creation for D2D Engagement Welcome Ultimate

#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementWelcome @D2DEngagementWelcomeUltimate_Positive_TestData @Workstream-4 @4658 @EMAIL @RS17103 @D2DFeb2023HasCode_flg
  Scenario Outline: D2D Engagement Welcome-Ultimate_RS17103_4658_EMAIL Create test data for positive test cases
    Given load data from "Welcome" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

    # Added During Sep 15 2022 Release
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"

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

    Examples:
      | Test cases                     | Acct_Odt | CUST_OPND_DT |
##      | 4658_DO_NOT_SOLICIT_F= Null             | 3        | 125          |
##      | 4658_INDV_BRTH_DT_Equal to 16           | 3        | 125          |
      | 4658_LANG_CD=E                          | 3        | 125          |
##      | 4658_LANG_CD=EN                         | 4        | 125          |
      | 4658_LANG_CD=F                          | 4        | 125          |
#      | 4658_LANG_CD=FR                         | 4        | 125          |
##      | 4658_LANG_CD small case =e              | 5        | 125          |
##      | 4658_LANG_CD small case = en            | 5        | 125          |
##      | 4658_LANG_CD small case  =f             | 5        | 125          |
##      | 4658_LANG_CD small case =fr             | 6        | 125          |
##      | 4658_EMPLOYEE_STAFF_F=NULL              | 6        | 125          |
##      | 4658_PRD CD- 23, SUB PRD CD -01         | 7        | 125          |
##      | 4658_PRD CD- 23, SUB PRD CD -03         | 8        | 125          |
##      | 4658_Account Open Date equal to 03 days | 3        | 125          |
##      | 4658_Account Open Date equal to 10 days | 10       | 125          |
#      | 4658_NTP_CUST_OPND_DT >120              | 3        | 121          |
#      | 4658_NTP_CASL_CONSENT_F = Y             | 3        | 125          |
#      | 4658_NTP_HARDBOUNCE_EMAIL_F !=Y         | 3        | 125          |
#      | 4658_NTP_UNSUBSCRIBED_F !=Y             | 3        | 125          |
      | 4658_NTB_CUST_OPND_DT < 120             | 3        | 119          |
      | 4658_NTB_CUST_OPND_DT = 120             | 3        | 120          |
#      | 4658_NTB_CASL_CONSENT_F = Y             | 3        | 110          |
#      | 4658_NTB_CASL_CONSENT_F = N             | 3        | 10           |
#      | 4658_NTB_CASL_CONSENT_F = NULL          | 3        | 10           |
#      | 4658_NTB_UNSUBSCRIBED_F !=Y             | 3        | 10           |
#      | 4658_NTB_HARDBOUNCE_EMAIL_F !=Y         | 3        | 10           |

      # Sep. 15th 2022 Release
#      | 4658_EMPLOYEE_STAFF_F=NULL_NTC | 2        | 125          |
#      | 4658_Prv_Bnk_Ind=Null          | 2        | 125          |
#      | 4658_Prv_Bnk_Ind=Y             | 2        | 125          |
#      | 4658_EMPLOYEE_STAFF_F=Y        | 2        | 125          |
#      | 4658_NTP_CUST_OPND_DT >120     | 2        | 121          |
#      | 4658_NTB_CUST_OPND_DT < 120    | 2        | 119          |
#      | 4658_NTB_CUST_OPND_DT = 120    | 2        | 120          |
#      | 4658_NOT_AML_KYC_ne_Y          | 2        | 125          |
#      | 4658_NOT_AML_KYC_eq_Null       | 2        | 125          |

  # Added for Feb 18 Rls 2023
      | 4658_HAS_CLOSED_CHQ_F !=Y   | 2        | 125          |
      | 4658_HAS_CLOSED_CHQ_F =Y    | 2        | 125          |
      | 4658_HAS_CLOSED_CHQ_F =NULL | 2        | 125          |



  @D2DEngagementWelcome @D2DEngagementWelcomeUltimate_NegativeTestData @Workstream-4 @4658 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-Ultimate_RS17103_4658_EMAIL Create test data for negative testcases
    Given load data from "Welcome" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

    # Added During Sep 15 2022 Release
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"

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

    Examples:
      | Test cases                       | Acct_Odt | CUST_OPND_DT |
##      | N-4658_PRIM_CNTRY_CD!=CA                      | 3        | 125          |
##      | N-4658_PRIM_CNTRY_CD=Null                     | 3        | 125          |
##      | N-4658_CUST_TP_CD != PSNL                     | 3        | 125          |
##      | N-4658_CUST_TP_CD =  Null                     | 3        | 125          |
##      | N-4658_DO_NOT_SOLICIT_F = Y                   | 4        | 125          |
##      | N-4658_Indv_Brth_Dt Equal to 15               | 4        | 125          |
##      | N-4658_Indv_Brth_Dt Equal to Null             | 4        | 125          |
##      | N-4658_Indv_Brth_Dt with in range (1-14)      | 4        | 125          |
##      | N-4658_Deceased_F = Y                         | 5        | 125          |
##      | N-4658_Deceased_F=Null                        | 5        | 125          |
##      | N-4658_Prv_Bnk_Ind=Null                       | 5        | 125          |
##      | N-4658_Prv_Bnk_Ind=Y                          | 5        | 125          |
##      | N-4658_CC_VIP_IND should be 2                 | 6        | 125          |
##      | N-4658_CC_VIP_IND should be 9                 | 6        | 125          |
##      | N-4658_PRIM_EMAIL_ADDR = Null                 | 6        | 125          |
##      | N-4658_INDV_INDV_FRST_NM =  Null              | 7        | 125          |
##      | N-4658_INDV_LAST_NM = Null                    | 7        | 125          |
##      | N-4658_Do not Email Flag-Y                    | 7        | 125          |
##      | N-4658_Do not Email Flag-Null                 | 7        | 125          |
##      | N-4658_VLD_EMAIL_F -N                         | 8        | 125          |
##      | N-4658_VLD_EMAIL_F -Null                      | 8        | 125          |
##      | N-4658_EMPLOYEE_STAFF_F=Y                     | 8        | 125          |
##      | N-4658_LANG_CD = K                            | 8        | 125          |
##      | N-4658_LANG_CD = NE                           | 9        | 125          |
##      | N-4658_ACCT_SUBSYS_ID = KS                    | 9        | 125          |
##      | N-4658_PRD CD- 23, SUB PRD CD -02             | 9        | 125          |
##      | N-4658_PRD CD-23, SUB PRD CD -04              | 10       | 125          |
##      | N-4658_SRC_ACCT_STAT_CD = B                   | 10       | 125          |
##      | N-4658_SRC_ACCT_STAT_CD-Null                  | 10       | 125          |
##      | N-4658_Account Open Date less than 03 days    | 2        | 125          |
##      | N-4658_Account Open Date greater than 10 days | 11       | 125          |
##      | N-4658_Account Open Date equal to Null        | NULL     | 125          |
##      | N-4658_PRIM_ACCT_HOLDER_F = Null              | 3        | 125          |
##      | N-4658_PRIM_ACCT_HOLDER_F = N                 | 3        | 125          |
#      | N_4658_NTP_CASL_CONSENT_F = N                 | 3        | 121          |
#      | N_4658_NTP_CASL_CONSENT_F = NULL              | 3        | 125          |
#      | N_4658_NTP_HARDBOUNCE_EMAIL_F = Y             | 3        | 125          |
#      | N_4658_NTP_UNSUBSCRIBED_F =Y                  | 3        | 125          |
#      | N_4658_NTB_UNSUBSCRIBED_F =Y                  | 3        | 110          |
#      | N_4658_NTB_HARDBOUNCE_EMAIL_F = Y             | 3        | 110          |
#      | N_4658_NTB_CUST_OPND_DT > 120                 | 3        | 121          |

      # Sep. 15th 2022 Release
      | N-4658_Do not Email Flag-Y       | 2        | 125          |
      | N-4658_Do not Email Flag-Null    | 2        | 125          |
      | N_4658_NTP_CASL_CONSENT_F = N    | 2        | 125          |
      | N_4658_NTP_CASL_CONSENT_F = NULL | 2        | 125          |
      | N_4658_NOT_AML_KYC_eq_Y          | 2        | 125          |
