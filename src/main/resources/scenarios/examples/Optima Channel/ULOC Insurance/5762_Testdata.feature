@ULOCInsurance_Optima_5762
Feature: Test data creation for Optima channel  for ULOC Insurance Retargeting Offer

  @5762_Positive_Base
  Scenario Outline: ULOC Insurance_RS22065_5762_OPTIMA Create test data "<Test cases>" for base scenarios
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
    When write "EVENT_DATE" for "<V_Event_Date>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases              | Acct_Cnt | Insight_Cnt | V_ACCT_ODT | V_Event_Date |
      | 5762_OPM_BASE_01_Seg_01 | 1        | 1           | 55         | 1            |


  @5762_Positive_Same_Acct_ODT
  Scenario Outline: ULOC Insurance_RS22065_5762_OPTIMA Create test data "<Test cases>" for Positive scenarios with Same Acct_ODT
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
    When write "EVENT_DATE" for "<V_Event_Date>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                              | Acct_Cnt | Insight_Cnt | Acct_Odt | V_Event_Date |
      | 5762_OPM_DO_NOT_SOLICIT_F_eq_NULL_EMPLOYEE_STAFF_F_eq_NULL                              | 1        | 1           | 55       | 2            |
      | 5762_OPM_CUST_AGE_eq_18                                                                 | 1        | 1           | 55       | 3            |
      | 5762_OPM_CUST_AGE_eq_64                                                                 | 1        | 1           | 55       | 4            |
      | N_5762_OPM_DO_NOT_SOLICIT_F_eq_NULL                                                     | 1        | 1           | 55       | 1            |
      | 5762_OPM_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RG_INS_STATUS_DESC_eq_Wavied       | 1        | 1           | 55       | 5            |
      | 5762_OPM_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RS_INS_STATUS_DESC_eq_LifeOnly     | 1        | 1           | 55       | 6            |
      | 5762_OPM_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_CS_INS_STATUS_DESC_eq_Disability   | 1        | 1           | 55       | 1            |
      | 5762_OPM_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_INE_INS_STATUS_DESC_eq_DisAndLife  | 1        | 1           | 55       | 1            |
      | 5762_OPM_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RS_INS_STATUS_DESC_eq_DisJL        | 1        | 1           | 55       | 1            |
      | 5762_OPM_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RL_INS_STATUS_DESC_eq_DisLifeAndCI | 1        | 1           | 55       | 1            |
      | 5762_OPM_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_SP_INS_STATUS_DESC_eq_LifeAndCI    | 1        | 1           | 55       | 1            |
      | 5762_OPM_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_LI_INS_STATUS_DESC_eq_LifeDisAndJL | 1        | 1           | 55       | 1            |
      | 5762_OPM_CRNT_BAL_AMT_eq_1dot2_x_CR_CRD_LMT_AMT                                         | 1        | 1           | 55       | 1            |
      | 5762_OPM_CR_CRD_LMT_AMT_gt_0_EVENT_DATE_eq_7                                            | 1        | 1           | 55       | 7            |
      | 5762_OPM_CR_CRD_LMT_AMT_lt_50000                                                        | 1        | 1           | 55       | 1            |
      | 5762_OPM_CR_CRD_LMT_AMT_eq_50000                                                        | 1        | 1           | 55       | 1            |
      | 5762_OPM_ACCT_ODT_gt_50                                                                 | 1        | 1           | 51       | 1            |
      | 5762_OPM_ACCT_ODT_eq_50                                                                 | 1        | 1           | 50       | 1            |
