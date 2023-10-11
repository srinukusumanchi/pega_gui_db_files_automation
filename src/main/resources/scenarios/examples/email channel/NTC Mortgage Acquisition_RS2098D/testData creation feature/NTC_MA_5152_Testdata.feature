@NTCMortgageAcquisition_5152_TestDataCreation
Feature: Test data creation for NTC Mortgage Acquisition 5152 For Email Channel

  @NTCMortgageAcquisionEmail @NTCMA_Email_5152_Positive_TestData @EMAIL @RS2098D
  Scenario Outline: NTCMortgageAcquisition_EMAIL Create test data for positive test cases
    Given load data from "NTCMAEmail" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<Arrival_Dt_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases                         | Arrival_Dt_Val | ACCT_ODT_Val | Acct_Cnt |
#      | 5152_DECEASED_F = N                                      | 45       | 272            | 1            |
#      | 5152_CUST_TP_CD = PSNL                                   | 45       | 272            | 1            |
#      | 5152_Primary Country Cd = CA                             | 45       | 272            | 1            |
#      | 5152_CUST_AGE =18                                        | 45       | 272            | 1            |
#      | 5152_CUST_AGE > 18                                       | 45       | 272            | 1            |
#      | 5152_LANG_CD in E                                        | 45       | 272            | 1            |
#      | 5152_LANG_CD in EN                                       | 45       | 272            | 1            |
#      | 5152_LANG_CD in F                                        | 45       | 272            | 1            |
#      | 5152_LANG_CD in FR                                       | 45       | 272            | 1            |
#      | 5152_LANG_CD in Small Case e                             | 45       | 272            | 1            |
#      | 5152_LANG_CD in Small Case en                            | 45       | 272            | 1            |
#      | 5152_LANG_CD in Small Case f                             | 45       | 272            | 1            |
#      | 5152_LANG_CD in Small Case fr                            | 45       | 272            | 1            |
#      | 5152_DO_NOT_SOLICIT_F !=  Y                              | 45       | 272            | 1            |
#      | 5152_DO_NOT_SOLICIT_F =  NULL                            | 45       | 272            | 1            |
#      | 5152_MRKTBLE_F =  Y                                      | 45       | 272            | 1            |
#      | 5152_IMMGRTN_CAT_CD not in (S , S00)                     | 45       | 272            | 1            |
#      | 5152_Physicians_F != Y                                   | 45       | 272            | 1            |
#      | 5152_Physicians_F = NULL                                 | 45       | 272            | 1            |
#      | 5152_MCB_IND = Y                                         | 45       | 272            | 1            |
      | 5152_ARRV_DT <  5 years            | 45             | 272          | 1        |
      | 5152_ARRV_DT_eq_1825days            | 1825           | 272          | 1        |
#      | 5152_ACCT_ODT = 271                                      | 45       | 271            | 1            |
#      | 5152_ACCT_ODT = 276                                      | 45       | 276            | 1            |
#      | 5152_DO_NOT_EMAIL_F = N                                  | 45       | 272            | 1            |
#      | 5152_VLD_EMAIL_FLAG = Y                                  | 45       | 272            | 1            |
#      | 5152_PRIM_EMAIL_ADDR != NULL                             | 45       | 272            | 1            |
#      | 5152_INDV_FIRST_NAME != NULL                             | 45       | 272            | 1            |
#      | 5152_MK_BK_INFO_ACCTS_EMAIL_F != N                       | 45       | 272            | 1            |
#      | 5152_MK_BK_INFO_ACCTS_EMAIL_F = NULL                     | 45       | 272            | 1            |
#      | 5152_ACCT_SUBSYS_ID = BB                                 | 45       | 272            | 1            |
#      | 5152_SRC_SACCT_STAT_CD = A                               | 45       | 272            | 1            |
#      | 5152_ACCT_ODT in (271-276)                               | 45       | 275            | 1            |
#      | 5152_PRD CD = 13 && SUB PRD CD IN (01 OR 03 OR 07 OR 08) | 45       | 272            | 1            |
#      | 5152_PRIMARY_ACCT_HOLDER_FLAG = Y                        | 45       | 272            | 1            |
#      | 5152_5152022201_IMMGRTN_CAT_CD in FW                     | 45       | 272            | 1            |
#      | 5152_5152022201_IMMGRTN_CAT_CD in FW0                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in C1                     | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in C2                     | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in EN2                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in FC1                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in FC2                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in FC3                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in PV1                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in PV2                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in SE2                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in STP                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in SW1                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in SW2                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in SW3                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in NV5                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in 999                    | 45       | 272            | 1            |
#      | 5152_5152022202_IMMGRTN_CAT_CD in 000                    | 45       | 272            | 1            |
      | 5152_ARRV_DT <  5 years_Creative01 | 45             | 272          | 1        |
      | 5152_ARRV_DT =  5 years_Creative01 | 1825           | 272          | 1        |


  @NTCMortgageAcquisionEmail @NTCMA_Email_5152_Negative_TestData @EMAIL @RS2098D
  Scenario Outline: NTCMortgageAcquisition_EMAIL Create test data for Negative test cases
    Given load data from "NTCMAEmail" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<Arrival_Dt_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases                                              | Acct_Cnt | Arrival_Dt_Val | ACCT_ODT_Val |
