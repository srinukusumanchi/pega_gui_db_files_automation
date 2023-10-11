@LongTermInvAdvice_SF_TestLoad
Feature: Test Data Creation For LongTermInvestingAdvice for SF Channel

  @LongTermInvestingAdviceSF @LongTermInvestingAdviceSF_Base_TestData_6065 @6065 @SFM @RS23078
  Scenario Outline: LongTermInvestingAdvice 6065 RS23078 SF Create test data for Base Line for positive test cases

    Given load data from "LongTermAdvice" excel sheet
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

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases              | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | ADVISOR_LAST_CONTACT_DT_Val | EVENT_DATE_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6065_SF_Base_Creative_1 | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |


  @LongTermAdviceSF @LongTermAdviceSF_Positive_TestData_6065_LongTermInvAdviceSF @6003 @SFM @RS23078 @positive_6065_May2023
  Scenario Outline: Long Term Investing Advice SF 6065 RS23078 SF Create test data for Loading data for LongTermInvAdviceSF positive test cases

    Given load data from "LongTermAdvice" excel sheet
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

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                                                                        | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | ADVISOR_LAST_CONTACT_DT_Val | EVENT_DATE_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6065_SF_CUST_AGE_eq_20                                                                            | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | 6065_SF_CUST_AGE_gt_20                                                                            | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | 6065_SF_CUST_AGE_eq_70                                                                            | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | 6065_SF_CUST_AGE_lt_70                                                                            | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | 6065_SF_LANG_CD_eq_fr                                                                             | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | 6065_SF_DO_NOT_SOLICIT_F_eq_NULL                                                                  | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | 6065_SF_Creative_1_ADVISOR_LAST_CONTACT_DT_gt_30                                                  | 1        | 1           | 0             | 31                          | 45             | NULL                 | NULL               |
      | 6065_SF_GIVEN_NAME_ne_NULL_OR_INDV_TTL_NM_ne_NULL_OR_INDV_FRST_NM_ne_NULL_OR_INDV_LAST_NM_ne_NULL | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
#      |Added for May 25th 2023 Release|
      | 6065_SF_Creative_1_EVENT_DATE_eq_30                                                               | 1        | 1           | 0             | 376                         | 30             | NULL                 | NULL               |
      | 6065_SF_Creative_1_EVENT_DATE_gt_30                                                               | 1        | 1           | 0             | 376                         | 31             | NULL                 | NULL               |
#      |Added for Oct 12th 2023 Release|
      | 6065_COS_Seg_01_NOT_AML_KYC_eq_NULL                                                               | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | 6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_EVENT_DATE_gt_30                               | 1        | 1           | 0             | 376                         | 31             | NULL                 | NULL               |
      | 6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_EVENT_DATE_eq_30                               | 1        | 1           | 0             | 376                         | 30             | NULL                 | NULL               |
      | 6065_COS_Seg_01_ExtTable_VALID_START_DATE_lt_Curr_Dt                                              | 1        | 0           | 1             | 376                         | NULL           | 1                    | -2                 |
      | 6065_COS_Seg_01_ExtTable_VALID_START_DATE_eq_Curr_Dt                                              | 1        | 0           | 1             | 376                         | NULL           | 0                    | -2                 |
      | 6065_COS_Seg_01_ExtTable_VALID_END_DATE_gt_Curr_Dt                                                | 1        | 0           | 1             | 376                         | NULL           | 2                    | -1                 |
      | 6065_COS_Seg_01_ExtTable_VALID_END_DATE_eq_Curr_Dt                                                | 1        | 0           | 1             | 376                         | NULL           | 2                    | 0                  |


  @LongTermAdviceSF @LongTermAdviceSF_Negative_TestData_6065_LongTermInvAdviceSF @6003 @SFM @RS23078
  Scenario Outline: Long Term Investing Advice SF 6065 RS23078 SF Create test data for Loading data for LongTermInvAdviceSF Negative test cases
    Given load data from "LongTermAdvice" excel sheet
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

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                                                                             | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | ADVISOR_LAST_CONTACT_DT_Val | EVENT_DATE_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | N-6065_SF_CUST_AGE_eq_NULL                                                                             | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_CUST_AGE_lt_20                                                                               | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_CUST_AGE_gt_70                                                                               | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_LANG_CD_ne_en                                                                                | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_LANG_CD_eq_NULL                                                                              | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_DO_NOT_SOLICIT_F_eq_Y                                                                        | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_MRKTBLE_F_ne_Y                                                                               | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_MRKTBLE_F_eq_NULL                                                                            | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_DECEASED_ne_N                                                                                | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_DECEASED_eq_NULL                                                                             | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_CUST_TP_CD_ne_PSNL                                                                           | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_PRIM_CNTRY_CD_ne_CA                                                                          | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_PRIM_CNTRY_CD_eq_NULL                                                                        | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_DO_NOT_CALL_F_ne_N                                                                           | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_DO_NOT_CALL_F_eq_NULL                                                                        | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_Creative_1_ADVISOR_LAST_CONTACT_DT_lt_30                                                     | 1        | 1           | 0             | 29                          | 45             | NULL                 | NULL               |
      | N-6065_SF_Creative_1_ADVISOR_LAST_CONTACT_DT_eq_30                                                     | 1        | 1           | 0             | 30                          | 45             | NULL                 | NULL               |
      | N-6065_SF_Creative_1_ADVISOR_LAST_CONTACT_DT_eq_NULL                                                   | 1        | 1           | 0             | NULL                        | 45             | NULL                 | NULL               |
      | N-6065_SF_INSIGHT_CD_eq_MF_TRANSFER_TO_CASH_and_Curr_Val_ne_1                                          | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_INSIGHT_CD_ne_MF_TRANSFER_TO_CASH_and_Curr_Val_eq_1                                          | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_INSIGHT_CD_eq_MF_TRANSFER_TO_CASH_and_Curr_Val_eq_NULL                                       | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_GIVEN_NAME_eq_NULL_AND_INDV_TTL_NM_eq_NULL_AND_INDV_FRST_NM_eq_NULL_AND_INDV_LAST_NM_eq_NULL | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_NULL               | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_Invalid_CLOSEST_TRANSIT_NUM_eq_NULL       | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
