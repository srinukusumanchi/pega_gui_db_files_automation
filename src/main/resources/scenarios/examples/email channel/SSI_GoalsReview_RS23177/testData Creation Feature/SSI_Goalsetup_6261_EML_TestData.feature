@SSI_Goalsetup_EML_TestLoad
Feature: Test Data Creation For SSI Goalsetup for EML Channel

  @SSI_Goalsetup_EML_Base_TestData_6261 @6261 @EML @RS23177
  Scenario Outline: SSI Goalsetup 6261 RS23177 Create test data for Base Line test cases for EML Channel
    Given load data from "SSIGoalsSetup_EML_6261" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases           | Acct_Cnt | ACCT_ODT_Val | Insight_Cnt |
      | 6261_EML_BASE_Seg_01 | 1        | NULL         | 1           |

  @SSI_Goalsetup_EML_Positive_TestData_6261 @6261 @EML @RS23177
  Scenario Outline: SSI Goalsetup 6261 RS23177 Create test data for Positive Line test cases for EML Channel
    Given load data from "SSIGoalsSetup_EML_6261" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                                               | Acct_Cnt | ACCT_ODT_Val | Insight_Cnt |
      #Positive Scenarios
      | 6261_EML_Creative_01_LANG_CD_eq_EN                                                                       | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_LANG_CD_eq_F                                                                        | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_LANG_CD_eq_FR                                                                       | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_ITRADE_MCLEOD_F_eq_NULL                                                             | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_NULL                                                        | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_DO_NOT_SOLICIT_eq_NULL                                                              | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RRS     | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RSS     | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REF     | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REI     | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_SYS_SUB_PRD_CD_BNSCSVTF_eq_SRC_SYS_PRD_CD_eq_TFS     | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_NRS_LIF_LIRA_LRSP_LRIF_PRIF_RRIF_RLIF_RRIF_RRSP_RLSP_RRSP_RDSP_RESP_RESP_TFSA_FHSA  | 17       | NULL         | 1           |
      | 6261_EML_Creative_01_INDV_LAST_NM_eq_NULL                                                                | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_INSIGHT_CD_eq_SSI_GOAL_SETUP_COMPLETE_CURR_VAL_-1                                   | 1        | NULL         | 1           |
      | 6261_EML_Creative_01_INSIGHT_CD_eq_SSI_GOAL_SETUP_INCOMPLETE_CURR_VAL_0                                  | 1        | NULL         | 1           |
      #Positive Exclusion Scenarios
      | 6261_EML_Creative_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 | 2        | 180          | 1           |
      | 6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 | 2        | 180          | 1           |
      | 6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_180 | 2        | 180          | 1           |
      | 6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_181 | 2        | 181          | 1           |


  @SSI_Goalsetup_EML_Negative_TestData_6261 @6261 @EML @RS23177
  Scenario Outline: SSI Goalsetup 6261 RS23177 Create test data for Negative Line test cases for EML Channel
    Given load data from "SSIGoalsSetup_EML_6261" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                                                 | Acct_Cnt | ACCT_ODT_Val | Insight_Cnt |
      #Negative Scenarios
      | N-6261_EML_Creative_01_DECEASED_F_eq_Y                                                                     | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_DECEASED_F_eq_NULL                                                                  | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_CUST_TP_CD_eq_ABCD                                                                  | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_PRIM_CNTRY_CD_eq_IN                                                                 | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_PRIM_CNTRY_CD_eq_NULL                                                               | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_CUST_AGE_eq_NULL                                                                    | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_LANG_CD_eq_KA                                                                       | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_MRKTBLE_F_eq_N                                                                      | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_MRKTBLE_F_eq_NULL                                                                   | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_ITRADE_MCLEOD_F_eq_Y                                                                | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                   | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_PRIM_EMAIL_ADDR _eq_NULL                                                            | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_INDV_FRST_NM_eq_NULL                                                                | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_DO_NOT_EMAIL_F_eq_Y                                                                 | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_VLD_EMAIL_F_eq_N                                                                    | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_N                                                           | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_DO_NOT_SOLICIT_eq_Y                                                                 | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_PLN_ACCT_DLR_ne_SSI                                                                 | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_PLN_ACCT_DLR_eq_NULL                                                                | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_ACCT_SUBSYS_ID_ne_UF                                                                | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_NULL                                                              | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_SRC_ACCT_STAT_CD_ne_Active                                                          | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_SRC_ACCT_STAT_CD_eq_NULL                                                            | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_LIF_SRC_SYS_SUB_PRD_CD_eq_BNSCSVRG_SRC_SYS_PRD_CD_eq_BNSCSVRG | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                                       | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                    | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_IP_AR_RELATN_TYPE_CD_ne_ANN_or_OWN                                                  | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_IP_AR_RELATN_TYPE_CD_eq_NULL                                                        | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_PLAN_SPOT_BALANCE_eq_0                                                              | 1        | NULL         | 1           |
      | N-6261_EML_Creative_01_INSIGHT_CD_eq_SSI_GOAL_SETUP_COMPLETE_CURR_VAL_0                                    | 1        | NULL         | 1           |
      #Exclusion Scenarios
      | N-6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 | 2        | NULL,180          | 1           |
      | N-6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_179 | 2        | NULL,179          | 1           |