#      | N_5152_DECEASED_F = Y                                   | 1        | 45             | 272          |
#      | N_5152_DECEASED_F = NULL                                | 1        | 45             | 272          |
#      | N_5152_CUST_TP_CD != PSNL                               | 1        | 45             | 272          |
#      | N_5152_Primary Country Cd != CA                         | 1        | 45             | 272          |
#      | N_5152_Primary Country Cd = NULL                        | 1        | 45             | 272          |
#      | N_5152_CUST_AGE = 17                                    | 1        | 45             | 272          |
#      | N_5152_CUST_AGE = NULL                                  | 1        | 45             | 272          |
#      | N_5152_LANG_CD in K                                     | 1        | 45             | 272          |
#      | N_5152_LANG_CD in NE                                    | 1        | 45             | 272          |
#      | N_5152_LANG_CD in NULL                                  | 1        | 45             | 272          |
#      | N_5152_DO_NOT_SOLICIT_F =  Y                            | 1        | 45             | 272          |
#      | N_5152_MRKTBLE_F =  N                                   | 1        | 45             | 272          |
#      | N_5152_MRKTBLE_F =  NULL                                | 1        | 45             | 272          |
#      | N_5152_IMMGRTN_CAT_CD not in S00                        | 1        | 45             | 272          |
#      | N_5152_IMMGRTN_CAT_CD not in S                          | 1        | 45             | 272          |
#      | N_5152_IMMGRTN_CAT_CD = NULL                            | 1        | 45             | 272          |
#      | N_5152_Physicians_F = Y                                 | 1        | 45             | 272          |
#      | N_5152_MCB_IND = N                                      | 1        | 45             | 272          |
#      | N_5152_MCB_IND = NULL                                   | 1        | 45             | 272          |
#      | N_5152_ARRV_DT = 5 years                                | 1        | 1826           | 272          |
      | N_5152_ARRV_DT > 5 years                                | 1        | 1827           | 272          |
