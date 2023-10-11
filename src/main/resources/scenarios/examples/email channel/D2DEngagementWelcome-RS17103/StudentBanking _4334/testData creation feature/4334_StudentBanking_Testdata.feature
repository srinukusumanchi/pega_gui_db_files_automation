@4334_TestDataCreation_EMAIL
Feature: Test data creation for D2D Engagement Welcome StudentBanking

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementWelcome @D2DEngagementWelcomeStudentBanking_Positive_TestData @Workstream-4 @4334 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-StudentBanking_RS17103_4334_EMAIL Create test data for positive test cases
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
      | Test cases                                  | ACCT_OPENED_DT | CUST_Open_Date |Arriving_Date|Acct_Cnt|
#      | 4334_EMPLOYEE_STAFF_F=NULL                        | 3        | 125          |45|1|
#      | 4334_INDV_BRTH_DT_Equal to 16                     | 3        | 125          |45|1|
#      | 4334_LANG_CD=E                                    | 3        | 125          |45|1|
#      | 4334_LANG_CD=EN                                   | 4        | 125          |45|1|
#      | 4334_LANG_CD=F                                    | 4        | 125          |45|1|
#      | 4334_LANG_CD=FR                                   | 4        | 125          |45|1|
#      | 4334_LANG_CD small case =e                        | 5        | 125          |45|1|
#      | 4334_LANG_CD small case = en                      | 5        | 125          |45|1|
#      | 4334_LANG_CD small case  =f                       | 5        | 125          |45|1|
#      | 4334_LANG_CD small case =fr                       | 6        | 125          |45|1|
#      | 4334_EMPLOYEE_STAFF_F=NULL                        | 6        | 125          |45|1|
#      | 4334_PRD CD- 07, SUB PRD CD -11                   | 6        | 125          |45|1|
#      | 4334_PRD CD- 07, SUB PRD CD -12                   | 7        | 125          |45|1|
#      | 4334_Account Open Date Less Than Equal to 10 days | 9        | 125          |45|1|
#      | 4334_Account Open Date equal to 10 days           | 11       | 125          |45|1|
#      | 4334_4334092102_MCB_IND = Y                       | 3        | 125          |45|1|
      | 4334_4334092102_ARRV_DT < 5 years                 | 4        | 125          |1825|1|
      | N-4334_4334092102_ARRV_DT = 5 years               | 4        | 125          |1826|1|
      | N-4334_4334092102_ARRV_DT > 5 years               | 4        | 125          |1827|1|
  |N-4334_4334092102_ARRV_DT = NULL                   |4        | 125          |NULL|1|
##      | N-4334_4334092102_MCB_IND = N                     | 3        | 125          |45|1|
##      | N-4334_4334092102_MCB_IND = NULL                  | 3        | 125          |45|1|
#      | 4334_NTP_CUST_OPND_DT >120                   | 3        | 121          |
#      | 4334_NTP_CASL_CONSENT_F = Y                  | 3        | 125          |45|1|
#      | 4334_NTP_HARDBOUNCE_EMAIL_F !=Y              | 3        | 125          |45|1|
#      | 4334_NTP_UNSUBSCRIBED_F !=Y                  | 3        | 125          |45|1|
#      | 4334_NTB_CUST_OPND_DT < 120                  | 3        | 119          |
#      | 4334_NTB_CUST_OPND_DT = 120                  | 3        | 120          |
#      | 4334_NTB_CASL_CONSENT_F = Y                  | 3        | 110          |
#      | 4334_NTB_CASL_CONSENT_F = N                  | 3        | 10           |
#      | 4334_NTB_CASL_CONSENT_F = NULL               | 3        | 10           |
#      | 4334_NTB_UNSUBSCRIBED_F !=Y                  | 3        | 10           |
#      | 4334_NTB_HARDBOUNCE_EMAIL_F !=Y              | 3        | 10           |
#      | 4334_NTC Creative_NTP_CUST_OPND_DT >120      | 3        | 121          |
#      | 4334_NTC Creative_NTP_CASL_CONSENT_F = Y     | 3        | 125          |45|1|
#      | 4334_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y | 3        | 125          |45|1|
#      | 4334_NTC Creative_NTP_UNSUBSCRIBED_F !=Y     | 3        | 125          |45|1|
#      | 4334_NTC Creative_NTB_CUST_OPND_DT < 120     | 3        | 119          |
#      | 4334_NTC Creative_NTB_CUST_OPND_DT = 120     | 3        | 120          |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = Y     | 3        | 110          |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = N     | 3        | 10           |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = NULL  | 3        | 10           |
#      | 4334_NTC Creative_NTB_UNSUBSCRIBED_F !=Y     | 3        | 10           |
#      | 4334_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y | 3        | 10           |

      # Sep. 15th 2022 Release
