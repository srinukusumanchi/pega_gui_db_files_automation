@InvalidEMAIL_5778_IHValidation_FFT
Feature: Validation for 5778 InvalidEMAIL

  @InvalidEMAILFFT @InvalidEMAILFFT_IH_Base_Validation_5778 @5778 @FFT @RS22069 @InvalidEMAILBaseFFT
  Scenario Outline: Invalid Email RS22069_5778_FFT Validate IH details against database and pega for Base test cases
    Given load data from "InvalidEmail_FFT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Missing or Invalid Email offer details against IH for "FFT" Channel

    Examples:
      | Test cases                |
      | 5778_FFT_BASE_Creative_01 |


  @InvalidEMAILFFT @InvalidEMAILFFT_IH_Positive_Validation_5778 @5893 @FFT @RS22069 @InvalidEMAILPosFFT
  Scenario Outline: Invalid Email RS22069_5778_FFT Validate IH details against database and pega for Positive test cases
    Given load data from "InvalidEmail_FFT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Missing or Invalid Email offer details against IH for "FFT" Channel

    Examples:
      | Test cases                                                          |
      | 5778_FFT_VLD_EMAIL_F_eq_NULL                                        |
      | 5778_FFT_LANG_CD_eq_fr                                              |
      | 5778_FFT_UNSUBSCRIBED_F_eq_NULL                                     |
      | 5778_FFT_SOL_LAST_LOGIN_DT_eq_blank_AND_MOB_LAST_LOGIN_DT_eq_blank  |
      | 5778_FFT_SOL_LAST_LOGIN_DT_eq_blank_AND_MOB_LAST_LOGIN_DT_gt_90days |
      | 5778_FFT_SOL_LAST_LOGIN_DT_gt_90days_AND_MOB_LAST_LOGIN_DT_eq_blank |
      | 5778_FFT_PRIM_EMAIL_ADDR_ne_NULL                                    |
      | 5778_FFT_GIVEN_NAME_eq_NULL                                         |
      | 5778_FFT_DO_NOT_SOLICIT_F_eq_NULL                                   |
      | 5778_FFT_CUST_AGE_eq_18                                             |
      | 5778_FFT_CUST_AGE_eq_74                                             |


  @InvalidEMAILFFT @InvalidEMAILFFT_IH_Negative_Validation_5778 @5893 @FFT @RS22069 @InvalidEMAILNeg
  Scenario Outline: Invalid Email RS22069_5778_FFT of Validate IH detailss against database and pega for Negative test cases
    Given load data from "InvalidEmail_FFT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "FFT" channel

    Examples:
      | Test cases                                                                                 |
      | N_5778_FFT_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |
      | N_5778_FFT_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |
      | N_5778_FFT_DECEASED_F_eq_Y                                                                 |
      | N_5778_FFT_DECEASED_F_eq_NULL                                                              |
      | N_5778_FFT_VLD_EMAIL_F_eq_Y                                                                |
      | N_5778_FFT_PRIM_CNTRY_CD_ne_CA                                                             |
      | N_5778_FFT_PRIM_CNTRY_CD_eq_NULL                                                           |
      | N_5778_FFT_LANG_CD_ne_en                                                                   |
      | N_5778_FFT_LANG_CD_ne_fr                                                                   |
      | N_5778_FFT_LANG_CD_ne_e                                                                    |
      | N_5778_FFT_LANG_CD_ne_f                                                                    |
      | N_5778_FFT_LANG_CD_eq_NULL                                                                 |
      | N_5778_FFT_UNSUBSCRIBED_F_eq_Y                                                             |
      | N_5778_FFT_SOL_LAST_LOGIN_DT_lt_90days                                                     |
      | N_5778_FFT_MOB_LAST_LOGIN_DT_lt_90days                                                     |
      | N_5778_FFT_INDV_FRST_NM_eq_NULL                                                            |
      | N_5778_FFT_INDV_LAST_NM_eq_NULL                                                            |
      | N_5778_FFT_LANG_CD_eq_NULL                                                                 |
      | N_5778_FFT_PRIM_ADDR_LINE_1_eq_NULL                                                        |
      | N_5778_FFT_PRIM_CITY_NM_eq_NULL                                                            |
      | N_5778_FFT_PRIM_PROV_CD_eq_NULL                                                            |
      | N_5778_FFT_PRIM_POST_CD_eq_NULL                                                            |
      | N_5778_FFT_ACCT_SUBSYS_ID_ne_AC                                                            |
      | N_5778_FFT_ACCT_SUBSYS_ID_eq_NULL                                                          |
      | N_5778_FFT_EDW_ACCT_STAT_CD_ne_A                                                           |
      | N_5778_FFT_EDW_ACCT_STAT_CD_eq_NULL                                                        |
      | N_5778_FFT_SCD_NUM_eq_NULL                                                                 |
      | N_5778_FFT_CUST_TP_CD_ne_PSNL                                                              |
      | N_5778_FFT_DO_NOT_SOLICIT_F_eq_Y                                                           |
      | N_5778_FFT_SOL_LAST_LOGIN_DT_eq_90days                                                     |
      | N_5778_FFT_MOB_LAST_LOGIN_DT_eq_90days                                                     |
      | N-5778_FFT_PRIM_EMAIL_ADDR_eq_NULL                                                         |
      | N_5778_FFT_CUST_AGE_lt_18                                                                  |
      | N_5778_FFT_CUST_AGE_gt_74                                                                  |
      | N_5778_FFT_CUST_AGE_eq_NULL                                                                |

# Added for July 6th 2023 Release - Can be deactivated later
  @InvalidEMAILFFT @InvalidEMAILFFT_IH_Positive_Validation_5778_July_6th_2023_Release @5778 @FFT @RS22069 @InvalidEMAILBaseFFT
  Scenario Outline: Invalid Email RS22069_5778_FFT Validate IH details against database and pega for Positive test cases for July 6th 2023 Release
    Given load data from "InvalidEmail_FFT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Missing or Invalid Email offer details against IH for "FFT" Channel
    Examples:
      | Test cases                      |
      | 5778_FFT_DO_NOT_EMAIL_F_eq_Y    |
      | 5778_FFT_DO_NOT_EMAIL_F_eq_NULL |
      | 5778_FFT_DO_NOT_EMAIL_F_eq_N    |
