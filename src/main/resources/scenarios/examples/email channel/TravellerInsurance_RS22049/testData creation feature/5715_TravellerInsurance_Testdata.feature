@5715_TravelInsurance_TestDataCreation
Feature: Test data creation for Travel Insurance

# Base Positive Scenarios that covers both the Creatives for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_Base_TestData_5715 @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Create test data for Base test cases
    Given load data from "TravelInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    # Cust_Acct_Rltnp_Dim
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    # Cust_Insights
    When write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write Event Date "<Event_Dt>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                              | Event_Dt  |
      | 5715_EML_BASE_01              			| 9         |
      | 5715_EML_BASE_02              			| 9         |


# Positive Scenarios that Cover the Test Cases with Single Account
  @TravelInsurance @TravelInsurance_Positive_TestData_5715 @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Create test data for positive test cases
    Given load data from "TravelInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    # Cust_Acct_Rltnp_Dim
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    # Cust_Insights
    When write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write Event Date "<Event_Dt>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                       | Event_Dt |
##      | 5715_EML_lang_cd_eq_ fr                                          | 9        |
##      | 5715_EML_cust_age _eq_18                                         | 9        |
##      | 5715_EML_DNS_eq_NULL                                             | 9        |
##      | 5715_EML_PROV_CD_eq_NULL                                         | 9        |
##      | 5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND                         | 9        |
      | 5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_evnt_dt_eq_18           | 18       |
##      | 5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND                   | 9        |
      | 5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_evnt_dt_eq_18     | 18       |
##      | 5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_eq_1        | 9        |
##      | 5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_gt_1        | 9        |
##      | 5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL               | 9        |
      | 5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_evnt_dt_eq_18 | 18       |
#      | 5715_EML_PROD_CD_eq_AXG_SUB_PROD_eq_GS                           | 9        |
#      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_NF                           | 9        |
#      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_PB                           | 9        |
#      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_RG                           | 9        |
#      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_SP                           | 9        |
#      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_ST                           | 9        |
#      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_DM                           | 9        |
#      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_ST                           | 9        |
#      | 5715_EML_PROD_CD_eq_VFF_SUB_PROD_eq_TR                           | 9        |
#      | 5715_EML_PROD_CD_eq_VFF_SUB_PROD_eq_TS                           | 9        |
#      | 5715_EML_PROD_CD_eq_BLV_SUB_PROD_eq_YY                           | 9        |
#      | 5715_EML_PROD_CD_eq_AXP_SUB_PROD_eq_PC                           | 9        |
#      | 5715_EML_PROD_CD_eq_AXS_SUB_PROD_eq_SC                           | 9        |
#      | 5715_EML_PROD_CD_eq_AXS_SUB_PROD_eq_SS                           | 9        |
#      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SV                           | 9        |
#      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_ZZ                           | 9        |
#      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SS                           | 9        |
#      | 5715_EML_PROD_CD_eq_VFF_SUB_PROD_eq_F1                           | 9        |
#      | 5715_EML_PROD_CD_eq_VFA_SUB_PROD_eq_A1                           | 9        |
#      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_NF                           | 9        |
#      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_RG                           | 9        |
#      | 5715_EML_PROD_CD_eq_VFA_SUB_PROD_eq_A3                           | 9        |
#      | 5715_EML_PROD_CD_eq_VLR_SUB_PROD_eq_NF                           | 9        |
#      | 5715_EML_PROD_CD_eq_VLR_SUB_PROD_eq_RG                           | 9        |
#      | 5715_EML_PROD_CD_eq_VLR_SUB_PROD_eq_RC                           | 9        |
#      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SC                           | 9        |
#      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SL                           | 9        |
#      | 5715_EML_MK_INSURANCE_EMAIL_F_eq_NULL                            | 9        |

