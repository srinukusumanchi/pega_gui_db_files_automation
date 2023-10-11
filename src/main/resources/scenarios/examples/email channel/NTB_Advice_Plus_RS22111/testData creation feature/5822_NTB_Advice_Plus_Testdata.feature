@NTB_AdvicePlus_EML_5822_EMAIL
Feature: Test data creation for EMail NTB_AdvicePlus

  @NTB_AdvicePlus_5822 @EMAIL @NTB_AdvicePlus_5822_BASE_TESTDATA @RS22111 @5822
  Scenario Outline: NTB_AdvicePlus_RS22111_5822_EMAIL Create test data for Base test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_Open_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write Generic Date in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    And write account odt "<ACCT_OPENED_DT>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases       | Acct_Cnt | Arriving_Date | CUST_Open_Date | ACCT_OPENED_DT |
      | 5822_EML_BASE_01 | 1        | NULL          | 90             | 55             |
      | 5822_EML_BASE_02 | 1        | 45            | 90             | 55             |
      | 5822_EML_BASE_03 | 1        | NULL          | 90             | 55             |
      | 5822_EML_BASE_04 | 1        | NULL          | 90             | 55             |
      | 5822_EML_BASE_05 | 1        | NULL          | 90             | 55             |
      | 5822_EML_BASE_06 | 1        | 45            | 90             | 55             |


  @NTB_AdvicePlus_5822 @EMAIL @NTB_AdvicePlus_5822_Positive_TESTDATA @RS22111 @5822
  Scenario Outline: NTB_AdvicePlus_RS22111_5822_EMAIL Create test data for Positive test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_Open_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write Generic Date in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    And write account odt "<ACCT_OPENED_DT>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                                                                  | Acct_Cnt | Arriving_Date | CUST_Open_Date | ACCT_OPENED_DT |
      | 5822_EML_LANG_CD_eq_fr                                                                                                                      | 1        | NULL          | 90             | 55             |
      | 5822_EML_CUST_AGE_eq_18                                                                                                                     | 1        | NULL          | 90             | 55             |
      | 5822_EML_CUST_OPND_DT_eq_120                                                                                                                | 1        | NULL          | 120            | 55             |
      | 5822_EML_ARRV_DT_eq_1825_days                                                                                                               | 1        | 1825          | 90             | 55             |
      | 5822_EML_DO_NOT_SOLICIT_F_eq_NULL                                                                                                           | 1        | 45            | 90             | 55             |
      | 5822_EML_NOT_AML_KYC_eq_NULL                                                                                                                | 1        | 45            | 90             | 55             |
      | 5822_EML_UNSUBSCRIBED_F_eq_NULL                                                                                                             | 1        | 45            | 90             | 55             |
      | 5822_EML_HARDBOUNCE_EMAIL_F_eq_NULL                                                                                                         | 1        | 45            | 90             | 55             |
      | 5822_EML_MK_NEWSLETTERS_EMAIL_F_eq_NULL                                                                                                     | 1        | 45            | 90             | 55             |
      | 5822_EML_ACCT_ODT_eq_50                                                                                                                     | 1        | 45            | 90             | 50             |
      | 5822_EML_ACCT_ODT_eq_51                                                                                                                     | 1        | 45            | 90             | 51             |
      | 5822_EML_ACCT_ODT_eq_59                                                                                                                     | 1        | 45            | 90             | 59             |
      | 5822_EML_ACCT_ODT_eq_60                                                                                                                     | 1        | 45            | 90             | 60             |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Credit_Cards                                                                                                  | 1        | NULL          | 90             | 55             |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_High_Interest_Savings_Accounts                                                                                | 1        | NULL          | 90             | 55             |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Cash_Term_Deposit                                                                                             | 1        | NULL          | 90             | 55             |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Cash_Demand_Deposit                                                                                           | 1        | NULL          | 90             | 55             |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Unsecured_Lending                                                                                             | 1        | NULL          | 90             | 55             |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Secure_Lines_Of_Credit                                                                                        | 1        | NULL          | 90             | 55             |
      | 5822_EML_MCB_IND_ne_Y                                                                                                                       | 1        | NULL          | 90             | 55             |
      | 5822_EML_MCB_IND_eq_NULL                                                                                                                    | 1        | NULL          | 90             | 55             |
      | 5822_EML_ARRV_DT_gt_1825_days                                                                                                               | 1        | 1826          | 90             | 55             |
      | 5822_EML_ARRV_DT_gt_1826_days                                                                                                               | 1        | 1827          | 90             | 55             |

      | 5822_EML_ARRV_DT_eq_NULL                                                                                                                    | 1        | NULL          | 90             | 55             |

      | 5822_EML_ACCT_SUBSYS_ID_eq_KS_PROD_HIER_LEVEL_3_eq_CC_CTD_UL_SRC_ACCT_STAT_CD_eq_A_PRIMARY_ACCT_HOLDER_FLAG_ne_Y_Lending_Investing_Loans    | 3        | 45            | 90             | 55             |
      | 5822_EML_ACCT_SUBSYS_ID_eq_KS_PROD_HIER_LEVEL_3_eq_CC_CTD_UL_SRC_ACCT_STAT_CD_ne_A_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_Lending_Investing_Loans    | 3        | 45            | 90             | 55             |
      | 5822_EML_ACCT_SUBSYS_ID_eq_KS_PROD_HIER_LEVEL_3_eq_CC_CTD_UL_SRC_ACCT_STAT_CD_eq_A_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL_Lending_Investing_Loans | 3        | 45            | 90             | 55             |

