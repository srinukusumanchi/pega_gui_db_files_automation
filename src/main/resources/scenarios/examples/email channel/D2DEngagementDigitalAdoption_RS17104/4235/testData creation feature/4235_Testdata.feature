#Name:	D2D Engagement – Digital Adoption
#Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
@4235_DigitalAdoption_TestDataCreation
Feature: Test data creation for D2D Engagement Digital Adoption
  
#  As part of D2D Early Engagement Program, this Digital Adoption message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementDigitalAdoption @D2DEngagementDigitalAdoption_Positive_TestData_4235 @Workstream-4 @4235 @EMAIL @RS17104
  Scenario Outline: D2D Engagement Digital Adoption_RS17104_4235_EMAIL Create test data for positive test cases
    Given load data from "DigitalAdoption" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And  write MOB_LAST_LOGIN_DT "<MOB_LAST_LOGIN_DT>" value into sheet "CUST_DIM" for "<Test cases>"
    And  write SOL_LAST_LOGIN_DT "<SOL_LAST_LOGIN_DT>" value into sheet "CUST_DIM" for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_OPND_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts


    Examples:
      | Test cases                                                                                            | ACCT_ODT_Val | MOB_LAST_LOGIN_DT | SOL_LAST_LOGIN_DT | CUST_OPND_DT | Arriving_Date | Acct_Cnt |
      | 4235_DO_NOT_SOLICIT_F=NULL                                                                            | 12           | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_CUST.AGE_Equal to 16                                                                             | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_LANG_CD=E                                                                                        | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_LANG_CD=EN                                                                                       | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_LANG_CD=F                                                                                        | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_LANG_CD=FR                                                                                       | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_LANG_CD small case =e                                                                            | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_LANG_CD small case =en                                                                           | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_LANG_CD small case =f                                                                            | 13       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_LANG_CD small case =fr                                                                           | 13       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_CC_VIP_IND=NULL                                                                                  | 13       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_EMPLOYEE_STAFF_F=Null                                                                            | 13       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 01, SUB PRD CD -01                                                                       | 13       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 01, SUB PRD CD -02                                                                       | 13       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 01, SUB PRD CD -03                                                                       | 13       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 01, SUB PRD CD -04                                                                       | 13       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 02, SUB PRD CD -01                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 02, SUB PRD CD -02                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 02, SUB PRD CD -03                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 13, SUB PRD CD -01                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 13, SUB PRD CD -03                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 13, SUB PRD CD -07                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 13, SUB PRD CD -08                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 19, SUB PRD CD -01                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 19, SUB PRD CD -02                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 19, SUB PRD CD -03                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 19, SUB PRD CD -04                                                                       | 14       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 19, SUB PRD CD -07                                                                       | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 19, SUB PRD CD -08                                                                       | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 23, SUB PRD CD -01                                                                       | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_PRD CD- 23, SUB PRD CD -03                                                                       | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_Account Open Date equal to 12 days                                                               | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_Account Open Date equal to 15 days                                                               | 15       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_SOL_LAST_LOGIN_DT beyond 90 Days and MOB_LAST_LOGIN_DT beyond 90 Days (Creative Id - 4235121701) | 13       | 95                | 95                | 125          | 45            | 1        |
#      | 4235_SOL_LAST_LOGIN_DT as NULL and MOB_LAST_LOGIN_DT as NULL (Creative Id - 4235121701)               | 13       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_NTP_CUST_OPND_DT >120                                                                            | 12       | NULL              | NULL              | 121          | 45            | 1        |
#      | 4235_NTP_CASL_CONSENT_F = Y                                                                           | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_NTP_HARDBOUNCE_EMAIL_F !=Y                                                                       | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_NTP_UNSUBSCRIBED_F !=Y                                                                           | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_NTB_CUST_OPND_DT < 120                                                                           | 12       | NULL              | NULL              | 119          | 45            | 1        |
#      | 4235_NTB_CUST_OPND_DT = 120                                                                           | 12       | NULL              | NULL              | 120          | 45            | 1        |
#      | 4235_NTB_CASL_CONSENT_F = Y                                                                           | 12       | NULL              | NULL              | 110          | 45            | 1        |
#      | 4235_NTB_CASL_CONSENT_F = N                                                                           | 12       | NULL              | NULL              | 10           | 45            | 1        |
#      | 4235_NTB_CASL_CONSENT_F = NULL                                                                        | 12       | NULL              | NULL              | 10           | 45            | 1        |
#      | 4235_NTB_UNSUBSCRIBED_F !=Y                                                                           | 12       | NULL              | NULL              | 10           | 45            | 1        |
#      | 4235_NTB_HARDBOUNCE_EMAIL_F !=Y                                                                       | 12       | NULL              | NULL              | 10           | 45            | 1        |
#      | 4235_NTC Creative_NTP_CUST_OPND_DT >120                                                                 | 12       | NULL              | NULL              | 121          | 45            | 1        |
#      | 4235_NTC Creative_NTP_CASL_CONSENT_F = Y                                                              | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                                                          | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                                              | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_NTC Creative_NTB_CUST_OPND_DT < 120                                                              | 12       | NULL              | NULL              | 119          | 45            | 1        |
#      | 4235_NTC Creative_NTB_CUST_OPND_DT = 120                                                              | 12       | NULL              | NULL              | 120          | 45            | 1        |
#      | 4235_NTC Creative_NTB_CASL_CONSENT_F = Y                                                              | 12       | NULL              | NULL              | 110          | 45            | 1        |
#      | 4235_NTC Creative_NTB_CASL_CONSENT_F = N                                                              | 12       | NULL              | NULL              | 10           | 45            | 1        |
#      | 4235_NTC Creative_NTB_CASL_CONSENT_F = NULL                                                           | 12       | NULL              | NULL              | 10           | 45            | 1        |
#      | 4235_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                                              | 12       | NULL              | NULL              | 10           | 45            | 1        |
#      | 4235_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                                                          | 12       | NULL              | NULL              | 10           | 45            | 1        |

      # Added for April 27th 2023 Release
      | 4235_Seg_08_SEGMENT_eq_Early_Career                                                                   | 12           | NULL              | NULL              | 125          | 45            | 1        |
      | 4235_Seg_08_SEGMENT_eq_HENRY                                                                          | 12           | NULL              | NULL              | 125          | 45            | 1        |
      # Prioritization TCs