# Positive Scenarios that Cover the Test Cases with MULTIPLE Accounts
  @TravelInsurance @TravelInsurance_Positive_TestData_MultipleAccounts_5715 @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Create test data for positive test cases
    Given load data from "TravelInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts containing "600" chars
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    # Cust_Acct_Rltnp_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_cnt>" accounts
    When write Event Date "<Event_Dt>" value into sheet "CUST_INSIGHTS" for "<Test cases>" having "<Insight_cnt>" insights
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_cnt>" accounts

    #Check
    #Then insert customer insight details in "CUST_INSIGHTS" table having "<Insight_cnt>" insights
    ##When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    ##Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                                                | Event_Dt | Account_cnt | Insight_cnt |
      | 5715_EML_multiple_insight_cd_insight1                                                     | 9        | 1           | 4           |
      | 5715_EML_ACTIVE_BB_Active_AC                                                              | 9        | 2           | 1           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_RG_PROD_CD_eq_VGD_SUB_PROD_eq_SP_Prioritization       | 9        | 2           | 1           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_ST_BBACCT_ACACCT_Prioritization                       | 9        | 3           | 1           |
      | 5715_EML_PROD_CD_eq_VFA_SUB_PROD_eq_A3_BBACCT_ACACCT_Segment02                            | 9        | 3           | 1           |
      | 5715_EML_Credit_Card_Type_Prioritization_4_Accounts                                       | 9        | 4           | 1           |
      | 5715_EML_Credit_Card_Type_Prioritization_3_Accounts                                       | 9        | 3           | 1           |
      | 5715_EML_Credit_Card_Type_Prioritization_2_Accounts                                       | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_T | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_T | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_S | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07_Active_AC_REWARD_TP_eq_T | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07_Active_AC_REWARD_TP_eq_S | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08_Active_AC_REWARD_TP_eq_T | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08_Active_AC_REWARD_TP_eq_S | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_11_Active_AC_REWARD_TP_eq_T  | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_11_Active_AC_REWARD_TP_eq_S  | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_12_Active_AC_REWARD_TP_eq_T  | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_12_Active_AC_REWARD_TP_eq_S  | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_T | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_T | 9        | 2           | 1           |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_S | 9        | 2           | 1           |



# Negative Scenarios that Cover the Test Cases with Single Account
  @TravelInsurance @TravelInsurance_Negative_TestData_5715 @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Create test data for Negative test cases
    Given load data from "TravelInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    # Cust_Acct_Rltnp_Dim
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    # Cust_Insights
    When write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write Event Date "<Event_Dt>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                            | Event_Dt |
#      | N_5715_EML_DECEASED_F_eq_Y                                            | 9        |
#      | N_5715_EML_DECEASED_F_eq_NULL                                         | 9        |
#      | N_5715_EML_CUST_TP_CD_ne_PSNL                                         | 9        |
#      | N_5715_EML_LANG_CD_eq_K                                               | 9        |
#      | N_5715_EML_LANG_CD_eq_NULL                                            | 9        |
#      | N_5715_EML_PRIM_CNTRY_CD_eq_NULL                                      | 9        |
#      | N_5715_EML_PRIM_CNTRY_CD_ne_CA                                        | 9        |
#      | N_5715_EML_MKTBL_eq_N                                                 | 9        |
#      | N_5715_EML_MKTBL_eq_NULL                                              | 9        |
#      | N_5715_EML_DNS_eq_Y                                                   | 9        |
#      | N_5715_EML_PRIM_PROV_CD_eq_QC                                         | 9        |
#      | N_5715_EML_CUST_AGE_lt_18                                             | 9        |
#      | N_5715_EML_CUST_AGE_eq_NULL                                           | 9        |
      | N_5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_curr_val_ne_1              | 9        |
      | N_5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_curr_val_eq_null           | 9        |
      | N_5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_evnt_dt_gt_18              | 19       |
      | N_5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_curr_val_ne_1        | 9        |
      | N_5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_curr_val_eq_null     | 9        |
      | N_5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_evnt_dt_gt_18        | 19       |
      | N_5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_lt_1           | 9        |
      | N_5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_eq_NULL        | 9        |
      | N_5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_curr_val_ne_1    | 9        |
      | N_5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_curr_val_eq_null | 9        |
      | N_5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_evnt_dt_gt_18    | 19       |
#      | N_5715_EML_ACCT_SUBSYS_ID_ne_KS_ie_UO                                 | 9        |
#      | N_5715_EML_ACCT_STAT_CD_ne_Open                                       | 9        |
#      | N_5715_EML_ACCT_STAT_CD _eq_ NULL                                     | 9        |
#      | N_5715_EML_SRC_SYS_PRD_CD_eq_BBB                                      | 9        |
#      | N_5715_EML_SRC_SYS_PRD_CD_eq_NULL                                     | 9        |
#      | N_5715_EML_SRC_SYS_SUB_PRD_CD_eq_DD                                   | 9        |
#      | N_5715_EML_SRC_SYS_SUB_PRD_CD_eq_NULL                                 | 9        |
#      | N_5715_EML_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_DM             | 9        |
#      | N_5715_EML_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_MB             | 9        |
#      | N_5715_EML_VLD_EMAIL_F_ne_Y                                           | 9        |
#      | N_5715_EML_VLD_EMAIL_F_eq_NULL                                        | 9        |
#      | N_5715_EML_PRIM_EMAIL_ADDR_eq_NULL                                    | 9        |
#      | N_5715_EML_PRIM_EMAIL_ADDR_eq_BLANK                                   | 9        |
#      | N_5715_EML_INDV_FRST_NM_eq_NULL                                       | 9        |
#      | N_5715_EML_INDV_FRST_NM_eq_BLANK                                      | 9        |
#      | N_5715_EML_DO_NOT_EMAIL_F_eq_Y                                        | 9        |
#      | N_5715_EML_DO_NOT_EMAIL_F_eq_NULL                                     | 9        |
#      | N_5715_EML_MK_INSURANCE_EMAIL_F_eq_N                                  | 9        |
      # Added on 2022-04-12
      | N_5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_evnt_dt_eq_NULL            | NULL     |
      | N_5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_evnt_dt_eq_NULL      | NULL     |
      | N_5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_evnt_dt_eq_NULL  | NULL     |


