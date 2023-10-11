@LongTermInvAdvice_MAT_TestLoad
Feature: Test Data Creation For LongTermInvestingAdvice for MAT Channel

  @LongTermInvestingAdviceMAT @LongTermInvestingAdvice_MAT_Base_TestData_6065 @6065 @MAT @RS23078
  Scenario Outline: LongTermInvestingAdvice 6065 RS23078 MAT Create test data for Base Line test cases
    Given load data from "LongTermAdvice_MAT" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<EVENT_DATE_Val>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    # CUST_EV_EB
    When write cid into "CUST_EV_EB" sheet for "<Test cases>"  having "<CUST_EV_EB_Cnt>" accounts
    Then write Timestamp in "INSRT_PROCESS_TMSTMP" field into "CUST_EV_EB" sheet for "<Test cases>" having "<CUST_EV_EB_Cnt>" accounts
    Then insert customer details in "CUST_EV_EB" table having "<CUST_EV_EB_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases               | Acct_Cnt | Insight_Cnt | CUST_EV_EB_Cnt | EXT_TABLE_Cnt | ADVISOR_LAST_CONTACT_DT_Val | EVENT_DATE_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6065_MAT_Base_Creative_1 | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |


  @LongTermAdviceMAT @LongTermAdvice_MAT_Positive_TestData_6065_LongTermInvAdvice @6065 @MAT @RS23078
  Scenario Outline: LongTermInvestingAdvice 6065 RS23078 MAT Create test data for Positive test cases
    Given load data from "LongTermAdvice_MAT" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<EVENT_DATE_Val>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    # CUST_EV_EB
    When write cid into "CUST_EV_EB" sheet for "<Test cases>"  having "<CUST_EV_EB_Cnt>" accounts
    Then write Timestamp in "INSRT_PROCESS_TMSTMP" field into "CUST_EV_EB" sheet for "<Test cases>" having "<CUST_EV_EB_Cnt>" accounts
    Then insert customer details in "CUST_EV_EB" table having "<CUST_EV_EB_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                                                                                                      | Acct_Cnt | Insight_Cnt | CUST_EV_EB_Cnt | EXT_TABLE_Cnt | ADVISOR_LAST_CONTACT_DT_Val | EVENT_DATE_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6065_MAT_CUST_AGE_eq_20                                                                                                         | 1        | 1           | 1              | 0             | 376                         | 45             | NULL                 | NULL               |
      | 6065_MAT_CUST_AGE_gt_20                                                                                                         | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | 6065_MAT_CUST_AGE_eq_70                                                                                                         | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | 6065_MAT_CUST_AGE_lt_70                                                                                                         | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | 6065_MAT_LANG_CD_eq_fr                                                                                                          | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | 6065_MAT_DO_NOT_SOLICIT_F_eq_NULL                                                                                               | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | 6065_MAT_Creative_1_ADVISOR_LAST_CONTACT_DT_gt_30                                                                               | 1        | 0           | 1              | 0             | 31                          | NULL           | NULL                 | NULL               |
      | 6065_MAT_GIVEN_NAME_ne_NULL_OR_INDV_TTL_NM_ne_NULL_OR_INDV_FRST_NM_ne_NULL_OR_INDV_LAST_NM_ne_NULL                              | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | 6065_MAT_Creative_1_ExtTable_Curr_Dt_lt_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE                                              | 1        | 0           | 1              | 1             | 376                         | NULL           | -1                   | -2                 |
      | 6065_MAT_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_gt_VALID_END_DATE                                              | 1        | 0           | 1              | 1             | 376                         | NULL           | 2                    | 1                  |
      | 6065_MAT_Creative_1_ExtTable_CAMPAIGN_CODE_ne_RS23078                                                                           | 1        | 0           | 1              | 1             | 376                         | NULL           | 1                    | -1                 |
      | 6065_MAT_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N                                                                       | 1        | 0           | 1              | 1             | 376                         | NULL           | 1                    | -1                 |
      | 6065_MAT_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                                                    | 1        | 0           | 1              | 1             | 376                         | NULL           | 1                    | -1                 |
## Added for july 06th 2023 REL
      | 6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_Non-registered_and_SRC_SYS_PRD_DESC_eq_Non-Registered Savings - Personal                      | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | 6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_Non-registered_and_SRC_SYS_PRD_DESC_eq_Non-Registered Savings Account  Personal               | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | 6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_Non-registered_and_PLN_ACCT_INVSTMNT_CAT_eq_Registered                                        | 2        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | 6065_MAT_SRC_SYS_PRD_DESC_eq_Non-Registered Savings - Personal_and_SRC_SYS_PRD_DESC_eq_Non-Registered Savings Account  Personal | 2        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
