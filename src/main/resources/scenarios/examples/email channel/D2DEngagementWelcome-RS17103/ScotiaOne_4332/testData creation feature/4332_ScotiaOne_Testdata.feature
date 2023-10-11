@4332_TestDataCreation_EMAIL
Feature: Test data creation for D2D Engagement Welcome ScotiaOne

# ACCT_ODT shoud be increased by one for here, since dev is excluding today

#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementWelcome @D2DEngagementWelcomeScotiaOne_Positive_TestData @Workstream-4 @4332 @EMAIL @RS17103 @D2DFeb2023HasCode_flg
  Scenario Outline: D2D Engagement Welcome-ScotiaOne_RS17103_4332_EMAIL Create test data for positive test cases
    Given load data from "Welcome" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_Open_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write Generic Date in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                               | ACCT_OPENED_DT | CUST_Open_Date |Arriving_Date|Acct_Cnt|
#      | 4332_DO_NOT_SOLICIT_F= Null                       | 3        | 125          |45|1|
#      | 4332_INDV_BRTH_DT_Equal to 16                     | 3        | 125          |45|1|
#      | 4332_LANG_CD=E                                    | 3        | 125          |45|1|
#      | 4332_LANG_CD=EN                                   | 4        | 125          |45|1|
#      | 4332_LANG_CD=F                                    | 4        | 125          |45|1|
#      | 4332_LANG_CD=FR                                   | 4        | 125          |45|1|
#      | 4332_LANG_CD small case =e                        | 5        | 125          |45|1|
#      | 4332_LANG_CD small case = en                      | 5        | 125          |45|1|
#      | 4332_LANG_CD small case  =f                       | 5        | 125          |45|1|
#      | 4332_LANG_CD small case =fr                       | 6        | 125          |45|1|
#      | 4332_EMPLOYEE_STAFF_F=NULL                        | 6        | 125          |45|1|
#      | 4332_PRD CD- 13, SUB PRD CD -01                   | 6        | 125          |45|1|
#      | 4332_PRD CD- 13, SUB PRD CD -03                   | 7        | 125          |45|1|
#      | 4332_PRD CD- 13, SUB PRD CD -07                   | 7        | 125          |45|1|
#      | 4332_PRD CD- 13, SUB PRD CD -08                   | 7        | 125          |45|1|
#      | 4332_Account Open Date Less Than Equal to 10 days | 9        | 125          |45|1|
#      | 4332_Account Open Date equal to 10 days           | 11       | 125          |45|1|
#      | 4332_4332092102_MCB_IND = Y                       | 4        | 125          |45|1|
#      | 4332_4332092102_ARRV_DT < 3 years                 | 5        | 125          |45|1|
      | N-4332_4332092102_ARRV_DT = 5 years               | 6        | 125          |1826|1|
      | N-4332_4332092102_ARRV_DT > 5 years               | 7        | 125          |1827|1|
#      | N-4332_4332092102_MCB_IND = N                     | 3        | 125          |45|1|
#      | N-4332_4332092102_MCB_IND = NULL                  | 10       | 125          |45|1|
#      | 4332_NTP_CUST_OPND_DT >120                        | 3        | 121          |
#      | 4332_NTP_CASL_CONSENT_F = Y                       | 3        | 125          |45|1|
#      | 4332_NTP_HARDBOUNCE_EMAIL_F !=Y                   | 3        | 125          |45|1|
#      | 4332_NTP_UNSUBSCRIBED_F !=Y                       | 3        | 125          |45|1|
#      | 4332_NTB_CUST_OPND_DT < 120                       | 3        | 119          |
#      | 4332_NTB_CUST_OPND_DT = 120                       | 3        | 120          |
#      | 4332_NTB_CASL_CONSENT_F = Y                       | 3        | 110          |
#      | 4332_NTB_CASL_CONSENT_F = N                       | 3        | 10           |
#      | 4332_NTB_CASL_CONSENT_F = NULL                    | 3        | 10           |
#      | 4332_NTB_UNSUBSCRIBED_F !=Y                       | 3        | 10           |45|1|
#      | 4332_NTB_HARDBOUNCE_EMAIL_F !=Y                   | 3        | 10           |45|1|
      | 4332_NTC Creative_NTP_CUST_OPND_DT >120           | 3        | 121          |45|1|
      | 4332_NTC Creative_NTP_CASL_CONSENT_F = Y          | 3        | 125          |1825|1|
