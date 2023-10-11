@ULOC_CLI_6090_EML
Feature: Test data creation for EML ULOC CLI CIE6090

  @ULOC_CLI @ULOC_CLI_CIE6090_Base_TestData_EML @6090 @ULOC_CLI_EML @RS23043
  Scenario Outline: ULOC_CLI_RS23043_6090_EML Create test data for Base test cases
    Given load data from "ULOC_CLI_6090" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "CLI_OFR_ST_DT" field with "<CLI_OFR_ST_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "CLI_OFR_EXP_DT" field with "<CLI_OFR_EXP_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | CLI_OFR_ST_DT_Val | CLI_OFR_EXP_DT_Val |
      | 6090_EML_BASE_Creative_01 | 2        | 3                 | -40                |
      | 6090_EML_BASE_Creative_02 | 2        | 3                 | -40                |


#Load Data for POSITIVE TCs
  @ULOC_CLI @ULOC_CLI_CIE6090_Positive_TestData_EML @6090 @ULOC_CLI_EML @RS23043
  Scenario Outline: ULOC_CLI_RS23043_6090_EML Create test data for Positive test cases
    Given load data from "ULOC_CLI_6090" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "CLI_OFR_ST_DT" field with "<CLI_OFR_ST_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "CLI_OFR_EXP_DT" field with "<CLI_OFR_EXP_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                             | Acct_Cnt | CLI_OFR_ST_DT_Val | CLI_OFR_EXP_DT_Val |
      | 6090_EML_Creative_2_CC_VIP_IND_eq_NULL                                                                 | 2        | 3                 | -40                |
      | 6090_EML_Creative_1_CUST_AGE_eq_18                                                                     | 2        | 3                 | -40                |
      | 6090_EML_Creative_1_LANG_CD_eq_fr                                                                      | 2        | 3                 | -40                |
      | 6090_EML_Creative_2_CUST_AGE_eq_70                                                                     | 2        | 3                 | -40                |
      | 6090_EML_Creative_1_DO_NOT_SOLICIT_F_eq_NULL                                                           | 2        | 3                 | -40                |
      | 6090_EML_Creative_1_MK_LOC_LOANS_EMAIL_F_eq_NULL                                                       | 2        | 3                 | -40                |
      | 6090_EML_Creative_1_Curr_Dt_eq_CLI_OFR_ST_DT                                                           | 2        | 0                 | -40                |
      | 6090_EML_Creative_2_Curr_Dt_gt_CLI_OFR_ST_DT                                                           | 2        | 1                 | -40                |
      | 6090_EML_Creative_1_CLI_APRVD_CR_LMT_gt_CR_CRD_LMT_AMT                                                 | 2        | 3                 | -40                |
# Prioritization Scenarios
      | 6090_EML_Creative_1_Multiple_KS_Accounts_Prioritize_with_Highest_Approved_Limit_Same_Product           | 3        | 3,3               | -40,-40            |
#      | 6090_EML_Creative_1_Multiple_KS_Accounts_Prioritize_with_Highest_Approved_Limit_Different_Product      | 3        | 3,3               | -40,-40            |
#Transit Scenarios
      | 6090_EML_Creative_01_ASSIGNED_FA_TRANSIT_eq_00018_RESP_TRNST_NUM_eq_00018_CLOSEST_TRANSIT_NUM_eq_00018 | 2        | 3                 | -40                |
      | 6090_EML_Creative_02_ASSIGNED_FA_TRANSIT_eq_00018_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_NULL   | 2        | 3                 | -40                |
      | 6090_EML_Creative_01_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_00018_CLOSEST_TRANSIT_NUM_eq_NULL   | 2        | 3                 | -40                |
      | 6090_EML_Creative_02_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_00001_CLOSEST_TRANSIT_NUM_eq_00018  | 2        | 3                 | -40                |
      | 6090_EML_Creative_01_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_00018   | 2        | 3                 | -40                |