#      | 4235_Prioritize_Seg_05_SEGMENT_eq_Early_Career_with_NTC                                               | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_Prioritize_Seg_05_SEGMENT_eq_HENRY_with_NTC                                                      | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_Prioritize_Seg_08_SEGMENT_eq_Early_Career_without_NTC                                            | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_Prioritize_Seg_08_SEGMENT_eq_HENRY_without_NTC                                                   | 12       | NULL              | NULL              | 125          | 45            | 1        |
#      | 4235_Prioritize_Seg_01_SEGMENT_eq_NULL                                                                | 12       | NULL              | NULL              | 125          | 45            | 1        |

      ## Added for may 25 203 rel
      | 4235_NTC Creative_ARRV_DT_lt_5years                                                                   | 12           | NULL              | NULL              | 121          | 1825          | 1        |

      ##Positive added for july 06 2023 REL
      | 4235_PRDCD_07_SUB PRDCD_11_4235072310_NTC                                                             | 14           | NULL              | NULL              | 125          | 45            | 1        |
      | 4235_PRDCD_07_SUB PRDCD_12_4235072310_NTC                                                             | 14           | NULL              | NULL              | 125          | 45            | 1        |
      | 4235_PRD CD- 07, SUB PRD CD -11                                                                       | 14           | NULL              | NULL              | 125          | NULL          | 1        |
      | 4235_PRD CD- 07, SUB PRD CD -12                                                                       | 14           | NULL              | NULL              | 125          | NULL          | 1        |
 ## prioritization Test cases

      | 4235_NTC Creative_Prioritize_Seg10_over_Seg10_and_Seg08                                               | 12           | NULL              | NULL              | 121          | 45            | 1        |
      | 4235_Non_NTC_Prioritize_Seg09_over_Seg09_Seg08_and_Seg01                                              | 12,12        | NULL              | NULL              | 121          | NULL          | 2        |
      | 4235_Non_NTC_Prioritize_Seg08_over_Seg08_and_Seg01                                                    | 12           | NULL              | NULL              | 121          | NULL          | 1        |

      ##Decommission segments for july 06 2023 REL
      | 4235_NTC_ (Creative Id - 4235092106)                                                                  | 12           | NULL              | NULL              | 125          | 45            | 1        |
      | 4235_NTC_ (Creative Id -4235092107)                                                                   | 12           | NULL              | NULL              | 125          | 45            | 1        |
      | 4235_SOL_LAST_LOGIN_DT beyond 90 daya and MOB_LAST_LOGIN_DT within 90 Days (Creative Id - 4235121702) | 14           | NULL              | NULL              | 125          | 45            | 1        |
      | 4235_SOL_LAST_LOGIN_DT as Null and MOB_LAST_LOGIN_DT within 90 Days (Creative Id - 4235121702)        | 14           | NULL              | NULL              | 125          | 45            | 1        |
      | 4235_SOL_LAST_LOGIN_DT within 90 Days and MOB_LAST_LOGIN_DT beyond 90 days (Creative Id - 4235121703) | 12           | NULL              | NULL              | 125          | 45            | 1        |
      | 4235_SOL_LAST_LOGIN_DT within 90 Days and MOB_LAST_LOGIN_DT as Null (Creative Id - 4235121703)        | 12           | NULL              | NULL              | 125          | 45            | 1        |

  @D2DEngagementDigitalAdoption @D2DEngagementDigitalAdoption_NegativeTestData_4235 @Workstream-4 @4235 @EMAIL @RS17104
  Scenario Outline: D2D Engagement Digital Adoption_RS17104_4235_EMAIL Create test data for negative testcases
    Given load data from "DigitalAdoption" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And  write MOB_LAST_LOGIN_DT "<MOB_LAST_LOGIN_DT>" value into sheet "CUST_DIM" for "<Test cases>"
    And  write SOL_LAST_LOGIN_DT "<SOL_LAST_LOGIN_DT>" value into sheet "CUST_DIM" for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_OPND_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write Generic Date in "ACCT_ODT" field with "<Acct_Odt>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                   | Acct_Odt | MOB_LAST_LOGIN_DT | SOL_LAST_LOGIN_DT | CUST_OPND_DT | Arriving_Date | Acct_Cnt |
      | N-4235_PRIM_CNTRY_CD!=CA                                                     | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRIM_CNTRY_CD=Null                                                    | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_CUST_TP_CD != PSNL                                                    | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_CUST_TP_CD =  Null                                                    | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_DO_NOT_SOLICIT_F = Y                                                  | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_CUST.AGE_Dt Equal to 15                                               | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_CUST.AGE is blank value                                               | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_CUST.AGE within range (1-16)                                          | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_CUST.AGE= NULL                                                        | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_Deceased_F = Y                                                        | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_Deceased_F = Null                                                     | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_Prv_Bnk_Ind=Y                                                         | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_Prv_Bnk_Ind=Null                                                      | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_CC_VIP_IND should be 2                                                | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_CC_VIP_IND should be 9                                                | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRIM_EMAIL_ADDR = Null                                                | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_INDV_INDV_FRST_NM =  Null                                             | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_INDV_LAST_NM = Null                                                   | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_Do not Email Flag-Y                                                   | 13       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_Do not Email Flag-Null                                                | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_VLD_EMAIL_F -N                                                        | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_VLD_EMAIL_F -Null                                                     | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_EMPLOYEE_STAFF_F=Y                                                    | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_LANG_CD = K                                                           | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_LANG_CD = NE                                                          | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N_4235_LANG_CD=Null                                                          | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_ACCT_SUBSYS_ID = KS                                                   | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_ACCT_SUBSYS_ID = Null                                                 | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRD CD- 01, SUB PRD CD -05                                            | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRD CD-02, SUB PRD CD -04                                             | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRD CD-07, SUB PRD CD -08                                             | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRD CD-13, SUB PRD CD -12                                             | 14       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRD CD-18, SUB PRD CD -01                                             | 15       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRD CD-18, SUB PRD CD -07                                             | 15       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRD CD-18, SUB PRD CD -03                                             | 15       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRD CD-19, SUB PRD CD -11                                             | 15       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRD CD-23, SUB PRD CD -02                                             | 15       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_SRC_ACCT_STAT_CD !=Active                                             | 15       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_SRC_ACCT_STAT_CD-Null                                                 | 15       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_Account Open Date less than 12 days                                   | 11       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_Account Open Date greater than 15 days                                | 16       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_Account Open Date equal to Null                                       | NULL     | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRIM_ACCT_HOLDER_F = N                                                | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_PRIM_ACCT_HOLDER_F = Null                                             | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N-4235_SOL_LAST_LOGIN_DT within 90 Days and MOB_LAST_LOGIN_DT within 90 Days | 12       | 70                | 80                | 125          | 45            | 1        |
      | N_4235_NTP_CASL_CONSENT_F = N                                                | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N_4235_NTP_CASL_CONSENT_F = NULL                                             | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N_4235_NTP_HARDBOUNCE_EMAIL_F = Y                                            | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N_4235_NTP_UNSUBSCRIBED_F =Y                                                 | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N_4235_NTB_UNSUBSCRIBED_F =Y                                                 | 12       | NULL              | NULL              | 110          | 45            | 1        |
      | N_4235_NTB_HARDBOUNCE_EMAIL_F = Y                                            | 12       | NULL              | NULL              | 110          | 45            | 1        |
      | N_4235_NTB_CUST_OPND_DT > 120                                                | 12       | NULL              | NULL              | 121          | 45            | 1        |
      | N_4235_NTC Creative_NTP_CASL_CONSENT_F = N                                   | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N_4235_NTC Creative_NTP_CASL_CONSENT_F = NULL                                | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N_4235_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y                               | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N_4235_NTC Creative_NTP_UNSUBSCRIBED_F =Y                                    | 12       | NULL              | NULL              | 125          | 45            | 1        |
      | N_4235_NTC Creative_NTB_UNSUBSCRIBED_F =Y                                    | 12       | NULL              | NULL              | 110          | 45            | 1        |
      | N_4235_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y                               | 12       | NULL              | NULL              | 110          | 45            | 1        |
      | N_4235_NTC Creative_NTB_CUST_OPND_DT > 120                                   | 12       | NULL              | NULL              | 121          | 45            | 1        |
      ## Added for may 25 203 rel
      | N_4235_NTC Creative_ARRV_DT_eq_5years                                        | 12       | NULL              | NULL              | 121          | 1826          | 1        |
      | N_4235_NTC Creative_ARRV_DT_gt_5years                                        | 12       | NULL              | NULL              | 121          | 1827          | 1        |
      | N_4235_NTC Creative_ARRV_DT_eq_NULL                                          | 12       | NULL              | NULL              | 121          | NULL          | 1        |