#      | 4334_EMPLOYEE_STAFF_F=NULL_NTC              | 2        | 125          |45|1|
#      | 4334_Prv_Bnk_Ind=Null                       | 2        | 125          |45|1|
#      | 4334_Prv_Bnk_Ind=Y                          | 2        | 125          |45|1|
#      | 4334_EMPLOYEE_STAFF_F=Y                     | 2        | 125          |45|1|
#      | 4334_NTC Creative_NTP_CUST_OPND_DT >120     | 2        | 121          |
#      | 4334_NTC Creative_NTP_CASL_CONSENT_F = Y    | 2        | 125          |45|1|
#      | 4334_NTC Creative_NTB_CUST_OPND_DT < 120    | 2        | 119          |
#      | 4334_NTC Creative_NTB_CUST_OPND_DT = 120    | 2        | 120          |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = Y    | 2        | 15           |
#      | 4334_NTC Creative_NTB_CASL_CONSENT_F = N    | 2        | 15           |
#      | 4334_NTP_CUST_OPND_DT >120                  | 2        | 121          |
#      | 4334_NTB_CUST_OPND_DT < 120                 | 2        | 119          |
#      | 4334_NTB_CUST_OPND_DT = 120                 | 2        | 120          |
#      | 4334_NOT_AML_KYC_ne_Y                       | 2        | 125          |45|1|
#      | 4334_NOT_AML_KYC_eq_Null                    | 2        | 125          |45|1|


  @D2DEngagementWelcome_NegativeTestData @D2DEngagementWelcomeStudentBanking_NegativeTestData @Workstream-4 @4334 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-StudentBanking_RS17103_4334_EMAIL Create test data for negative testcases
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
      | Test cases                                  | ACCT_OPENED_DT | CUST_Open_Date |Arriving_Date|Acct_Cnt|
