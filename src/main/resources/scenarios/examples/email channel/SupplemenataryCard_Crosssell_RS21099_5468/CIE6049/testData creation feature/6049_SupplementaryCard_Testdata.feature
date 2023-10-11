@SupplementaryCard_Email_Reminder
Feature: Test data creation for EMail Supplementary Card Cross Sell Reminder

# Sep 28th 2023 Release

# Base Scenarios
  @SupplementaryCardCrossSell_Reminder_EML @SupplementaryCardCrossSell_Reminder_EML_Base_TestData_6049 @6049 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_6049_EMAIL Create test data for Base Line Test Cases
    Given load data from "SupplementaryCard_Reminder" excel sheet

#    CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#   ACCT_DIM
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

     # EXTERNAL_INPUT_FILE_LAYOUT
#    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
      | Test cases                    | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | SOL_LAST_LOGIN_Val | MOB_LAST_LOGIN_Val | Acct_Odt_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6049_BASE_Creative_01_Trig_01 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_BASE_Creative_02_Trig_02 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_BASE_Creative_03_Trig_04 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_BASE_Creative_04_Trig_01 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_BASE_Creative_05_Trig_01 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_BASE_Creative_06_Trig_01 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_BASE_Creative_07_Trig_01 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_BASE_Creative_08_Trig_01 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_BASE_Creative_09_Trig_01 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |


# Positive Scenarios
  @SupplementaryCardCrossSell_Reminder_EML @SupplementaryCardCrossSell_Reminder_EML_Positive_TestData_6049 @6049 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_6049_EMAIL Create test data for Positive Test Cases
    Given load data from "SupplementaryCard_Reminder" excel sheet

#    CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#   ACCT_DIM
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

     # EXTERNAL_INPUT_FILE_LAYOUT
#    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
      | Test cases                                                             | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | SOL_LAST_LOGIN_Val | MOB_LAST_LOGIN_Val | Acct_Odt_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6049_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_lt_0.85          | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_01_Trig_01_DO_NOT_SOLICIT_F_eq_NULL                       | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_gt_2000                         | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_02_Trig_02_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_02_Trig_02_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GS | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_03_Trig_04_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR | 1        | 0           | 0             | 4                  | NULL               | 95           | 2                    | -2                 |
      | 6049_EML_Seg_03_Trig_04_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TS | 1        | 0           | 0             | 4                  | NULL               | 95           | 2                    | -2                 |
      | 6049_EML_Seg_04_Trig_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_05_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_05_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ST | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_06_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_07_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_08_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_DM | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_09_Trig_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_09_Trig_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SS | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
#      |CC Exclusion - Positive Scenarios|
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_gt_90                    | 2        | 1           | 0             | 4                  | NULL               | 95,91        | NULL                 | NULL               |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_ne_KS              | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_eq_NULL            | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_ne_Credit Cards | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_eq_NULL         | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_ne_Open          | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_eq_NULL          | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
#      |Prioritization Scenarios|
      | 6049_EML_Seg_01_Trig_01_Prioritiz_AXP_PC_AND_AXG_GC                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_02_Trig_01_Prioritiz_AXG_GC_AND_AXG_GS                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_02_Trig_01_Prioritiz_AXG_GS_AND_VFF_TR                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_03_Trig_01_Prioritiz_VFF_TR_AND_VFF_TS                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_03_Trig_01_Prioritiz_VFF_TS_AND_VLR_RG                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_04_Trig_01_Prioritiz_VLR_RG_AND_VCL_RG                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_05_Trig_01_Prioritiz_VCL_RG_AND_VCL_ST                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_05_Trig_01_Prioritiz_VCL_ST_AND_VCL_ZZ                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_06_Trig_01_Prioritiz_VCL_ZZ_AND_VCL_NF                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_07_Trig_01_Prioritiz_VCL_NF_AND_VCL_DM                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_08_Trig_01_Prioritiz_VCL_DM_AND_AXS_SC                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 6049_EML_Seg_09_Trig_01_Prioritiz_AXS_SC_AND_AXS_SS                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
