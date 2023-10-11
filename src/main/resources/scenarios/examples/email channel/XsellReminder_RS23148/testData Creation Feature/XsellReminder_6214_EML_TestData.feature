@Xsell_Reminder_Offer_EML_TestLoad
Feature: Test Data Creation For Xsell Reminder Offer for EML Channel

  @Xsell_Sneak_Reminder_EML_Base_TestData_6214 @6214 @EML @RS23148
  Scenario Outline: Near Primacy D2D Bundle Xsell Reminder Offer 6214 RS23148 Create test data for Base Line test cases for EML Channel
    Given load data from "XsellReminder_EML_6214" excel sheet
    # CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
#    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table

    Examples:
      | Test cases           | Acct_Cnt | ARRV_DT_Val | ACCT_ODT_Val |
      | 6214_EML_BASE_Seg_01 | 3        | NULL        | 100,105      |
      | 6214_EML_BASE_Seg_02 | 2        | NULL        | 100          |
      | 6214_EML_BASE_Seg_03 | 1        | NULL        | 100          |

  @Xsell_Sneak_Reminder_EML_Positive_TestData_6214 @6214 @EML @RS23148
  Scenario Outline: Near Primacy D2D Bundle Xsell Reminder Offer 6214 RS23148 Create test data for Positive Line test cases for EML Channel
    Given load data from "XsellReminder_EML_6214" excel sheet
    # CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
#    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table

    Examples:
      | Test cases                                                                                          | Acct_Cnt | ARRV_DT_Val | ACCT_ODT_Val |
      #Positive Scenarios
#      | 6214_EML_Seg_01_FICO_SCORE_eq_700                                                                   | 2        | NULL        | 100          |
#      | 6214_EML_Seg_02_FICO_SCORE_eq_700                                                                   | 2        | NULL        | 100          |
#      | 6214_EML_Seg_03_FICO_SCORE_eq_700                                                                   | 1        | NULL        | 100          |
#      | 6214_EML_Seg_01_FICO_SCORE_gt_700                                                                   | 2        | NULL        | 100          |
#      | 6214_EML_Seg_02_FICO_SCORE_gt_700                                                                   | 2        | NULL        | 100          |
#      | 6214_EML_Seg_03_FICO_SCORE_gt_700                                                                   | 1        | NULL        | 100          |
#      | 6214_EML_Seg_01_CUST_AGE_gt_18                                                                      | 2        | NULL        | 100          |
#      | 6214_EML_Seg_02_CUST_AGE_eq_65                                                                      | 2        | NULL        | 100          |
#      | 6214_EML_Seg_03_EMPLOYEE_STAFF_F_eq_NULL                                                            | 1        | NULL        | 100          |
#      | 6214_EML_Seg_01_NOT_AML_KYC_eq_NULL                                                                 | 2        | NULL        | 100          |
#      | 6214_EML_Seg_02_PRIM_PROV_CD_eq_NULL                                                                | 2        | NULL        | 100          |
#      | 6214_EML_Seg_03_PHYSICIANS_F_eq_NULL                                                                | 1        | NULL        | 100          |
#      | 6214_EML_Seg_01_HARDBOUNCE_EMAIL_F_eq_NULL                                                          | 2        | NULL        | 100          |
#      | 6214_EML_Seg_02_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                                    | 2        | NULL        | 100          |
#      | 6214_EML_Seg_03_CRNT_BAL_AMT_eq_100                                                                 | 1        | NULL        | 100          |
#      | 6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_DM                                      | 2        | NULL        | 100          |
#      | 6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR                                      | 2        | NULL        | 100          |
#      | 6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG                                      | 2        | NULL        | 100          |
#      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                                           | 1        | NULL        | 100          |
#      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07                                           | 1        | NULL        | 100          |
#      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08                                           | 1        | NULL        | 100          |
#      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                                           | 1        | NULL        | 100          |
#      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                                           | 1        | NULL        | 100          |
#      | 6214_EML_Seg_03_Scotia Acct_Ultimate Acct                                                           | 1        | NULL        | 100          |
#      | 6214_EML_Seg_03_Ultimate Acct_Ultimate Acct                                                         | 1        | NULL        | 100          |
      | 6214_EML_Seg_01_Multiple CC Account                                                                 | 3        | NULL        | 100,105,110  |