#      |Added for May 25th 2023 Release|
      | N-6065_SF_Creative_1_EVENT_DATE_lt_30                                                                  | 1        | 1           | 0             | 376                         | 29             | NULL                 | NULL               |
      | N-6065_SF_Creative_1_EVENT_DATE_eq_NULL                                                                | 1        | 1           | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_SF_Creative_1_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                 | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_SF_Creative_1_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                              | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
#      |Added for July 06th 2023 Release|
      | N_6065_SF_ASSIGNED_FA_ID_eq_NULL                                                                       | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N_6065_SF_ASSIGNED_FA_TRANSIT_eq_NULL                                                                  | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
#      |Added for Oct 12th 2023 Release|
      | N-6065_COS_Seg_01_NOT_AML_KYC_eq_Y                                                                     | 1        | 1           | 0             | 376                         | 45             | NULL                 | NULL               |
      | N-6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_EVENT_DATE_lt_30                                  | 1        | 1           | 0             | 376                         | 29             | NULL                 | NULL               |
      | N-6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_EVENT_DATE_eq_NULL                                | 1        | 1           | 0             | 376                         | NULL           | NULL                 | NULL               |
      | N-6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_CURR_VAL_ne_1                                     | 1        | 1           | 0             | 376                         | 31             | NULL                 | NULL               |
      | N-6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_CURR_VAL_eq_NULL                                  | 1        | 1           | 0             | 376                         | 31             | NULL                 | NULL               |
      | N-6065_COS_Seg_01_ExtTable_VALID_START_DATE_gt_Curr_Dt                                                 | 1        | 0           | 1             | 376                         | NULL           | -1                   | -2                 |
      | N-6065_COS_Seg_01_ExtTable_VALID_END_DATE_lt_Curr_Dt                                                   | 1        | 0           | 1             | 376                         | NULL           | 2                    | 1                  |
      | N-6065_COS_Seg_01_ExtTable_CAMPAIGN_CODE_ne_RS23078                                                    | 1        | 0           | 1             | 376                         | NULL           | 2                    | -2                 |
      | N-6065_COS_Seg_01_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_Y                                                | 1        | 0           | 1             | 376                         | NULL           | 2                    | -2                 |
      | N-6065_COS_Seg_01_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                             | 1        | 0           | 1             | 376                         | NULL           | 2                    | -2                 |
      | N-6065_COS_Seg_01_ExtTable_Branch_channel_ne_Y                                                         | 1        | 0           | 1             | 376                         | NULL           | 2                    | -2                 |
      | N-6065_COS_Seg_01_ExtTable_Branch_channel_eq_NULL                                                      | 1        | 0           | 1             | 376                         | NULL           | 2                    | -2                 |