#      |Reminder Specific Positive Scenarios|
      | 6049_EML_Seg_01_CUST_AGE_eq_18                                         | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_EML_Seg_01_LANG_CD_eq_fr                                          | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_EML_Seg_01_NOT_AML_KYC_eq_NULL                                    | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_EML_Seg_01_MK_CC_INFO_ACCTS_EMAIL_F_eq_NULL                       | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
#      |BB Exclusion - Positive Scenarios|
      | 6049_EML_Seg_01_BB_Exclusion_ACCT_SUBSYS_ID_ne_BB                      | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | 6049_EML_Seg_01_BB_Exclusion_ACCT_SUBSYS_ID_eq_NULL                    | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | 6049_EML_Seg_01_BB_Exclusion_SRC_ACCT_STAT_CD_ne_A                     | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | 6049_EML_Seg_01_BB_Exclusion_SRC_ACCT_STAT_CD_eq_NULL                  | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | 6049_EML_Seg_01_BB_Exclusion_ACCT_ODT_gt_90                            | 2        | 0           | 0             | NULL               | NULL               | NULL,91      | NULL                 | NULL               |
      | 6049_EML_Seg_01_BB_Exclusion_ACCT_ODT_eq_NULL                          | 2        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | 6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_08     | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | 6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_NULL | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |




# Negative Scenarios
  @SupplementaryCardCrossSell_Reminder_EML @SupplementaryCardCrossSell_Reminder_EML_Negative_TestData_6049 @6049 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_6049_EMAIL Create test data for Negative Test Cases
    Given load data from "SupplementaryCard_Reminder" excel sheet

#    CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#   ACCT_DIM
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

     # EXTERNAL_INPUT_FILE_LAYOUT
#    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
      | Test cases                                                                          | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | SOL_LAST_LOGIN_Val | MOB_LAST_LOGIN_Val | Acct_Odt_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | N-6049_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_eq_0.85                     | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_gt_0.85                     | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_eq_NULL                     | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_01_Trig_01_DO_NOT_SOLICIT_F_eq_Y                                     | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_SS            | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL         | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_01_Trig_01_SUPPL_CREDIT_CARD_FLAG_ne_N                               | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_01_Trig_01_SUPPL_CREDIT_CARD_FLAG_eq_NULL                            | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_02_Trig_02_CHRGF_CD_ne_0                                             | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_02_Trig_02_CHRGF_CD_eq_NULL                                          | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_eq_2000                                    | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_lt_2000                                    | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-6049_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_eq_NULL                                    | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
#      |CC Exclusion - Negative Scenarios|
      | N-6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_lt_90                               | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | N-6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_eq_90                               | 2        | 1           | 0             | 4                  | NULL               | 95,90        | NULL                 | NULL               |
#      |Reminder Specific Negative Scenarios|
      | N-6049_EML_Seg_01_CUST_AGE_lt_18                                                    | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_CUST_AGE_eq_NULL                                                  | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_LANG_CD_eq_bn                                                     | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_LANG_CD_eq_NULL                                                   | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_MRKTBLE_F_ne_Y                                                    | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_MRKTBLE_F_eq_NULL                                                 | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_NOT_AML_KYC_eq_Y                                                  | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_MK_CC_INFO_ACCTS_EMAIL_F_eq_N                                     | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_DO_NOT_EMAIL_F_ne_N                                               | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_DO_NOT_EMAIL_F_eq_NULL                                            | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL                                           | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_INDV_FRST_NM_eq_NULL                                              | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                     | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                  | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_ACCT_SUBSYS_ID_ne_KS                                              | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_ACCT_SUBSYS_ID_eq_NULL                                            | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_SRC_ACCT_STAT_CD_ne_Open                                          | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
      | N-6049_EML_Seg_01_SRC_ACCT_STAT_CD_eq_NULL                                          | 1        | 0           | 0             | NULL               | NULL               | NULL         | NULL                 | NULL               |
#      |BB Exclusion - Negative Scenarios|
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_01_ACCT_ODT_lt_90 | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_02_ACCT_ODT_eq_90 | 2        | 0           | 0             | NULL               | NULL               | NULL,90      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_03                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_04                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_01                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_02                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_03                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_01                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_02                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_03                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_04                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_07                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_08                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_01                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_11                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_12                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                | 2        | 0           | 0             | NULL               | NULL               | NULL,89      | NULL                 | NULL               |