#      #Positive Exclusion Scenarios
#      | 6214_EML_Seg_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 | 3        | NULL        | 100,NULL,119 |
#      | 6214_EML_Seg_02_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 | 3        | NULL        | 100,NULL,119 |
#      | 6214_EML_Seg_03_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_lt_120 | 2        | NULL        | 100,NULL,119 |
#      | 6214_EML_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_gt_120 | 3        | NULL        | 100,NULL,121 |
#      | 6214_EML_Seg_02_MCB_IND_ne_Y_ARRV_DT_eq_1400                                                        | 2        | 1400        | 100          |
#      | 6214_EML_Seg_03_MCB_IND_eq_Y_ARRV_DT_eq_2000                                                        | 1        | 2000        | 100          |


  @Xsell_Sneak_Reminder_EML_Negative_TestData_6214 @6214 @EML @RS23148
  Scenario Outline: Near Primacy D2D Bundle Xsell Reminder Offer 6214 RS23148 Create test data for Negative Line test cases for EML Channel
    Given load data from "XsellReminder_EML_6214" excel sheet
    # CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
#    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table

    Examples:
      | Test cases                                                                                            | Acct_Cnt | ARRV_DT_Val | ACCT_ODT_Val |
      #Negative Scenarios
      | N-6214_EML_Seg_03_DECEASED_F _eq_Y                                                                    | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_DECEASED_F _eq_NULL                                                                 | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_CUST_TP_CD_eq_ABCD                                                                  | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_CUST_TP_CD_eq_NULL                                                                  | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_PRIM_CNTRY_CD_ne_CA                                                                 | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_PRIM_CNTRY_CD_eq_NULL                                                               | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_CUST_AGE_lt_18                                                                      | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_CUST_AGE_gt_65                                                                      | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_LANG_CD_ne_en                                                                       | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_LANG_CD_eq_NULL                                                                     | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_EMPLOYEE_STAFF_F_eq_Y                                                               | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_MRKTBLE_F_ne_Y                                                                      | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_MRKTBLE_F_eq_NULL                                                                   | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_NOT_AML_KYC_eq_Y                                                                    | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_CC_VIP_IND_eq_2                                                                     | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_CC_VIP_IND_eq_9                                                                     | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_PRIM_PROV_CD_eq_QC                                                                  | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_PHYSICIANS_F_eq_Y                                                                   | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_PRIM_EMAIL_ADDR_eq_NULL                                                             | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_INDV_FRST_NM_eq_NULL                                                                | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_INDV_LAST_NM _eq_NULL                                                               | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_DO_NOT_EMAIL_F_eq_Y                                                                 | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_DO_NOT_EMAIL_F_eq_NULL                                                              | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_HARDBOUNCE_EMAIL_F_eq_Y                                                             | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_VLD_EMAIL_F_eq_N                                                                    | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_VLD_EMAIL_F_eq_NULL                                                                 | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                       | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_SRC_ACCT_STAT_CD_ne_A                                                               | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_SRC_ACCT_STAT_CD_eq_NULL                                                            | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_ACCT_ODT_lt_90                                                                      | 1        | NULL        | 89           |
      | N-6214_EML_Seg_03_ACCT_ODT_eq_NULL                                                                    | 1        | NULL        | NULL         |
      | N-6214_EML_Seg_03_CRNT_BAL_AMT_lt_100                                                                 | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_CRNT_BAL_AMT_eq_NULL                                                                | 1        | NULL        | 100          |
      | N-6214_EML_Seg_03_ACCT_SUBSYS_ID_ne_BB                                                                | 1        | NULL        | 100          |
      | N-6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_AAA_SRC_SYS_SUB_PRD_CD_eq_BB                                      | 2        | NULL        | 100          |
      | N-6214_EML_Seg_01_CC_MSPA                                                                             | 3        | NULL        | 100          |
      #Exclusion Scenarios
      | N-6214_EML_Seg_03_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 | 2        | NULL        | 100,119      |
      | N-6214_EML_Seg_03_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120 | 2        | NULL        | 100,120      |
      | N-6214_EML_Seg_03_MCB_IND_eq_Y_ARRV_DT_eq_1400                                                        | 1        | 1400        | 100          |