# Added for Oct 12th 2023 REL
      | 6065_NOT_AML_KYC_eq_NULL                                                                                                        | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |


  @LongTermAdviceMAT @LongTermAdvice_MAT_Negative_TestData_6065_LongTermInvAdvice @6065 @MAT @RS23078
  Scenario Outline: LongTermInvestingAdvice 6065 RS23078 MAT Create test data for Negative test cases
    Given load data from "LongTermAdvice_MAT" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<EVENT_DATE_Val>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    # CUST_EV_EB
    When write cid into "CUST_EV_EB" sheet for "<Test cases>"  having "<CUST_EV_EB_Cnt>" accounts
    Then write Timestamp in "INSRT_PROCESS_TMSTMP" field into "CUST_EV_EB" sheet for "<Test cases>" having "<CUST_EV_EB_Cnt>" accounts
    Then insert customer details in "CUST_EV_EB" table having "<CUST_EV_EB_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                                                                              | Acct_Cnt | Insight_Cnt | CUST_EV_EB_Cnt | EXT_TABLE_Cnt | ADVISOR_LAST_CONTACT_DT_Val | EVENT_DATE_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | N-6065_MAT_CUST_AGE_eq_NULL                                                                             | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_CUST_AGE_lt_20                                                                               | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_CUST_AGE_gt_70                                                                               | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_LANG_CD_ne_en                                                                                | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_LANG_CD_eq_NULL                                                                              | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_DO_NOT_SOLICIT_F_eq_Y                                                                        | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_MRKTBLE_F_ne_Y                                                                               | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_MRKTBLE_F_eq_NULL                                                                            | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_DECEASED_ne_N                                                                                | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_DECEASED_eq_NULL                                                                             | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_CUST_TP_CD_ne_PSNL                                                                           | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_PRIM_CNTRY_CD_ne_CA                                                                          | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_PRIM_CNTRY_CD_eq_NULL                                                                        | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_DO_NOT_CALL_F_ne_N                                                                           | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_DO_NOT_CALL_F_eq_NULL                                                                        | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_Creative_1_ADVISOR_LAST_CONTACT_DT_lt_30                                                     | 1        | 0           | 1              | 0             | 29                          | NULL           | NULL                 | NULL               |
      | N-6065_MAT_Creative_1_ADVISOR_LAST_CONTACT_DT_eq_30                                                     | 1        | 0           | 1              | 0             | 30                          | NULL           | NULL                 | NULL               |
      | N-6065_MAT_Creative_1_ADVISOR_LAST_CONTACT_DT_eq_NULL                                                   | 1        | 0           | 1              | 0             | NULL                        | NULL           | NULL                 | NULL               |
      | N-6065_MAT_GIVEN_NAME_eq_NULL_AND_INDV_TTL_NM_eq_NULL_AND_INDV_FRST_NM_eq_NULL_AND_INDV_LAST_NM_eq_NULL | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_NULL               | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_Invalid_CLOSEST_TRANSIT_NUM_eq_NULL       | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_Creative_1_DEDICATED_INVSTMNT_ADVISOR_F_ne_Y                                                 | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_Creative_1_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                              | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_Creative_1_ASSIGNED_FA_ID_eq_NULL                                                            | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_MAT_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE                    | 1        | 0           | 1              | 1             | 376                         | NULL           | 1                    | -1                 |
      | N-6065_MAT_Creative_1_ExtTable_Curr_Dt_eq_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE                    | 1        | 0           | 1              | 1             | 376                         | NULL           | 0                    | -1                 |
      | N-6065_MAT_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_eq_VALID_END_DATE                    | 1        | 0           | 1              | 1             | 376                         | NULL           | 1                    | 0                  |
      | N-6065_MAT_Creative_1_ExtTable_Curr_Dt_eq_VALID_START_DATE_Curr_Dt_eq_VALID_END_DATE                    | 1        | 0           | 1              | 1             | 376                         | NULL           | 0                    | 0                  |
## Added for july 06th 2023 REL
      | N_6065_MAT_ACCT_SUBSYS_ID_ne_UF                                                                         | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N_6065_MAT_ACCT_SUBSYS_ID_eq_NULL                                                                       | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N_6065_MAT_SRC_ACCT_STAT_CD_ne_Active                                                                   | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N_6065_MAT_SRC_ACCT_STAT_CD_eq_NULL                                                                     | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N_6065_MAT_PRIMARY_ACCT_HOLDER FLAG_ne_Y                                                                | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N_6065_MAT_PRIMARY_ACCT_HOLDER FLAG_eq_NULL                                                             | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N_6065_MAT_PLN_ACCT_INVSTMNT_CAT_ne_Registered                                                          | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N_6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_NULL                                                                | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N_6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_Non-registered_and_SRC_SYS_PRD_DESC_eq_NULL                         | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
## Added for Oct 12th 2023 REL
      | N-6065_NOT_AML_KYC_eq_Y                                                                                 | 1        | 0           | 1              | 0             | 376                         | NULL           | NULL                 | NULL               |