# Negative Scenarios that Cover the Test Cases with MULTIPLE Accounts
  @TravelInsurance @TravelInsurance_Negative_TestData_MultipleAccounts_5715 @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Create test data for Negative test cases with Multiple Accounts
    Given load data from "TravelInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts containing "<AcctNum_Chars>" chars
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    # Cust_Acct_Rltnp_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_cnt>" accounts
    When write Event Date "<Event_Dt>" value into sheet "CUST_INSIGHTS" for "<Test cases>" having "<Insight_cnt>" insights
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_cnt>" accounts

    Examples:
      | Test cases                                                          | AcctNum_Chars | Event_Dt | Account_cnt | Insight_cnt |
      | N_5715_EML_Not_Active_BB_Active_AC                                  | 600           | 9        | 2           | 1           |
      | N_5715_EML_Active_ACCT_SUBSYS_ID _ne_BB_Active_AC                   | 600           | 9        | 2           | 1           |
      | N_5715_EML_Active_BB_Active_AC_PROD_HEIR_LEVEL_ne_Chequing Accounts | 600           | 9        | 2           | 1           |
      | N_5715_EML_Active_BB_NOT_Active_AC                                  | 600           | 9        | 2           | 1           |
      | N_5715_EML_Active_BB_Active_ACCT_SUBSYS_ID_ne_AC                    | 600           | 9        | 2           | 1           |
      | N_5715_EML_Active_BB_Active_AC_pos131211_ne_600                     | 300           | 9        | 2           | 1           |
      | N_5715_EML_SRC_ACCT_STAT_CD_eq_NULL_BB_Active_AC                    | 600           | 9        | 2           | 1           |
      | N_5715_EML_EDW_ACCT_STAT_CD_eq_NULL_ACTIVE_BB_AC                    | 600           | 9        | 2           | 1           |
      | N_5715_EML_Active_ACCT_SUBSYS_ID _eq_NULL_Active_AC                 | 600           | 9        | 2           | 1           |
      | N_5715_EML_Active_BB_Active_AC_PROD_HEIR_LEVEL_eq_null              | 600           | 9        | 2           | 1           |
      | N_5715_EML_Active_BB_Active_AC_ACCT_SUBSYS_ID_eq_NULL               | 600           | 9        | 2           | 1           |



# Partially Negative Scenarios that Cover the Test Cases with MULTIPLE Accounts
  @TravelInsurance @TravelInsurance_PartiallyNegative_TestData_MultipleAccounts_5715 @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Create test data for Partially Negative test cases with Multiple Accounts
    Given load data from "TravelInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts containing "600" chars
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    # Cust_Acct_Rltnp_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_cnt>" accounts
    When write Event Date "<Event_Dt>" value into sheet "CUST_INSIGHTS" for "<Test cases>" having "<Insight_cnt>" insights
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_cnt>" accounts

    Examples:
      | Test cases                                                                                      | Event_Dt | Account_cnt | Insight_cnt |
      | PN_5715_EML_Credit_Card_Type_Prioritization_4_Accounts_Prior1_SRC_ACCT_STAT_CD_ne_Open          | 9        | 4           | 1           |
      | PN_5715_EML_Credit_Card_Type_Prioritization_3_Accounts_Prior2_SRC_ACCT_STAT_CD_ne_Open          | 9        | 3           | 1           |
      | PN_5715_EML_Credit_Card_Type_Prioritization_2_Accounts_Prior3_SRC_ACCT_STAT_CD_ne_Open          | 9        | 2           | 1           |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_X    | 9        | 2           | 1           |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_NULL | 9        | 2           | 1           |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_10_Active_AC_REWARD_TP_eq_T     | 9        | 2           | 1           |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_NULL_Active_AC_REWARD_TP_eq_T   | 9        | 2           | 1           |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_5_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S     | 9        | 2           | 1           |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S  | 9        | 2           | 1           |