#      | 4332_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y      | 3        | 125          |45|1|
#      | 4332_NTC Creative_NTP_UNSUBSCRIBED_F !=Y          | 3        | 125          |45|1|
#      | 4332_NTC Creative_NTB_CUST_OPND_DT < 120          | 3        | 119          |
#      | 4332_NTC Creative_NTB_CUST_OPND_DT = 120          | 3        | 120          |
#      | 4332_NTC Creative_NTB_CASL_CONSENT_F = Y          | 3        | 110          |
#      | 4332_NTC Creative_NTB_CASL_CONSENT_F = N          | 3        | 10           |
#      | 4332_NTC Creative_NTB_CASL_CONSENT_F = NULL       | 3        | 10           |
#      | 4332_NTC Creative_NTB_UNSUBSCRIBED_F !=Y          | 3        | 10           |
#      | 4332_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y      | 3        | 10           |

      # Sep. 15th 2022 Release
#      | 4332_EMPLOYEE_STAFF_F=NULL_NTC           | 2        | 125          |45|1|
#      | 4332_Prv_Bnk_Ind=Null                    | 2        | 125          |45|1|
#      | 4332_Prv_Bnk_Ind=Y                       | 2        | 125          |45|1|
#      | 4332_EMPLOYEE_STAFF_F=Y                  | 2        | 125          |45|1|
#      | 4332_NTC Creative_NTP_CUST_OPND_DT >120  | 2        | 121          |45|1|
#      | 4332_NTC Creative_NTP_CASL_CONSENT_F = Y | 2        | 125          |45|1|
#      | 4332_NTC Creative_NTB_CUST_OPND_DT < 120 | 2        | 119          |45|1|
#      | 4332_NTC Creative_NTB_CUST_OPND_DT = 120 | 2        | 120          |45|1|
#      | 4332_NTC Creative_NTB_CASL_CONSENT_F = Y | 2        | 15           |45|1|
#      | 4332_NTC Creative_NTB_CASL_CONSENT_F = N | 2        | 15           |45|1|
#      | 4332_NTP_CUST_OPND_DT >120               | 2        | 121          |45|1|
#      | 4332_NTB_CUST_OPND_DT < 120              | 2        | 119          |45|1|
#      | 4332_NTB_CUST_OPND_DT = 120              | 2        | 120          |45|1|
#      | 4332_NOT_AML_KYC_ne_Y                    | 2        | 125          |45|1|
#      | 4332_NOT_AML_KYC_eq_Null                 | 2        | 125          |45|1|

   # Added for Feb 18 Rls 2023
#      | 4332_HAS_CLOSED_CHQ_F !=Y       | 7        | 125          |45|1|
#      | 4332_HAS_CLOSED_CHQ_F =Y        | 7        | 125          |45|1|
#      | 4332_HAS_CLOSED_CHQ_F =NULL     | 7        | 125          |45|1|
#

  @D2DEngagementWelcome @D2DEngagementWelcomeScotiaOne_NegativeTestData @Workstream-4 @4332 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-ScotiaOne_RS17103_4332_EMAIL Create test data for negative testcases
    Given load data from "Welcome" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_Open_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write Generic Date in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases                                    | Acct_Odt | CUST_OPND_DT |Arriving_Date|Acct_Cnt|
