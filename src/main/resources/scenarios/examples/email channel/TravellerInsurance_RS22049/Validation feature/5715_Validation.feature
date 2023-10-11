Feature: IH Validation for 5715 Travel Insurance

# Base Positive Scenarios that covers both the Creatives for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_Base_Positive_IH_Validation @5715 @EMAIL @RS22049
  Scenario Outline: TravelInsurance_RS22049_5715_EMAIL Validate offer details against IH for Base Positive test cases
    Given load data from "TravelInsurance" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Travel Insurance offer details against IH
    Examples:
      | Test cases       |
      | 5715_EML_BASE_01 |
      | 5715_EML_BASE_02 |


# Positive Scenarios with Single Account that covers both the Creatives for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_Positive_SingleAccount_IH_Validation @5715 @EMAIL @RS22049
  Scenario Outline: TravelInsurance_RS22049_5715_EMAIL Validate offer details against IH for Positive test cases with Single Account
    Given load data from "TravelInsurance" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Travel Insurance offer details against IH
    Examples:
      | Test cases                                                       |
      | 5715_EML_lang_cd_eq_ fr                                          |
      | 5715_EML_cust_age _eq_18                                         |
      | 5715_EML_DNS_eq_NULL                                             |
      | 5715_EML_PROV_CD_eq_NULL                                         |
      | 5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND                         |
      | 5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_evnt_dt_eq_18           |
      | 5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND                   |
#      | 5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_evnt_dt_eq_18     |
      | 5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_eq_1        |
      | 5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_gt_1        |
      | 5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL               |
#      | 5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_evnt_dt_eq_18 |
      | 5715_EML_PROD_CD_eq_AXG_SUB_PROD_eq_GS                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_NF                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_PB                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_RG                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_SP                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_ST                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_DM                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_ST                           |
      | 5715_EML_PROD_CD_eq_VFF_SUB_PROD_eq_TR                           |
      | 5715_EML_PROD_CD_eq_VFF_SUB_PROD_eq_TS                           |
      | 5715_EML_PROD_CD_eq_BLV_SUB_PROD_eq_YY                           |
      | 5715_EML_PROD_CD_eq_AXP_SUB_PROD_eq_PC                           |
      | 5715_EML_PROD_CD_eq_AXS_SUB_PROD_eq_SC                           |
      | 5715_EML_PROD_CD_eq_AXS_SUB_PROD_eq_SS                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SV                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_ZZ                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SS                           |
      | 5715_EML_PROD_CD_eq_VFF_SUB_PROD_eq_F1                           |
      | 5715_EML_PROD_CD_eq_VFA_SUB_PROD_eq_A1                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_NF                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_RG                           |
      | 5715_EML_PROD_CD_eq_VFA_SUB_PROD_eq_A3                           |
      | 5715_EML_PROD_CD_eq_VLR_SUB_PROD_eq_NF                           |
      | 5715_EML_PROD_CD_eq_VLR_SUB_PROD_eq_RG                           |
      | 5715_EML_PROD_CD_eq_VLR_SUB_PROD_eq_RC                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SC                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SL                           |
      | 5715_EML_MK_INSURANCE_EMAIL_F_eq_NULL                            |


# Positive Scenarios with Multiple Accounts for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_Positive_MultipleAccounts_IH_Validation @5715 @EMAIL @RS22049
  Scenario Outline: TravelInsurance_RS22049_5715_EMAIL Validate offer details against IH for Positive test cases with Multiple Accounts
    Given load data from "TravelInsurance" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Travel Insurance offer details against IH
    Examples:
      | Test cases                                                                                |
      | 5715_EML_multiple_insight_cd_insight1                                                     |
      | 5715_EML_ACTIVE_BB_Active_AC                                                              |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_RG_PROD_CD_eq_VGD_SUB_PROD_eq_SP_Prioritization       |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_ST_BBACCT_ACACCT_Prioritization                       |
      | 5715_EML_PROD_CD_eq_VFA_SUB_PROD_eq_A3_BBACCT_ACACCT_Segment02                            |
      | 5715_EML_Credit_Card_Type_Prioritization_4_Accounts                                       |
      | 5715_EML_Credit_Card_Type_Prioritization_3_Accounts                                       |
      | 5715_EML_Credit_Card_Type_Prioritization_2_Accounts                                       |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_11_Active_AC_REWARD_TP_eq_T  |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_11_Active_AC_REWARD_TP_eq_S  |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_12_Active_AC_REWARD_TP_eq_T  |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_12_Active_AC_REWARD_TP_eq_S  |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_S |


