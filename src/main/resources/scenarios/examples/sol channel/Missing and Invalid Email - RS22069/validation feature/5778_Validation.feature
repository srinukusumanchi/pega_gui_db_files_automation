@InvalidEMAIL_5778_IHValidation
Feature: Validation for 5778 InvalidEMAIL

  @InvalidEMAILSOL @InvalidEMAILSOL_IH_Base_Validation_5778 @5778 @SOL @RS22069 @InvalidEMAILBase
  Scenario Outline: Invalid Email RS22069_5778_SOL Validate IH details against database and pega for Base test cases
    Given load data from "InvalidEmail_SOL" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Missing or Invalid Email offer details against IH for "SOL" Channel
    Examples:
      | Test cases                |
      | 5778_SOL_BASE_Creative_01 |


  @InvalidEMAILSOL @InvalidEMAILSOL_IH_Positive_Validation_5778 @5893 @SOL @RS22069 @InvalidEMAILPos
  Scenario Outline: Invalid Email RS22069_5778_SOL Validate IH details against database and pega for Positive test cases
    Given load data from "InvalidEmail_SOL" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Missing or Invalid Email offer details against IH for "SOL" Channel
    Examples:
      | Test cases                           |
      | 5778_SOL_VLD_EMAIL_F_eq_NULL         |
      | 5778_SOL_LANG_CD_eq_fr               |
      | 5778_SOL_UNSUBSCRIBED_F_eq_NULL      |
      | 5778_SOL_SOL_LAST_LOGIN_DT_eq_90Days |
      | 5778_SOL_MOB_LAST_LOGIN_DT_eq_90Days |
      | 5778_SOL_MC_ELIG_F_eq_NULL           |
      | 5778_SOL_PRIM_EMAIL_ADDR_eq_NULL     |
      | 5778_SOL_GIVEN_NAME_eq_NULL          |
      | 5778_SOL_DO_NOT_SOLICIT_F_eq_NULL    |

  @InvalidEMAILSOL @InvalidEMAILSOL_IH_Negative_Validation_5778 @5893 @SOL @RS22069 @InvalidEMAILNeg
  Scenario Outline: Invalid Email RS22069_5778_SOL Validate IH details against database and pega for Negative test cases
    Given load data from "InvalidEmail_SOL" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                                                                                 |
      | N_5778_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |
      | N_5778_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |
      | N_5778_SOL_DECEASED_F_eq_Y                                                                 |
      | N_5778_SOL_DECEASED_F_eq_NULL                                                              |
      | N_5778_SOL_VLD_EMAIL_F_eq_Y                                                                |
      | N_5778_SOL_PRIM_CNTRY_CD_ne_CA                                                             |
      | N_5778_SOL_PRIM_CNTRY_CD_eq_NULL                                                           |
      | N_5778_SOL_LANG_CD_ne_en                                                                   |
      | N_5778_SOL_LANG_CD_ne_fr                                                                   |
      | N_5778_SOL_LANG_CD_ne_e                                                                    |
      | N_5778_SOL_LANG_CD_ne_f                                                                    |
      | N_5778_SOL_LANG_CD_eq_NULL                                                                 |
      | N_5778_SOL_UNSUBSCRIBED_F_eq_Y                                                             |
      | N_5778_SOL_MOB_LAST_LOGIN_DT_eq_NULL_AND_SOL_LAST_LOGIN_DT_eq_NULL                         |
      | N_5778_SOL_MOB_LAST_LOGIN_DT_gt_90_AND_SOL_LAST_LOGIN_DT_gt_90                             |
      | N_5778_SOL_MC_ELIG_F_eq_N                                                                  |
      | N_5778_SOL_INDV_FRST_NM_eq_NULL                                                            |
      | N_5778_SOL_INDV_LAST_NM_eq_NULL                                                            |
      | N_5778_SOL_LANG_CD_eq_NULL                                                                 |
      | N_5778_SOL_PRIM_ADDR_LINE_1_eq_NULL                                                        |
      | N_5778_SOL_PRIM_CITY_NM_eq_NULL                                                            |
      | N_5778_SOL_PRIM_PROV_CD_eq_NULL                                                            |
      | N_5778_SOL_PRIM_POST_CD_eq_NULL                                                            |
      | N_5778_SOL_ACCT_SUBSYS_ID_ne_AC                                                            |
      | N_5778_SOL_ACCT_SUBSYS_ID_eq_NULL                                                          |
      | N_5778_SOL_EDW_ACCT_STAT_CD_ne_A                                                           |
      | N_5778_SOL_EDW_ACCT_STAT_CD_eq_NULL                                                        |
      | N_5778_SOL_SCD_NUM_eq_NULL                                                                 |
      | N_5778_SOL_CUST_TP_CD_ne_PSNL                                                              |
      | N_5778_SOL_DO_NOT_SOLICIT_F_eq_Y                                                           |



# Added for July 6th 2023 Release - Can be deactivated later

  @InvalidEMAILSOL @InvalidEMAILSOL_IH_Pos_Validation_5778_July_6th_2023_Release @5778 @SOL @RS22069 @InvalidEMAILBase
  Scenario Outline: Invalid Email RS22069_5778_SOL Validate IH details against database and pega for Positive test cases for July 6th 2023 Release
    Given load data from "InvalidEmail_SOL" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Missing or Invalid Email offer details against IH for "SOL" Channel
    Examples:
      | Test cases                      |
      | 5778_SOL_DO_NOT_EMAIL_F_eq_Y    |
      | 5778_SOL_DO_NOT_EMAIL_F_eq_NULL |
      | 5778_SOL_DO_NOT_EMAIL_F_eq_N    |


