@ULOCInsurance_Optima_5761
Feature: Test data creation for Optima channel  for ULOC Insurance Initial Offer

  @5761_Positive_Base
  Scenario Outline: ULOC Insurance_RS22065_5761_OPTIMA Create test data "<Test cases>" for base scenarios
    Given load data from "ULOCInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write "ACCT_ODT" for "<V_ACCT_ODT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Acct_RLTNP_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases              | Acct_Cnt | Insight_Cnt | V_ACCT_ODT |
#      | 5761_OPM_BASE_01_Seg_04 | 1        | 0           | 5          |
      | 5761_OPM_BASE_02_Seg_05 | 1        | 1           | 190        |


  @5761_Positive_Cases_Same_Acct_ODT
  Scenario Outline: ULOC Insurance_RS22065_5761_OPTIMA Create test data "<Test cases>" for Positive scenarios with Same Acct_ODT
    Given load data from "ULOCInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write "ACCT_ODT" for "<V_ACCT_ODT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Acct_RLTNP_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                                     | Acct_Cnt | Insight_Cnt | V_ACCT_ODT |
      | 5761_OPM_Seg_04_DO_NOT_SOLICIT_F_eq_NULL_EMPLOYEE_STAFF_F_eq_NULL                              | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_CUST_AGE_eq_22                                                                 | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_CUST_AGE_eq_60                                                                 | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_DO_NOT_CALL_F_eq_NULL                                                          | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RG_INS_STATUS_DESC_eq_Wavied       | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RS_INS_STATUS_DESC_eq_LifeOnly     | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_CS_INS_STATUS_DESC_eq_Disability   | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_INE_INS_STATUS_DESC_eq_DisAndLife  | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RS_INS_STATUS_DESC_eq_DisJL        | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RL_INS_STATUS_DESC_eq_DisLifeAndCI | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_SP_INS_STATUS_DESC_eq_LifeAndCI    | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_LI_INS_STATUS_DESC_eq_LifeDisAndJL | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_CRNT_BAL_AMT_eq_1dot2_x_CR_CRD_LMT_AMT                                         | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_CREDIT_ARREARS_DAYS_eq_60                                                      | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_CREDIT_ARREARS_DAYS_eq_NULL                                                    | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_CR_CRD_LMT_AMT_gt_500                                                          | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_CR_CRD_LMT_AMT_lt_150000                                                       | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_CR_CRD_LMT_AMT_eq_150000                                                       | 1        | 0           | 5          |
      | 5761_OPM_Seg_04_ACCT_ODT_lt_30                                                                 | 1        | 0           | 29         |
      | 5761_OPM_Seg_04_ACCT_ODT_eq_30                                                                 | 1        | 0           | 30         |
      | 5761_OPM_Seg_05_ACCT_ODT_gt_180                                                                | 1        | 1           | 181        |
      | 5761_OPM_Seg_05_ACCT_ODT_eq_180                                                                | 1        | 1           | 180        |

  @5761_Positive_Cases_Same_Acct_ODT
  Scenario Outline: ULOC Insurance_RS22065_5761_OPTIMA Create test data "<Test cases>" for Positive scenarios with Same Acct_ODT
    Given load data from "ULOCInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Acct_RLTNP_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                        | Acct_Cnt | Insight_Cnt | Acct_Odt |
      | 5761_OPM_Seg_04_Same_ODT_BP_1_2_3_4_Valid         | 4        | 0           | 5        |
      | 5761_OPM_Seg_04_Same_ODT_BP_1_Invalid_2_3_4_Valid | 4        | 0           | 5        |
      | 5761_OPM_Seg_05_Same_ODT_BP_3_4_Valid             | 2        | 1           | 190      |
      | 5761_OPM_Seg_05_Same_ODT_BP_4_4_Valid             | 2        | 1           | 190      |


  @5761_Positive_Cases_Diff_Acct_ODT
  Scenario Outline: ULOC Insurance_RS22065_5761_OPTIMA Create test data "<Test cases>" for Positive scenarios with Same Acct_ODT
    Given load data from "ULOCInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Acct_RLTNP_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                               | Acct_Cnt | Insight_Cnt |
      | 5761_OPM_Seg_04_Diff_ODT_BP_1_2_3_4_Valid                | 4        | 0           |
      | 5761_OPM_Seg_04_Diff_ODT_BP_1_2__Seg_05_3_4_Seg_04_Valid | 4        | 1           |


  @5761_Negative_Cases
  Scenario Outline: ULOC Insurance_RS22065_5761_OPTIMA Create test data "<Test cases>" for Positive scenarios with Same Acct_ODT
    Given load data from "ULOCInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write "ACCT_ODT" for "<V_ACCT_ODT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Acct_RLTNP_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                          | Acct_Cnt | Insight_Cnt | V_ACCT_ODT |
      | N_5761_OPM_Seg_04_DECEASED_F_ne_N                                   | 1        | 0           | 5          |
      | N_5761_OPM_Seg_05_DECEASED_F_eq_NULL                                | 1        | 1           | 190        |
      | N_5761_OPM_Seg_04_CUST_TP_CD_ne_PSNL                                | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_PRIM_CNTRY_CD_ne_CA                               | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_PRIM_CNTRY_CD_eq_NULL                             | 1        | 0           | 5          |
      | N_5761_OPM_Seg_05_MRKTBLE_F_ne_Y                                    | 1        | 1           | 190        |
      | N_5761_OPM_Seg_05_MRKTBLE_F_eq_NULL                                 | 1        | 1           | 190        |
      | N_5761_OPM_Seg_05_DO_NOT_SOLICIT_F_eq_Y                             | 1        | 1           | 190        |
      | N_5761_OPM_Seg_05_DO_NOT_SOLICIT_F_eq_NULL                          | 1        | 1           | 190        |
      | N_5761_OPM_Seg_04_DO_NOT_CALL_F_ne_N                                | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_LANG_CD_ne_en                                     | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_LANG_CD_eq_NULL                                   | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_PRIM_PROV_CD_eq_QC                                | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_PRIM_PROV_CD_eq_AB                                | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_PRIM_PROV_CD_eq_NL                                | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_PRIM_PROV_CD_eq_NULL                              | 1        | 0           | 5          |
      | N_5761_OPM_Seg_05_CUST_AGE_eq_21                                    | 1        | 1           | 190        |
      | N_5761_OPM_Seg_05_CUST_AGE_eq_61                                    | 1        | 1           | 190        |
      | N_5761_OPM_Seg_05_CUST_AGE_eq_NULL                                  | 1        | 1           | 190        |
      | N_5761_OPM_Seg_05_EMPLOYEE_STAFF_F_eq_Y                             | 1        | 1           | 190        |
      | N_5761_OPM_Seg_04_ACCT_SUBSYS_ID_ne_KS                              | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_ACCT_SUBSYS_ID_eq_NULL                            | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC    | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_NULL  | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_RG   | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_SRC_ACCT_STAT_CD_ne_Open                          | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_SRC_ACCT_STAT_CD_eq_NULL                          | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_CRNT_BAL_AMT_eq_0                                 | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_CRNT_BAL_AMT_lt_0                                 | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_CRNT_BAL_AMT_eq_NULL                              | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_CRNT_BAL_AMT_gt_1dot2_x_CR_CRD_LMT_AMT            | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_CREDIT_ARREARS_DAYS_gt_60                         | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                     | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                  | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_INS_STATUS_DESC_Invalid                           | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_INS_STATUS_DESC_eq_NULL                           | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_CR_CRD_LMT_AMT_lt_500                             | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_CR_CRD_LMT_AMT_eq_500                             | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_CR_CRD_LMT_AMT_gt_150000                          | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_CR_CRD_LMT_AMT_eq_NULL                            | 1        | 0           | 5          |
      | N_5761_OPM_Seg_04_ACCT_ODT_gt_30                                    | 1        | 0           | 31         |
      | N_5761_OPM_Seg_05_ACCT_ODT_lt_180                                   | 1        | 1           | 179        |
      | N_5761_OPM_Seg_05_CURR_VAL_ne_1                                     | 1        | 1           | 190        |
      | N_5761_OPM_Seg_05_CURR_VAL_eq_NULL                                  | 1        | 1           | 190        |
