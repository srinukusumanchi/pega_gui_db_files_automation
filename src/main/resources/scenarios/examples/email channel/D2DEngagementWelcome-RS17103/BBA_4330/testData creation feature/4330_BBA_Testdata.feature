@4330_TestDataCreation
Feature: Test data creation for D2D Engagement Welcome BBA

#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementWelcome @D2DEngagementWelcomeBBA_Positive_TestData @Workstream-4 @4330 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-BBA_RS17103_4330_EMAIL Create test data for positive test cases
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

    # Removed
#    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
#    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases                     | Acct_Odt | CUST_OPND_DT |
#      | 4330_DO_NOT_SOLICIT_F= Null             | 3        | 125          |
#      | 4330_INDV_BRTH_DT_Equal to 16           | 3        | 125          |
#      | 4330_LANG_CD=E                          | 3        | 125          |
#      | 4330_LANG_CD=EN                         | 3        | 125          |
#      | 4330_LANG_CD=F                          | 4        | 125          |
#      | 4330_LANG_CD=FR                         | 4        | 125          |
#      | 4330_LANG_CD small case =e              | 4        | 125          |
#      | 4330_LANG_CD small case = en            | 4        | 125          |
#      | 4330_LANG_CD small case  =f             | 5        | 125          |
#      | 4330_LANG_CD small case =fr             | 5        | 125          |
#      | 4330_EMPLOYEE_STAFF_F=NULL              | 5        | 125          |
#      | 4330_PRD CD- 01, SUB PRD CD -01         | 5        | 125          |
#      | 4330_PRD CD- 01, SUB PRD CD -02         | 6        | 125          |
#      | 4330_PRD CD- 01, SUB PRD CD -03         | 6        | 125          |
#      | 4330_PRD CD- 01, SUB PRD CD -04         | 6        | 125          |
#      | 4330_PRD CD- 02, SUB PRD CD -01         | 6        | 125          |
#      | 4330_PRD CD- 02, SUB PRD CD -02         | 7        | 125          |
#      | 4330_PRD CD- 02, SUB PRD CD -03         | 7        | 125          |
#      | 4330_Account Open Date equal to 03 days | 3        | 125          |
#      | 4330_Account Open Date equal to 10 days | 10       | 125          |
#      | 4330_NTP_CUST_OPND_DT >120              | 3        | 121          |
#      | 4330_NTP_CASL_CONSENT_F = Y             | 3        | 125          |
#      | 4330_NTP_HARDBOUNCE_EMAIL_F !=Y         | 3        | 125          |
#      | 4330_NTP_UNSUBSCRIBED_F !=Y             | 3        | 125          |
#      | 4330_NTB_CUST_OPND_DT < 120             | 3        | 119          |
#      | 4330_NTB_CUST_OPND_DT = 120             | 3        | 120          |
#      | 4330_NTB_CASL_CONSENT_F = Y             | 3        | 110          |
#      | 4330_NTB_CASL_CONSENT_F = N             | 3        | 10           |
#      | 4330_NTB_CASL_CONSENT_F = NULL          | 3        | 10           |
#      | 4330_NTB_UNSUBSCRIBED_F !=Y             | 3        | 10           |
#      | 4330_NTB_HARDBOUNCE_EMAIL_F !=Y         | 3        | 10           |


      # Sep. 15th 2022 Release
      | 4330_EMPLOYEE_STAFF_F=NULL_NTC | 2        | 125          |
      | 4330_Prv_Bnk_Ind=Null          | 2        | 125          |
      | 4330_Prv_Bnk_Ind=Y             | 2        | 125          |
      | 4330_EMPLOYEE_STAFF_F=Y        | 2        | 125          |
      | 4330_NTP_CUST_OPND_DT >120     | 2        | 121          |
      | 4330_NTB_CUST_OPND_DT < 120    | 2        | 119          |
      | 4330_NTB_CUST_OPND_DT = 120    | 2        | 120          |
      | 4330_NOT_AML_KYC_ne_Y          | 2        | 125          |
      | 4330_NOT_AML_KYC_eq_Null       | 2        | 125          |


  @D2DEngagementWelcome @D2DEngagementWelcomeBBA_NegativeTestData @Workstream-4 @4330 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-BBA_RS17103_4330_EMAIL Create test data for negative testcases
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

    # Removed