#      | N_5152_ACCT_ODT = 1                                     | 1        | 45             | 1            |
#      | N_5152_ACCT_ODT < 271                                   | 1        | 45             | 270          |
#      | N_5152_ACCT_ODT > 276                                   | 1        | 45             | 277          |
#      | N_5152_ACCT_ODT = NULL                                  | 1        | 45             | NULL         |
#      | N_5152_ACCT_SUBSYS_ID! = BB                             | 1        | 45             | 272          |
#      | N_5152_SRC_SACCT_STAT_CD! = A                           | 1        | 45             | 272          |
#      | N_5152_PRD CD = 01 && SUB PRD CD IN (01,02,03,04)       | 1        | 45             | 272          |
#      | N_5152_PRD CD = 02 && SUB PRD CD IN (01,02,03)          | 1        | 45             | 272          |
#      | N_5152_PRD CD = 19 && SUB PRD CD IN (01,02,03,04,07,08) | 1        | 45             | 272          |
#      | N_5152_PRD CD = 07 && SUB PRD CD IN (11,12)             | 1        | 45             | 272          |
#      | N_5152_PRD CD = 23 && SUB PRD CD IN (01,03)             | 1        | 45             | 272          |
#      | N_5152_DO_NOT_EMAIL_F = Y                               | 1        | 45             | 272          |
#      | N_5152_DO_NOT_EMAIL_F = NULL                            | 1        | 45             | 272          |
#      | N_5152_VLD_EMAIL_FLAG = NULL                            | 1        | 45             | 272          |
#      | N_5152_VLD_EMAIL_FLAG = N                               | 1        | 45             | 272          |
#      | N_5152_PRIM_EMAIL_ADDR = NULL                           | 1        | 45             | 272          |
#      | N_5152_PRIM_EMAIL_ADDR = BLANK                          | 1        | 45             | 272          |
#      | N_5152_INDV_FIRST_NAME = NULL                           | 1        | 45             | 272          |
#      | N_5152_INDV_FIRST_NAME = BLANK                          | 1        | 45             | 272          |
#      | N_5152_MK_BK_INFO_ACCTS_EMAIL_F = N                     | 1        | 45             | 272          |
#      | N_5152_PRIMARY_ACCT_HOLDER_FLAG = N                     | 1        | 45             | 272          |
#      | N_5152_PRIMARY_ACCT_HOLDER_FLAG = NULL                  | 1        | 45             | 272          |
#      | N_5152_ARRV_DT > 5 years_Creative02                     | 1        | 1826           | 272          |
#      | N_5152_ARRV_DT_eq_NULL                                  | 1        | NULL           | 272          |

  @NTCMortgageAcquisionEmail @NTCMA_Email_5152_MultipleAccounts_EMAIl_Positive_TestData @EMAIL @RS2098D
  Scenario Outline: NTCMortgageAcquisition_EMAIL Create test data for Multiple Accounts positive And Negative test cases
    Given load data from "NTCMAEmail" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Dual accounts odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases | Acct_Odt |
#      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 01 && SUB PRD CD IN (01 or 02 or 03 or 04)             | 272      |
#      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 02 && SUB PRD CD IN (01 or 02 or 03)                   | 272      |
#      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 19 && SUB PRD CD IN (01 or 02 or 03 or 04 or 07 or 08) | 272      |
#      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 07 && SUB PRD CD IN (11 or 12)                         | 272      |
#      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 13 && SUB PRD CD IN (01 or 03 or 07 or 08)             | 272      |
#      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 23 && SUB PRD CD IN (01 or 03)                         | 272      |
#      | 5152_1Preferred_With_ACCT_SUBSYS_ID = UO AND SRC_ACCT_STAT_CD! = Active                                        | 272      |
#      | 5152_1Preferred_With_ACCT_SUBSYS_ID! = UO AND SRC_ACCT_STAT_CD = Active                                        | 272      |
#      | N_5152_1Preferred_With_PRD CD = 01 && SUB PRD CD IN (01,02,03,04)                                              | 272      |
#      | N_5152_1Preferred_With_PRD CD = 02 && SUB PRD CD IN (01,02,03)                                                 | 272      |
#      | N_5152_1Preferred_With_PRD CD = 19 && SUB PRD CD IN (01,02,03,04,07,08)                                        | 272      |
#      | N_5152_1Preferred_With_PRD CD = 07 && SUB PRD CD IN (11,12)                                                    | 272      |
#      | N_5152_1Preferred_With_PRD CD = 13 && SUB PRD CD IN (01,03,07,08)                                              | 272      |
#      | N_5152_1Preferred_With_PRD CD = 23 && SUB PRD CD IN (01,03)                                                    | 272      |
#      | N_5152_1Preferred_With_ACCT_SUBSYS_ID = UO AND SRC_ACCT_STAT_CD = Active                                       | 272      |