#	# Optima Channel File TCs	#		#		#		#
      | N_5761_SERV_TRNST_NUM_eq_NULL                                       | 1        | 0           | 5          |
      | N_5761_INDV_HOME_TEL_NUM_eq_NULL                                    | 1        | 0           | 5          |
      | N_5761_PRIM_ADDR_LINE_1_eq_NULL                                     | 1        | 0           | 5          |
      | N_5761_PRIM_CITY_NM_eq_NULL                                         | 1        | 0           | 5          |
      | N_5761_PRIM_POST_CD_eq_NULL                                         | 1        | 0           | 5          |
      | N_5761_BRTH_DT_eq_NULL                                              | 1        | 0           | 5          |


  @5761_Positive_FileLayout
  Scenario Outline: ULOC Insurance_RS22065_5761_OPTIMA Create test data "<Test cases>" for base scenarios
    Given load data from "ULOCInsurance" excel sheet
    # Cust_Dim
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write secondary customer id in "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write "ACCT_ODT" for "<V_ACCT_ODT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Acct_RLTNP_Dim
    When write cid , secondary customer id and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                   | Acct_Cnt | V_ACCT_ODT |
      | 5761_Co-borrwoer DOB         | 1        | 5          |
      | 5761_Co-borrower first Name  | 1        | 5          |
      | 5761_Co-borrower middle Name | 1        | 5          |
      | 5761_Co-borrower Last Name   | 1        | 5          |
      | 5761_Co-borrower Gender      | 1        | 5          |
      | 5761_COBOR_INS_FLAG_2        | 1        | 5          |
      | 5761_Co-borrower CID         | 1        | 5          |

  @5761_Positive_Negative_TestData_MultiCustInsights
  Scenario Outline: ULOC Insurance_RS22065_5761_OPTIMA Create test data "<Test cases>" for Multiple cust insights test cases
    Given load data from "ULOCInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write "ACCT_ODT" for "<V_ACCT_ODT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Acct_RLTNP_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                 | Acct_Cnt | Insight_Cnt | V_ACCT_ODT |
      | 5761_OPM_Seg_05_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_CURR_VAL_ne_1       | 1        | 2           | 190        |
      | 5761_OPM_Seg_05_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_CURR_VAL_eq_NULL    | 1        | 2           | 190        |
      | N_5761_OPM_Seg_05_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_AND_CURR_VAL_eq_1 | 1        | 2           | 190        |
