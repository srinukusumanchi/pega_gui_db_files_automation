@MissingEMAIL_5779_IHValidation
Feature: Validation for 5779 MissingEMAIL

  @MissingEMAILSOL @MissingEMAILSOL_IH_Base_Validation_5779 @5779 @SOL @RS22069 @MissingEMAILBase
  Scenario Outline: Missing Email RS22069_5779_SOL Validate IH details against database and pega for Base test cases
    Given load data from "MissingEmail_SOL" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Missing or Invalid Email offer details against IH for "SOL" Channel
    Examples:
      | Test cases       |
      | 5779_SOL_BASE_01 |


  @MissingEMAILSOL @MissingEMAILSOL_IH_Positive_Validation_5779 @5779 @SOL @RS22069 @MissingEMAILPos
  Scenario Outline: Missing Email RS22069_5779_SOL Validate IH details against database and pega for Positive test cases
    Given load data from "MissingEmail_SOL" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Missing or Invalid Email offer details against IH for "SOL" Channel
    Examples:
      | Test cases                           |
      | 5779_SOL_LANG_CD_eq_fr               |
      | 5779_SOL_UNSUBSCRIBED_F_eq_NULL      |
      | 5779_SOL_SOL_LAST_LOGIN_DT_eq_90Days |
      | 5779_SOL_MOB_LAST_LOGIN_DT_eq_90Days |
      | 5779_SOL_MC_ELIG_F_eq_NULL           |
      | 5779_SOL_GIVEN_NAME_eq_NULL          |
      | 5779_SOL_DO_NOT_SOLICIT_F_eq_NULL    |

  @MissingEMAILSOL @MissingEMAILSOL_IH_Negative_Validation_5779 @5779 @SOL @RS22069 @MissingEMAILNeg
  Scenario Outline: Missing Email RS22069_5779_SOL Validate IH details against database and pega for Negative test cases
    Given load data from "MissingEmail_SOL" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                                                                                 |
      | N_5779_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |
      | N_5779_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |
      | N_5779_SOL_DECEASED_F_eq_Y                                                                 |
      | N_5779_SOL_DECEASED_F_eq_NULL                                                              |
      | N_5779_SOL_PRIM_EMAIL_ADDR_ne_NULL                                                         |
      | N_5779_SOL_PRIM_CNTRY_CD_ne_CA                                                             |
      | N_5779_SOL_PRIM_CNTRY_CD_eq_NULL                                                           |
      | N_5779_SOL_LANG_CD_ne_en                                                                   |
      | N_5779_SOL_LANG_CD_ne_fr                                                                   |
      | N_5779_SOL_LANG_CD_ne_e                                                                    |
      | N_5779_SOL_LANG_CD_ne_f                                                                    |
      | N_5779_SOL_LANG_CD_eq_NULL                                                                 |
      | N_5779_SOL_UNSUBSCRIBED_F_eq_Y                                                             |
      | N_577_SOL_MOB_LAST_LOGIN_DT_eq_NULL_AND_SOL_LAST_LOGIN_DT_eq_NULL                          |
      | N_577_SOL_MOB_LAST_LOGIN_DT_gt_90_AND_SOL_LAST_LOGIN_DT_gt_90                              |
      | N_5779_SOL_MC_ELIG_F_eq_N                                                                  |
      | N_5779_SOL_INDV_FRST_NM_eq_NULL                                                            |
      | N_5779_SOL_INDV_LAST_NM_eq_NULL                                                            |
      | N_5779_SOL_LANG_CD_eq_NULL                                                                 |
      | N_5779_SOL_PRIM_ADDR_LINE_1_eq_NULL                                                        |
      | N_5779_SOL_PRIM_CITY_NM_eq_NULL                                                            |
      | N_5779_SOL_PRIM_PROV_CD_eq_NULL                                                            |
      | N_5779_SOL_PRIM_POST_CD_eq_NULL                                                            |
      | N_5779_SOL_ACCT_SUBSYS_ID_ne_AC                                                            |
      | N_5779_SOL_ACCT_SUBSYS_ID_eq_NULL                                                          |
      | N_5779_SOL_EDW_ACCT_STAT_CD_ne_A                                                           |
      | N_5779_SOL_EDW_ACCT_STAT_CD_eq_NULL                                                        |
      | N_5779_SOL_SCD_NUM_eq_NULL                                                                 |
      | N_5779_SOL_CUST_TP_CD_ne_PSNL                                                              |
      | N_5779_SOL_DO_NOT_SOLICIT_F_eq_Y                                                           |

# Added for July 6th 2023 Release - Can be deactivated later

  @MissingEMAILSOL @MissingEMAILSOL_IH_Pos_Validation_5779_July_6th_2023_Release @5779 @SOL @RS22069 @MissingEMAILBase
  Scenario Outline: Missing Email RS22069_5779_SOL Validate IH details against database and pega for Base test cases for July 6th 2023 Release
    Given load data from "MissingEmail_SOL" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Missing or Invalid Email offer details against IH for "SOL" Channel
    Examples:
      | Test cases                      |
      | 5779_SOL_DO_NOT_EMAIL_F_eq_Y    |
      | 5779_SOL_DO_NOT_EMAIL_F_eq_NULL |
      | 5779_SOL_DO_NOT_EMAIL_F_eq_N    |