#      | N-4332_PRIM_CNTRY_CD!=CA                       | 3        | 125          |45|1|
#      | N-4332_PRIM_CNTRY_CD=Null                      | 3        | 125          |45|1|
#      | N-4332_CUST_TP_CD != PSNL                      | 3        | 125          |45|1|
#      | N-4332_CUST_TP_CD =  Null                      | 3        | 125          |45|1|
#      | N-4332_DO_NOT_SOLICIT_F = Y                    | 4        | 125          |45|1|
#      | N-4332_Indv_Brth_Dt Equal to 15                | 4        | 125          |45|1|
#      | N-4332_Indv_Brth_Dt Equal to Null              | 4        | 125          |45|1|
#      | N-4332_Indv_Brth_Dt with in range (1-14)       | 4        | 125          |45|1|
#      | N-4332_Deceased_F = Y                          | 5        | 125          |45|1|
#      | N-4332_Deceased_F=Null                         | 5        | 125          |45|1|
#      | N-4332_Prv_Bnk_Ind=Null                        | 5        | 125          |45|1|
#      | N-4332_Prv_Bnk_Ind=Y                           | 6        | 125          |45|1|
#      | N-4332_CC_VIP_IND should be 2                  | 6        | 125          |45|1|
#      | N-4332_CC_VIP_IND should be 9                  | 6        | 125          |45|1|
#      | N-4332_PRIM_EMAIL_ADDR = Null                  | 7        | 125          |45|1|
#      | N-4332_INDV_INDV_FRST_NM =  Null               | 7        | 125          |45|1|
#      | N-4332_INDV_LAST_NM = Null                     | 7        | 125          |45|1|
#      | N-4332_Do not Email Flag-Y                     | 8        | 125          |45|1|
#      | N-4332_Do not Email Flag-Null                  | 8        | 125          |45|1|
#      | N-4332_VLD_EMAIL_F -N                          | 8        | 125          |45|1|
#      | N-4332_VLD_EMAIL_F -Null                       | 8        | 125          |45|1|
#      | N-4332_EMPLOYEE_STAFF_F=Y                      | 9        | 125          |45|1|
#      | N-4332_LANG_CD = K                             | 9        | 125          |45|1|
#      | N-4332_LANG_CD = NE                            | 9        | 125          |45|1|
#      | N-4332_ACCT_SUBSYS_ID = KS                     | 9        | 125          |45|1|
#      | N-4332_PRD CD- 13, SUB PRD CD -02              | 10       | 125          |45|1|
#      | N-4332_PRD CD-13, SUB PRD CD -09               | 10       | 125          |45|1|
#      | N-4332_SRC_ACCT_STAT_CD = B                    | 10       | 125          |45|1|
#      | N-4332_SRC_ACCT_STAT_CD-Null                   | 10       | 125          |45|1|
#      | N-4332_Account Open Date equal to 11 days      | 12       | 125          |45|1|
#      | N-4332_Account Open Date greater than 10 days  | 11       | 125          |45|1|
#      | N-4332_Account Open Date equal to Null         | NULL     | 125          |45|1|
#      | N-4332_PRIM_ACCT_HOLDER_F = Null               | 3        | 125          |45|1|
#      | N-4332_PRIM_ACCT_HOLDER_F = N                  | 3        | 125          |45|1|
#      | N_4332_NTP_CASL_CONSENT_F = N                  | 3        | 121          |
#      | N_4332_NTP_CASL_CONSENT_F = NULL               | 3        | 125          |45|1|
#      | N_4332_NTP_HARDBOUNCE_EMAIL_F = Y              | 3        | 125          |45|1|
#      | N_4332_NTP_UNSUBSCRIBED_F =Y                   | 3        | 125          |45|1|
#      | N_4332_NTB_UNSUBSCRIBED_F =Y                   | 3        | 110          |
#      | N_4332_NTB_HARDBOUNCE_EMAIL_F = Y              | 3        | 110          |
#      | N_4332_NTB_CUST_OPND_DT > 120                  | 3        | 121          |
#      | N_4332_NTC Creative_NTP_CASL_CONSENT_F = N     | 3        | 121          |
#      | N_4332_NTC Creative_NTP_CASL_CONSENT_F = NULL  | 3        | 125          |45|1|
#      | N_4332_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y | 3        | 125          |45|1|
#      | N_4332_NTC Creative_NTP_UNSUBSCRIBED_F =Y      | 3        | 125          |45|1|
#      | N_4332_NTC Creative_NTB_UNSUBSCRIBED_F =Y      | 3        | 110          |
#      | N_4332_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y | 3        | 110          |
#      | N_4332_NTC Creative_NTB_CUST_OPND_DT > 120     | 3        | 121          |

      # Sep. 15th 2022 Release
      | N-4332_Do not Email Flag-Y                    | 2        | 125          |45|1|
      | N-4332_Do not Email Flag-Null                 | 2        | 125          |45|1|
      | N_4332_NTC Creative_NTP_CASL_CONSENT_F = N    | 2        | 125          |45|1|
      | N_4332_NTP_CASL_CONSENT_F = N                 | 2        | 125          |45|1|
      | N_4332_NOT_AML_KYC_eq_Y                       | 2        | 125          |45|1|


  @D2DEngagementWelcomeScotiaOne @D2DEngagementWelcome_Negative_TestData_ScotiaOne_4332_MutlipleAcc @4332 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome ScotiaOne_RS17103_4332_EMAIL Create test data for positive test cases
    Given load data from "Welcome" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

    # Added During Sep 15 2022 Release
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases | Acct_Odt | CUST_OPND_DT |
#      | N-4332_4332092102_Account>1 | 2        | 125          |45|1|