# Negative Scenarios with Single Account for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_Negative_SingleAccount_IH_Validation @5715 @EMAIL @RS22049
  Scenario Outline: TravelInsurance_RS22049_5715_EMAIL Validate offer details against IH for Negative test cases with Single Account
    Given load data from "TravelInsurance" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                            |
      | N_5715_EML_DECEASED_F_eq_Y                                            |
      | N_5715_EML_DECEASED_F_eq_NULL                                         |
      | N_5715_EML_CUST_TP_CD_ne_PSNL                                         |
      | N_5715_EML_LANG_CD_eq_K                                               |
      | N_5715_EML_LANG_CD_eq_NULL                                            |
      | N_5715_EML_PRIM_CNTRY_CD_eq_NULL                                      |
      | N_5715_EML_PRIM_CNTRY_CD_ne_CA                                        |
      | N_5715_EML_MKTBL_eq_N                                                 |
      | N_5715_EML_MKTBL_eq_NULL                                              |
      | N_5715_EML_DNS_eq_Y                                                   |
      | N_5715_EML_PRIM_PROV_CD_eq_QC                                         |
      | N_5715_EML_CUST_AGE_lt_18                                             |
      | N_5715_EML_CUST_AGE_eq_NULL                                           |
      | N_5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_curr_val_ne_1              |
      | N_5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_curr_val_eq_null           |
      | N_5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_evnt_dt_gt_18              |
      | N_5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_curr_val_ne_1        |
      | N_5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_curr_val_eq_null     |
      | N_5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_evnt_dt_gt_18        |
      | N_5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_lt_1           |
      | N_5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_eq_NULL        |
      | N_5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_curr_val_ne_1    |
      | N_5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_curr_val_eq_null |
      | N_5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_evnt_dt_gt_18    |
      | N_5715_EML_ACCT_SUBSYS_ID_ne_KS_ie_UO                                 |
      | N_5715_EML_ACCT_STAT_CD_ne_Open                                       |
      | N_5715_EML_ACCT_STAT_CD _eq_ NULL                                     |
      | N_5715_EML_SRC_SYS_PRD_CD_eq_BBB                                      |
      | N_5715_EML_SRC_SYS_PRD_CD_eq_NULL                                     |
      | N_5715_EML_SRC_SYS_SUB_PRD_CD_eq_DD                                   |
      | N_5715_EML_SRC_SYS_SUB_PRD_CD_eq_NULL                                 |
      | N_5715_EML_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_DM             |
      | N_5715_EML_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_MB             |
      | N_5715_EML_VLD_EMAIL_F_ne_Y                                           |
      | N_5715_EML_VLD_EMAIL_F_eq_NULL                                        |
      | N_5715_EML_PRIM_EMAIL_ADDR_eq_NULL                                    |
      | N_5715_EML_PRIM_EMAIL_ADDR_eq_BLANK                                   |
      | N_5715_EML_INDV_FRST_NM_eq_NULL                                       |
      | N_5715_EML_INDV_FRST_NM_eq_BLANK                                      |
      | N_5715_EML_DO_NOT_EMAIL_F_eq_Y                                        |
      | N_5715_EML_DO_NOT_EMAIL_F_eq_NULL                                     |
      | N_5715_EML_MK_INSURANCE_EMAIL_F_eq_N                                  |
#      # Added on 2022-04-12
      | N_5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_evnt_dt_eq_NULL            |
      | N_5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_evnt_dt_eq_NULL      |
      | N_5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_evnt_dt_eq_NULL  |



# Negative Scenarios with Multiple Accounts for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_Negative_MultipleAccounts_IH_Validation @5715 @EMAIL @RS22049
  Scenario Outline: TravelInsurance_RS22049_5715_EMAIL Validate offer details against IH for Negative test cases with Multiple Account
    Given load data from "TravelInsurance" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                          |
      | N_5715_EML_Not_Active_BB_Active_AC                                  |
      | N_5715_EML_Active_ACCT_SUBSYS_ID _ne_BB_Active_AC                   |
      | N_5715_EML_Active_BB_Active_AC_PROD_HEIR_LEVEL_ne_Chequing Accounts |
      | N_5715_EML_Active_BB_NOT_Active_AC                                  |
      | N_5715_EML_Active_BB_Active_ACCT_SUBSYS_ID_ne_AC                    |
      | N_5715_EML_Active_BB_Active_AC_pos131211_ne_600                     |
      | N_5715_EML_SRC_ACCT_STAT_CD_eq_NULL_BB_Active_AC                    |
      | N_5715_EML_EDW_ACCT_STAT_CD_eq_NULL_ACTIVE_BB_AC                    |
      | N_5715_EML_Active_ACCT_SUBSYS_ID _eq_NULL_Active_AC                 |
      | N_5715_EML_Active_BB_Active_AC_PROD_HEIR_LEVEL_eq_null              |
      | N_5715_EML_Active_BB_Active_AC_ACCT_SUBSYS_ID_eq_NULL               |




# Partial Negative Scenarios with Multiple Accounts for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_PartialNegative_MultipleAccounts_IH_Validation @5715 @EMAIL @RS22049
  Scenario Outline: TravelInsurance_RS22049_5715_EMAIL Validate offer details against IH for Partial Negative test cases with Multiple Accounts
    Given load data from "TravelInsurance" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Travel Insurance offer details against IH
    Examples:
      | Test cases                                                                                      |
      | PN_5715_EML_Credit_Card_Type_Prioritization_4_Accounts_Prior1_SRC_ACCT_STAT_CD_ne_Open          |
      | PN_5715_EML_Credit_Card_Type_Prioritization_3_Accounts_Prior2_SRC_ACCT_STAT_CD_ne_Open          |
      | PN_5715_EML_Credit_Card_Type_Prioritization_2_Accounts_Prior3_SRC_ACCT_STAT_CD_ne_Open          |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_X    |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_NULL |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_10_Active_AC_REWARD_TP_eq_T     |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_NULL_Active_AC_REWARD_TP_eq_T   |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_5_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S     |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S  |