#	# Prioritization	#		#		#		#		#
      | 5762_OPM_Same_ODT_4_Accounts_Valid                                                      | 4        | 1           | 55       | 1            |
      | 5762_OPM_Same_ODT_1_Account_Invalid_3_Accounts_Valid                                    | 4        | 1           | 55       | 1            |


  @5762_Positive_Diff_Acct_ODT
  Scenario Outline: ULOC Insurance_RS22065_5762_OPTIMA Create test data "<Test cases>" for Positive scenarios with Diff Acct_ODT
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
    When write "EVENT_DATE" for "<V_Event_Date>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                            | Acct_Cnt | Insight_Cnt | V_Event_Date |
      | 5762_OPM_Diff_ODT_BP_4_Accounts_Valid | 4        | 1           | 1            |


  @5762_Negative
  Scenario Outline: ULOC Insurance_RS22065_5762_OPTIMA Create test data "<Test cases>" for Negative scenarios
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
    When write "EVENT_DATE" for "<V_Event_Date>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                   | Acct_Cnt | Insight_Cnt | V_ACCT_ODT | V_Event_Date |
      | N_5762_OPM_DECEASED_F_ne_N                                   | 1        | 1           | 55         | 1            |
      | N_5762_OPM_DECEASED_F_eq_NULL                                | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CUST_TP_CD_ne_PSNL                                | 1        | 1           | 55         | 1            |
      | N_5762_OPM_PRIM_CNTRY_CD_ne_CA                               | 1        | 1           | 55         | 1            |
      | N_5762_OPM_PRIM_CNTRY_CD_eq_NULL                             | 1        | 1           | 55         | 1            |
      | N_5762_OPM_MRKTBLE_F_ne_Y                                    | 1        | 1           | 55         | 1            |
      | N_5762_OPM_MRKTBLE_F_eq_NULL                                 | 1        | 1           | 55         | 1            |
      | N_5762_OPM_DO_NOT_SOLICIT_F_eq_Y                             | 1        | 1           | 55         | 1            |
      | N_5762_OPM_DO_NOT_CALL_F_ne_N                                | 1        | 1           | 55         | 1            |
      | N_5762_OPM_DO_NOT_CALL_F_eq_NULL                             | 1        | 1           | 55         | 1            |
      | N_5762_OPM_LANG_CD_ne_en                                     | 1        | 1           | 55         | 1            |
      | N_5762_OPM_LANG_CD_eq_NULL                                   | 1        | 1           | 55         | 1            |
      | N_5762_OPM_PRIM_PROV_CD_eq_QC                                | 1        | 1           | 55         | 1            |
      | N_5762_OPM_PRIM_PROV_CD_eq_AB                                | 1        | 1           | 55         | 1            |
      | N_5762_OPM_PRIM_PROV_CD_eq_NL                                | 1        | 1           | 55         | 1            |
      | N_5762_OPM_PRIM_PROV_CD_eq_NULL                              | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CUST_AGE_eq_17                                    | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CUST_AGE_eq_65                                    | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CUST_AGE_eq_NULL                                  | 1        | 1           | 55         | 1            |
      | N_5762_OPM_EMPLOYEE_STAFF_F_eq_Y                             | 1        | 1           | 55         | 1            |
      | N_5762_OPM_ACCT_SUBSYS_ID_ne_KS                              | 1        | 1           | 55         | 1            |
      | N_5762_OPM_ACCT_SUBSYS_ID_eq_NULL                            | 1        | 1           | 55         | 1            |
      | N_5762_OPM_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC    | 1        | 1           | 55         | 1            |
      | N_5762_OPM_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_NULL  | 1        | 1           | 55         | 1            |
      | N_5762_OPM_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_RG   | 1        | 1           | 55         | 1            |
      | N_5762_OPM_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL | 1        | 1           | 55         | 1            |
      | N_5762_OPM_SRC_ACCT_STAT_CD_ne_Open                          | 1        | 1           | 55         | 1            |
      | N_5762_OPM_SRC_ACCT_STAT_CD_eq_NULL                          | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CRNT_BAL_AMT_eq_0                                 | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CRNT_BAL_AMT_lt_0                                 | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CRNT_BAL_AMT_eq_NULL                              | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CRNT_BAL_AMT_gt_1dot2_x_CR_CRD_LMT_AMT            | 1        | 1           | 55         | 1            |
      | N_5762_OPM_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                     | 1        | 1           | 55         | 1            |
      | N_5762_OPM_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                  | 1        | 1           | 55         | 1            |
      | N_5762_OPM_INS_STATUS_DESC_Invalid                           | 1        | 1           | 55         | 1            |
      | N_5762_OPM_INS_STATUS_DESC_eq_NULL                           | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CR_CRD_LMT_AMT_lt_0                               | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CR_CRD_LMT_AMT_eq_0                               | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CR_CRD_LMT_AMT_gt_50000                           | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CR_CRD_LMT_AMT_eq_NULL                            | 1        | 1           | 55         | 1            |
      | N_5762_OPM_ACCT_ODT_lt_50                                    | 1        | 1           | 49         | 1            |
      | N_5762_OPM_CURR_VAL_ne_1                                     | 1        | 1           | 55         | 1            |
      | N_5762_OPM_CURR_VAL_eq_NULL                                  | 1        | 1           | 55         | 1            |
#	# Optima Channel File TCs	#		#		#		#		#
      | N_5762_SERV_TRNST_NUM_eq_NULL                                | 1        | 1           | 55         | 1            |
      | N_5762_INDV_HOME_TEL_NUM_eq_NULL                             | 1        | 1           | 55         | 1            |
      | N_5762_PRIM_ADDR_LINE_1_eq_NULL                              | 1        | 1           | 55         | 1            |
      | N_5762_PRIM_CITY_NM_eq_NULL                                  | 1        | 1           | 55         | 1            |
      | N_5762_PRIM_POST_CD_eq_NULL                                  | 1        | 1           | 55         | 1            |
      | N_5762_BRTH_DT_eq_NULL                                       | 1        | 1           | 55         | 1            |

  @5762_Positive_Negative_TestData_MultiCustInsights
  Scenario Outline: ULOC Insurance_RS22065_5762_OPTIMA Create test data "<Test cases>" for Multiple cust insights test cases
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
    When write "EVENT_DATE" for "<V_Event_Date>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                 | Acct_Cnt | Insight_Cnt | V_ACCT_ODT | V_Event_Date |
      | 5762_OPM_Seg_01_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_CURR_VAL_ne_1       | 1        | 2           | 55         | 1            |
      | 5762_OPM_Seg_01_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_CURR_VAL_eq_NULL    | 1        | 2           | 55         | 1            |
      | N_5762_OPM_Seg_01_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_AND_CURR_VAL_eq_1 | 1        | 2           | 55         | 1            |