## Positive Scenarios added for Aug 31st 2023 Release
      | 5822_EML_Seg_05_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                                                                               | 1        | NULL          | 90             | 55             |
      | 5822_EML_Seg_06_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                                                                               | 1        | 45            | 90             | 55             |


## Prioritization Scenarios added for April 27th and Aug 31st 2023 Release
      | 5822_EML_Seg_02_SEGMENT_eq_Early_Career_with_NTC                                                                                            | 1        | 45            | 90             | 55             |
      | 5822_EML_Seg_02_SEGMENT_eq_HENRY_with_NTC                                                                                                   | 1        | 45            | 90             | 55             |
      | 5822_EML_Seg_03_SEGMENT_eq_Early_Career_without_NTC                                                                                         | 1        | NULL          | 90             | 55             |
      | 5822_EML_Seg_04_SEGMENT_eq_HENRY_without_NTC                                                                                                | 1        | NULL          | 90             | 55             |
      | 5822_EML_Seg_01_SEGMENT_eq_NULL_without_NTC                                                                                                 | 1        | NULL          | 90             | 55             |
      | 5822_EML_Seg_05_SEGMENT_eq_Early-Career                                                                                                     | 1        | NULL          | 90             | 55             |
      | 5822_EML_Seg_05_SEGMENT_eq_HENRY                                                                                                            | 1        | NULL          | 90             | 55             |
      | 5822_EML_Seg_05_with_2_BB_Accounts                                                                                                          | 2        | NULL          | 90             | 55             |
      | 5822_EML_Seg_05_with_2_BB_Accounts_SEGMENT_eq_Early-Career                                                                                  | 2        | NULL          | 90             | 55             |
      | 5822_EML_Seg_05_with_2_BB_Accounts_SEGMENT_eq_HENRY                                                                                         | 2        | NULL          | 90             | 55             |


  @NTB_AdvicePlus_5822 @EMAIL @NTB_AdvicePlus_5822_Negative_TESTDATA @RS22111 @5822
  Scenario Outline: NTB_AdvicePlus_RS22111_5822_EMAIL Create test data for Negative test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_Open_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write Generic Date in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    And write account odt "<ACCT_OPENED_DT>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                                                                 | Acct_Cnt | Arriving_Date | CUST_Open_Date | ACCT_OPENED_DT |
      | N_5822_EML_DECEASED_F_eq_Y                                                                                                                 | 1        | NULL          | 90             | 55             |
      | N_5822_EML_DECEASED_F_eq_Null                                                                                                              | 1        | NULL          | 90             | 55             |
      | N_5822_EML_CUST_TP_CD_ne_PSNL                                                                                                              | 1        | NULL          | 90             | 55             |
      | N_5822_EML_CUST_TP_CD_eq_NULL                                                                                                              | 1        | NULL          | 90             | 55             |
      | N_5822_EML_PRIM_CNTRY_CD_ne_CA                                                                                                             | 1        | NULL          | 90             | 55             |
      | N_5822_EML_PRIM_CNTRY_CD_eq_NULL                                                                                                           | 1        | NULL          | 90             | 55             |
      | N_5822_EML_CUST_AGE_lt_18                                                                                                                  | 1        | NULL          | 90             | 55             |
      | N_5822_EML_CUST_AGE_eq_NULL                                                                                                                | 1        | NULL          | 90             | 55             |
      | N_5822_EML_LANG_CD_eq_bn                                                                                                                   | 1        | NULL          | 90             | 55             |
      | N_5822_EML_Lang_CD_eq_NULL                                                                                                                 | 1        | NULL          | 90             | 55             |
      | N_5822_EML_DO_NOT_SOLICIT_F_eq_Y                                                                                                           | 1        | NULL          | 90             | 55             |
      | N_5822_EML_NOT_AML_KYC_eq_Y                                                                                                                | 1        | NULL          | 90             | 55             |
      | N_5822_EML_CUST_OPND_DT_gt_120_days                                                                                                        | 1        | NULL          | 121            | 55             |
      | N_5822_EML_CUST_OPND_DT_eq_NULL                                                                                                            | 1        | NULL          | NULL           | 55             |
      | N_5822_EML_ASSIGNED_FA_TRANSIT_ne_NULL                                                                                                     | 1        | NULL          | 90             | 55             |
      | N_5822_EML_MAPP_TMRRW_LAST_SESS_DT_ne_NULL                                                                                                 | 1        | NULL          | 90             | 55             |
      | N_5822_EML_VLD_EMAIL_F_ne_Y                                                                                                                | 1        | 45            | 90             | 55             |
      | N_5822_EML_VLD_EMAIL_F_eq_NULL                                                                                                             | 1        | 45            | 90             | 55             |
      | N_5822_EML_PRIM_EMAIL_ADDR_eq_NULL                                                                                                         | 1        | 45            | 90             | 55             |
      | N_5822_EML_INDV_FRST_NM_eq_NULL                                                                                                            | 1        | 45            | 90             | 55             |
      | N_5822_EML_UNSUBSCRIBED_F_eq_Y                                                                                                             | 1        | 45            | 90             | 55             |
      | N_5822_EML_HARDBOUNCE_EMAIL_F_eq_Y                                                                                                         | 1        | 45            | 90             | 55             |
      | N_5822_EML_DO_NOT_EMAIL_F_ne_N                                                                                                             | 1        | 45            | 90             | 55             |
      | N_5822_EML_DO_NOT_EMAIL_F_eq_NULL                                                                                                          | 1        | 45            | 90             | 55             |
      | N_5822_EML_CASL_CONSENT_F_ne_Y                                                                                                             | 1        | 45            | 90             | 55             |
      | N_5822_EML_CASL_CONSENT_F_eq_NULL                                                                                                          | 1        | 45            | 90             | 55             |
      | N_5822_EML_MK_NEWSLETTERS_EMAIL_F_eq_N                                                                                                     | 1        | 45            | 90             | 55             |
      | N_5822_EML_ACCT_ODT_eq_49                                                                                                                  | 1        | 45            | 90             | 49             |
      | N_5822_EML_ACCT_ODT_eq_61                                                                                                                  | 1        | 45            | 90             | 61             |
      | N_5822_EML_ACCT_ODT_eq_NULL                                                                                                                | 1        | 45            | 90             | NULL           |
      | N_5822_EML_ACCT_SUBSYS_ID_eq_KS_PROD_HIER_LEVEL_3_eq_CC_CTD_UL_SRC_ACCT_STAT_CD_eq_A_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_Lending_Investing_Loans | 3        | 45            | 90             | 55             |


    ## Positive Scenarios for AFIL Exclusion
  @NTB_AdvicePlus_5822 @EMAIL @NTB_AdvicePlus_5822_AFIL_Exclusion_Positive_TESTDATA @RS22111 @5822
  Scenario Outline: NTB_AdvicePlus_RS22111_5822_EMAIL Create test data for AFIL Exclusion Positive test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_Open_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different account odt "<ACCT_OPENED_DT>""<ACCT_OPENED_DT_SL>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                               | Acct_Cnt | Arriving_Date | CUST_Open_Date | ACCT_OPENED_DT | ACCT_OPENED_DT_SL |
      | 5822_EML_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   | 2        | NULL          | 90             | 55             | 100               |
      | 5822_EML_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL | 2        | NULL          | 90             | 55             | 100               |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   | 2        | NULL          | 90             | 55             | 100               |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_NULL_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL     | 2        | NULL          | 90             | 55             | 100               |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_09_ACCT_ODT_lt_180days_AFIL   | 2        | NULL          | 90             | 55             | 100               |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_NULL_ACCT_ODT_lt_180days_AFIL | 2        | NULL          | 90             | 55             | 100               |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_gt_180days_AFIL   | 2        | NULL          | 90             | 55             | 181               |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_NULL_AFIL      | 2        | NULL          | 90             | 55             | NULL              |


    ## Negative Scenarios for AFIL Exclusion
  @NTB_AdvicePlus_5822 @EMAIL @NTB_AdvicePlus_5822_AFIL_Exclusion_Negative_TESTDATA @RS22111 @5822
  Scenario Outline: NTB_AdvicePlus_RS22111_5822_EMAIL Create test data for AFIL Exclusion Negative test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_Open_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different account odt "<ACCT_OPENED_DT>""<ACCT_OPENED_DT_SL>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                               | Acct_Cnt | Arriving_Date | CUST_Open_Date | ACCT_OPENED_DT | ACCT_OPENED_DT_SL |
      | N_5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL | 2        | NULL          | 90             | 55             | 179               |
      | N_5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_180days_AFIL | 2        | NULL          | 90             | 55             | 180               |