#    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
#    Then insert customer in "PURL_CUST_PROFILE" table

    Examples:
      | Test cases                       | Acct_Odt | CUST_OPND_DT |
#      | N-4330_PRIM_CNTRY_CD!=CA                      | 3        | 125          |
#      | N-4330_PRIM_CNTRY_CD=Null                     | 3        | 125          |
#      | N-4330_CUST_TP_CD != PSNL                     | 3        | 125          |
#      | N-4330_CUST_TP_CD =  Null                     | 3        | 125          |
#      | N-4330_DO_NOT_SOLICIT_F = Y                   | 3        | 125          |
#      | N-4330_Indv_Brth_Dt Equal to 15               | 4        | 125          |
#      | N-4330_Indv_Brth_Dt Equal to Null             | 4        | 125          |
#      | N-4330_Indv_Brth_Dt with in range (1-14)      | 4        | 125          |
#      | N-4330_Deceased_F = Y                         | 4        | 125          |
#      | N-4330_Deceased_F=Null                        | 5        | 125          |
#      | N-4330_CC_VIP_IND should be 2                 | 5        | 125          |
#      | N-4330_CC_VIP_IND should be 9                 | 6        | 125          |
#      | N-4330_PRIM_EMAIL_ADDR = Null                 | 6        | 125          |
#      | N-4330_INDV_INDV_FRST_NM =  Null              | 6        | 125          |
#      | N-4330_INDV_LAST_NM = Null                    | 6        | 125          |
#      | N-4330_Do not Email Flag-Y                    | 7        | 125          |
#      | N-4330_Do not Email Flag-Null                 | 7        | 125          |
#      | N-4330_VLD_EMAIL_F -N                         | 7        | 125          |
#      | N-4330_VLD_EMAIL_F -Null                      | 7        | 125          |
#      | N-4330_LANG_CD = K                            | 8        | 125          |
#      | N-4330_LANG_CD = NE                           | 8        | 125          |
#      | N-4330_ACCT_SUBSYS_ID = KS                    | 8        | 125          |
#      | N-4330_PRD CD- 01, SUB PRD CD -05             | 8        | 125          |
#      | N-4330_PRD CD-02, SUB PRD CD -04              | 8        | 125          |
#      | N-4330_SRC_ACCT_STAT_CD = B                   | 9        | 125          |
#      | N-4330_SRC_ACCT_STAT_CD-Null                  | 9        | 125          |
#      | N-4330_Account Open Date less than 03 days    | 2        | 125          |
#      | N-4330_Account Open Date greater than 10 days | 11       | 125          |
#      | N-4330_Account Open Date equal to Null        | NULL     | 125          |
#      | N-4330_PRIM_ACCT_HOLDER_F = Null              | 4        | 125          |
#      | N-4330_PRIM_ACCT_HOLDER_F = N                 | 4        | 125          |
#      | N_4330_NTP_CASL_CONSENT_F = N                 | 3        | 121          |
#      | N_4330_NTP_CASL_CONSENT_F = NULL              | 3        | 125          |
#      | N_4330_NTP_HARDBOUNCE_EMAIL_F = Y             | 3        | 125          |
#      | N_4330_NTP_UNSUBSCRIBED_F =Y                  | 3        | 125          |
#      | N_4330_NTB_UNSUBSCRIBED_F =Y                  | 3        | 110          |
#      | N_4330_NTB_HARDBOUNCE_EMAIL_F = Y             | 3        | 110          |
#      | N_4330_NTB_CUST_OPND_DT > 120                 | 3        | 121          |

# New Added for Sep. 15th 2022 Release
      | N-4330_Do not Email Flag-Y       | 2        | 125          |
      | N-4330_Do not Email Flag-Null    | 2        | 125          |
      | N_4330_NTP_CASL_CONSENT_F = N    | 2        | 125          |
      | N_4330_NTP_CASL_CONSENT_F = NULL | 2        | 125          |
      | N_4330_NOT_AML_KYC_eq_Y          | 2        | 125          |