#Load Data for NEGATIVE TCs
  @ULOC_CLI @ULOC_CLI_CIE6090_Negative_TestData_EML @6090 @ULOC_CLI_EML @RS23043
  Scenario Outline: ULOC_CLI_RS23043_6090_EML Create test data for Negative test cases
    Given load data from "ULOC_CLI_6090" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "CLI_OFR_ST_DT" field with "<CLI_OFR_ST_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "CLI_OFR_EXP_DT" field with "<CLI_OFR_EXP_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                                | Acct_Cnt | CLI_OFR_ST_DT_Val | CLI_OFR_EXP_DT_Val |
      | N-6090_EML_Creative_2_VLD_EMAIL_F_ne_Y                                                                    | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_VLD_EMAIL_F_eq_NULL                                                                 | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_DO_NOT_EMAIL_F_ne_N                                                                 | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_DO_NOT_EMAIL_F_eq_NULL                                                              | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_DO_NOT_SOLICIT_F_eq_Y                                                               | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_MK_LOC_LOANS_EMAIL_F_eq_N                                                           | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_PRIM_EMAIL_ADDR_eq_NULL                                                             | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_CUST_AGE_lt_18                                                                      | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_CUST_AGE_eq_NULL                                                                    | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_CUST_AGE_gt_70                                                                      | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_DECEASED_ne_N                                                                       | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_DECEASED_eq_NULL                                                                    | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_LANG_CD_ne_fr                                                                       | 2        | 3                 | -40                |
      | N-6090_EML_Creative_1_LANG_CD_eq_NULL                                                                     | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_CUST_TP_CD_ne_PSNL                                                                  | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_PRIM_CNTRY_CD _ne_CA                                                                | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_PRIM_CNTRY_CD _eq_NULL                                                              | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_CC_VIP_IND_eq_2                                                                     | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_CC_VIP_IND_eq_9                                                                     | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_MRKTBLE_F_ne_Y                                                                      | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_MRKTBLE_F_ne_NULL                                                                   | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_INDV_FRST_NM_eq_NULL                                                                | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_INDV_LAST_NM_eq_NULL                                                                | 2        | 3                 | -40                |
      | N-6090_EML_ACCT_SUBSYS_ID_ne_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RL   | 2        | 3                 | -40                |
      | N-6090_EML_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_ne_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RL   | 2        | 3                 | -40                |
      | N-6090_EML_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_ne_SCL_SRC_SYS_SUB_PRD_CD_eq_RL   | 2        | 3                 | -40                |
      | N-6090_EML_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_ne_RL   | 2        | 3                 | -40                |
      | N-6090_EML_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RL | 2        | 3                 | -40                |
      | N-6090_EML_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_NULL_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RL   | 2        | 3                 | -40                |
      | N-6090_EML_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_RL  | 2        | 3                 | -40                |
      | N-6090_EML_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_NULL | 2        | 3                 | -40                |
      | N-6090_EML_CLI_OFR_F_ne_Z                                                                                 | 2        | 3                 | -40                |
      | N-6090_EML_CLI_OFR_F_eq_NULL                                                                              | 2        | 3                 | -40                |
      | N-6090_EML_CLI_OFR_CRNT_F_ne_Y                                                                            | 2        | 3                 | -40                |
      | N-6090_EML_CLI_OFR_CRNT_F_eq_NULL                                                                         | 2        | 3                 | -40                |
      | N-6090_EML_Curr_Dt_lt_CLI_OFR_ST_DT                                                                       | 2        | -3                | -40                |
      | N-6090_EML_Curr_Dt_gt_CLI_OFR_EXP_DT                                                                      | 2        | 3                 | 2                  |
      | N-6090_EML_Creative_2_CLI_OFR_ST_DT_NULL                                                                  | 2        | NULL              | -40                |
      | N-6090_EML_CLI_APRVD_CR_LMT_lt_CR_CRD_LMT_AMT                                                             | 2        | 3                 | -40                |
      | N-6090_EML_CLI_APRVD_CR_LMT_eq_CR_CRD_LMT_AMT                                                             | 2        | 3                 | -40                |
      | N-6090_EML_CLI_APRVD_CR_LMT_eq_NULL                                                                       | 2        | 3                 | -40                |
      | N-6090_EML_CC_SCNRY_CUST_ID_NOT_Null                                                                      | 2        | 3                 | -40                |
      | N-6090_EML_Creative_2_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                       | 2        | 3                 | -40                |
#      | N-6090_EML_Creative_2_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                    | 2        | 3                 | -40                |
#Transit Scenarios
      | N-6090_EML_Creative_01_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_NULL     | 2        | 3                 | -40                |
      | N-6090_EML_Creative_02_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_00001_CLOSEST_TRANSIT_NUM_eq_NULL    | 2        | 3                 | -40                |