##      | N-4334_PRIM_CNTRY_CD!=CA                      | 3        | 125          |45|1|
##      | N-4334_PRIM_CNTRY_CD=Null                     | 3        | 125          |45|1|
##      | N-4334_CUST_TP_CD != PSNL                     | 3        | 125          |45|1|
##      | N-4334_CUST_TP_CD =  Null                     | 3        | 125          |45|1|
##      | N-4334_DO_NOT_SOLICIT_F = Y                   | 3        | 125          |45|1|
##      | N-4334_Indv_Brth_Dt Equal to 15               | 4        | 125          |45|1|
##      | N-4334_Indv_Brth_Dt Equal to Null             | 4        | 125          |45|1|
##      | N-4334_Indv_Brth_Dt with in range (1-14)      | 4        | 125          |45|1|
##      | N-4334_Deceased_F = Y                         | 4        | 125          |45|1|
##      | N-4334_Deceased_F=Null                        | 4        | 125          |45|1|
##      | N-4334_Prv_Bnk_Ind=Null                       | 5        | 125          |45|1|
##      | N-4334_Prv_Bnk_Ind=Y                          | 5        | 125          |45|1|
##      | N-4334_CC_VIP_IND should be 2                 | 5        | 125          |45|1|
##      | N-4334_CC_VIP_IND should be 9                 | 5        | 125          |45|1|
##      | N-4334_PRIM_EMAIL_ADDR = Null                 | 6        | 125          |45|1|
##      | N-4334_INDV_INDV_FRST_NM =  Null              | 6        | 125          |45|1|
##      | N-4334_INDV_LAST_NM = Null                    | 6        | 125          |45|1|
##      | N-4334_Do not Email Flag-Y                    | 6        | 125          |45|1|
##      | N-4334_Do not Email Flag-Null                 | 6        | 125          |45|1|
##      | N-4334_VLD_EMAIL_F -N                         | 7        | 125          |45|1|
##      | N-4334_VLD_EMAIL_F -Null                      | 7        | 125          |45|1|
##      | N-4334_EMPLOYEE_STAFF_F=Y                     | 7        | 125          |45|1|
##      | N-4334_LANG_CD = K                            | 7        | 125          |45|1|
##      | N-4334_LANG_CD = NE                           | 7        | 125          |45|1|
##      | N-4334_ACCT_SUBSYS_ID = KS                    | 7        | 125          |45|1|
##      | N-4334_PRD CD- 07, SUB PRD CD -10             | 8        | 125          |45|1|
##      | N-4334_PRD CD-07, SUB PRD CD -13              | 8        | 125          |45|1|
##      | N-4334_SRC_ACCT_STAT_CD = B                   | 8        | 125          |45|1|
##      | N-4334_SRC_ACCT_STAT_CD-Null                  | 8        | 125          |45|1|
##      | N-4334_Account Open Date equal to 11 days     | 12       | 125          |45|1|
##      | N-4334_Account Open Date greater than 10 days | 13       | 125          |45|1|
##      | N-4334_Account Open Date equal to Null        | NULL     | 125          |45|1|
##      | N-4334_PRIM_ACCT_HOLDER_F = Null              | 9        | 125          |45|1|
##      | N-4334_PRIM_ACCT_HOLDER_F = N                 | 10       | 125          |45|1|
#      | N_4334_NTP_CASL_CONSENT_F = N                  | 3        | 121          |
#      | N_4334_NTP_CASL_CONSENT_F = NULL               | 3        | 125          |45|1|
#      | N_4334_NTP_HARDBOUNCE_EMAIL_F = Y              | 3        | 125          |45|1|
#      | N_4334_NTP_UNSUBSCRIBED_F =Y                   | 3        | 125          |45|1|
#      | N_4334_NTB_UNSUBSCRIBED_F =Y                   | 3        | 110          |
#      | N_4334_NTB_HARDBOUNCE_EMAIL_F = Y              | 3        | 110          |
#      | N_4334_NTB_CUST_OPND_DT > 120                  | 3        | 121          |
#      | N_4334_NTC Creative_NTP_CASL_CONSENT_F = N     | 3        | 121          |
#      | N_4334_NTC Creative_NTP_CASL_CONSENT_F = NULL  | 3        | 125          |45|1|
#      | N_4334_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y | 3        | 125          |45|1|
#      | N_4334_NTC Creative_NTP_UNSUBSCRIBED_F =Y      | 3        | 125          |45|1|
#      | N_4334_NTC Creative_NTB_UNSUBSCRIBED_F =Y      | 3        | 110          |
#      | N_4334_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y | 3        | 110          |
#      | N_4334_NTC Creative_NTB_CUST_OPND_DT > 120     | 3        | 121          |

      # Sep. 15th 2022 Release
      | N-4334_Do not Email Flag-Y                    | 2        | 125          |45|1|
      | N-4334_Do not Email Flag-Null                 | 2        | 125          |45|1|
      | N_4334_NTC Creative_NTP_CASL_CONSENT_F = N    | 2        | 125          |45|1|
      | N_4334_NTP_CASL_CONSENT_F = N                 | 2        | 125          |45|1|
      | N_4334_NOT_AML_KYC_eq_Y                       | 2        | 125          |45|1|


  @D2DEngagementWelcomeStudentBanking @D2DEngagementWelcome_Negative_TestData_4334_SB_MutlipleAcc @4334 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome Student Banking_RS17103_4334_EMAIL Create test data for positive test cases
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
      | Test cases                                  | ACCT_OPENED_DT | CUST_Open_Date |Arriving_Date|Acct_Cnt|
#      | N-4334_4334092102_Account>1 | 2        | 125          |45|1|