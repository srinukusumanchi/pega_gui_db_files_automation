@Xsell_Sneak_Peak_Offer_SOL_TestLoad
Feature: Test Data Creation For Xsell Sneak Peak Offer for SOL Channel

  @Xsell_Sneak_Peak_Offer_SOL_Base_TestData_6185 @6185 @6186 @6187 @6188 @SOL @RS23147
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Create test data for Base Line test cases for SOL Channel
    Given load data from "XsellSneakPeak_SOL_6185_6186_6187_6188" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table


    Examples:
      | Test cases                | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6185_SOL_BASE_Creative_01 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6186_SOL_BASE_Creative_01 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6187_SOL_BASE_Creative_01 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6188_SOL_BASE_Creative_01 | 2        | 1             | NULL        | 100          | 2                    | -2                 |

  @Xsell_Sneak_Peak_Offer_SOL_Positive_TestData_6185 @6185 @6186 @6187 @6188 @SOL @RS23147
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Create test data for Positive Line test cases for SOL Channel
    Given load data from "XsellSneakPeak_SOL_6185_6186_6187_6188" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table


    Examples:
      | Test cases                                                                                          | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      #Positive Scenarios
      | 6185_SOL_Seg_01_EMPLOYEE_STAFF_F_eq_NULL                                                            | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_CC_VIP_IND_eq_NULL                                                                  | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_CUST_AGE_eq_75                                                                      | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_CUST_AGE_gt_18                                                                      | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6110_SOL_Seg_01_ExtTable_VALID_START_DATE_lt_Curr_Dt                                                | 2        | 1             | NULL        | 100          | 1                    | -2                 |
      | 6110_SOL_Seg_01_ExtTable_VALID_START_DATE_eq_Curr_Dt                                                | 2        | 1             | NULL        | 100          | 0                    | -2                 |
      | 6110_SOL_Seg_01_ExtTable_VALID_END_DATE_eq_Curr_Dt                                                  | 2        | 1             | NULL        | 100          | 2                    | 0                  |
      | 6110_SOL_Seg_01_ExtTable_VALID_END_DATE_lt_Curr_Dt                                                  | 2        | 1             | NULL        | 100          | 2                    | -1                 |
      | 6185_SOL_Seg_01_Scotia_Ultimate_ACCT_SUBSYS_ID_eq_BB                                                | 3        | 1             | NULL        | 100,100      | 2                    | -2                 |
      | 6185_SOL_Seg_01_Ultimate_ACCT_SUBSYS_ID_eq_BB                                                       | 3        | 1             | NULL        | 100,100      | 2                    | -2                 |
      | 6185_SOL_Seg_01_Scotia_ACCT_SUBSYS_ID_eq_BB                                                         | 3        | 1             | NULL        | 100,100      | 2                    | -2                 |
      | 6185_SOL_Seg_01_ACCT_ODT_gt_90                                                                      | 2        | 1             | NULL        | 91           | 2                    | -2                 |
      | 6185_SOL_Seg_01_CRNT_BAL_AMT_gt_100                                                                 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_CRNT_BAL_AMT_eq_100                                                                 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_Scotia_Ultimate_invalid_ACCT_SUBSYS_ID_eq_BB                                        | 3        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_PHYSICIANS_F_eq_ NULL                                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      #Positive Exclusion scenarios
      | 6185_SOL_Seg_01_Investment_CC_SRC_ACCT_STAT_CD_ne_Active                                            | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_ne_RESP                                            | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_Investment_CC_ACCT_SUBSYS_ID_ne_UF                                                  | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_CC_Investment_PROD_HIER_LEVEL_3_ne_Credit Cards                                     | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_Investment_MPSA_SRC_ACCT_STAT_CD_ne_Active                                          | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_Investment_MPSA_PLN_ACCT_CD_MASTER_ne_RESP                                          | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_Investment_MPSA_ACCT_SUBSYS_ID_ne_UF                                                | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_CC_MSPA_PROD_HIER_LEVEL_3_ne_Credit Cards                                           | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_MCB_IND_eq_N_ARRV_DT_eg_1000                                                        | 2        | 1             | 1000        | 100          | 2                    | -2                 |
      | 6185_SOL_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_gt_120 | 3        | 1             | NULL        | 100,121      | 2                    | -2                 |
      | 6185_SOL_Seg_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120 | 3        | 1             | NULL        | 100,120      | 2                    | -2                 |
      | 6185_SOL_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120 | 3        | 1             | NULL        | 100,120      | 2                    | -2                 |
      | 6185_SOL_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_120 | 3        | 1             | NULL        | 100,120      | 2                    | -2                 |


  @Xsell_Sneak_Peak_Offer_SOL_Negative_TestData_6185 @6185 @6186 @6187 @6188 @SOL @RS23147
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Create test data for Negative Line test cases for SOL Channel
    Given load data from "XsellSneakPeak_SOL_6185_6186_6187_6188" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table


    Examples:
      | Test cases                                                                                            | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      #Negative Scenarios
      | N-6185_SOL_Seg_01_LANG_CD_ne_en                                                                       | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_LANG_CD_eq_NULL                                                                     | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_DECEASED_F_eq_Y                                                                     | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_DECEASED_F _eq_NULL                                                                 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CUST_TP_CD_ne_PSNL                                                                  | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CUST_TP_CD_eq_NULL                                                                  | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIM_CNTRY_CD_ne_CA                                                                 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIM_CNTRY_CD_eq_NULL                                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CUST_AGE_eq_18                                                                      | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CUST_AGE_lt_18                                                                      | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CUST_AGE_gt_75                                                                      | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CUST_AGE_eq_NULL                                                                    | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIM_PROV_CD_eq_QC                                                                  | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_EMPLOYEE_STAFF_F _eq_Y                                                              | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_MRKTBLE_F_eq_N                                                                      | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_MRKTBLE_F_eq_NULL                                                                   | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CC_VIP_IND_eq_2                                                                     | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CC_VIP_IND_eq_9                                                                     | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIM_ACCT_HOLDER_F_eq_N                                                             | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIM_ACCT_HOLDER_F_eq_NULL                                                          | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_SRC_ACCT_STAT_CD_ne_A                                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_SRC_ACCT_STAT_CD_eq_NULL                                                            | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ACCT_ODT_lt_90dys                                                                   | 2        | 1             | NULL        | 80           | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ACCT_ODT_eq_NULL                                                                    | 2        | 1             | NULL        | NULL         | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CRNT_BAL_AMT_lt_90                                                                  | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ACCT_SUBSYS_ID_ne_BB                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ACCT_SUBSYS_ID_eq_NULL                                                              | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_01                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Ext_CAMPAIGN_CODE _ne_ RS23147                                                      | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Ext_CAMPAIGN_CELL_CODE _ne_CIE6185                                                  | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Ext_CAMPAIGN_CELL_CODE _eq_NULL                                                     | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Ext_CAMPAIGN_CELL_CODE_FLAG_ne_S                                                    | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Ext_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                                 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Ext_VALID_START_DATE_gt_today                                                       | 2        | 1             | NULL        | 100          | -1                   | -2                 |
      | N-6185_SOL_Seg_01_Ext_VALID_END_DATE_lt_today                                                         | 2        | 1             | NULL        | 100          | 2                    | 1                  |
      | N-6185_SOL_Seg_01_Ext_SOL_CHANNEL_ne_Y                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Ext_SOL_CHANNEL_eq_NULL                                                             | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CRNT_BAL_AMT _lt_100                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CRNT_BAL_AMT_eq_NULL                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_NPACC_FICO_SCORE_eq_NULL                                                            | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ACCT_ODT_eq_90                                                                      | 2        | 1             | NULL        | 90           | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIMARY_PREAPPROVED_START_DATE_ne_DSS                                               | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIMARY_PRODUCT_CODE_ne_AAA                                                         | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PHYSICIANS_F_eq_Y                                                                   | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_NPACC_FICO_SCORE_gt_650                                                             | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_NPACC_FICO_SCORE_eq_650                                                             | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIM_ADDR_LINE_1_eq_NULL                                                            | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIM_CITY_NM_eq_NULL                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIM_PROV_CD_eq_NULL                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_PRIM_POST_CD_eq_NULL                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_INDV_FRST_NM_eq_NULL                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_INDV_LAST_NM_eq_NULL                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ASSIGNED_FA_TRANSIT_eq_NULL                                                         | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_GIVEN_NAME_eq_NULL_INDV_TTL_NM_eq_NULL_INDV_FRST_NM_eq_NULL_INDV_LAST_NM_eq_NULL    | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ACCT_SUBSYS_ID_eq_NULL                                                              | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ACCT_SUBSYS_ID_ne_AC                                                                | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_EDW_ACCT_STAT_CD _eq_NULL                                                           | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_EDW_ACCT_STAT_CD _ne_A                                                              | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      #Exclusion scenarios
      | N-6185_SOL_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active                 | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_ACCT_STAT_CD_eq_A                      | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_ACCT_STAT_CD_eq_Open                   | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RRIF_SRC_ACCT_STAT_CD_eq_Active                 | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RDSP_SRC_ACCT_STAT_CD_eq_A                      | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_NRS_SRC_ACCT_STAT_CD_eq_Open                    | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Investment_MSPA_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active               | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_CC_MSPA_ACCT_SUBSYS_ID_eq_KS                                                        | 4        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_Investment_CC_MSPA_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active            | 5        | 1             | NULL        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_MCB_IND_eq_Y_ARRV_DT_eg_1000                                                        | 2        | 1             | 1000        | 100          | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120 | 3        | 1             | NULL        | 100,120      | 2                    | -2                 |
      | N-6185_SOL_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 | 3        | 1             | NULL        | 100,119      | 2                    | -2                 |
