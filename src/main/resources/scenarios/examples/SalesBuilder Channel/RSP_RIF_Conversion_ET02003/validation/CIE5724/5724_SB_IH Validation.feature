@RIF_RSP_5724_IHValidation_SB
Feature: Validation of 5724 RIF_RSP for SB Channel

  @RIF_RSP @RIF_RSP_SB_IH_Base_Validation_5724 @5724 @SB @ET02003
  Scenario Outline: RIF RSP ET02003_5724_SB Validate IH details against database and pega for Base Line test cases
    Given load data from "RSP_RIF_Conv" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then validate RIF RSP offer details against IH for "COS" Channel
    Examples:
      | Test cases      |
      | 5724_SB_BASE_01 |


#Positive IH Validation
  @RIF_RSP @RIF_RSP_SB_IH_Positive_Validation_5724 @5724 @SB @ET02003
  Scenario Outline: RIF RSP ET02003_5724_SB Validate IH details against database and pega for Positive test cases
    Given load data from "RSP_RIF_Conv" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then validate RIF RSP offer details against IH for "COS" Channel
    Examples:
      | Test cases                                                                         |
      | 5724_SB_LANG_CD_eq_fr                                                              |
      | 5724_SB_DO_NOT_SOLICIT_F_eq_NULL_NOT_AML_KYC_eq_NULL                               |
      | 5724_SB_RSP_Account_Count_eq_3                                                     |
      | 5724_SB_GIVEN_NAME_ne_NULL_ASSIGNED_FA_TRANSIT_ne_NULL                             |
      | 5724_SB_INDV_TTL_NM_ne_NULL_RESP_TRNST_NUM_is_Valid                                |
      | 5724_SB_INDV_FRST_NM_ne_NULL_RESP_TRNST_NUM_is_InValid_CLOSEST_TRANSIT_NUM_ne_NULL |
      | 5724_SB_INDV_LAST_NM_ne_NULL_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_ne_NULL    |
      | 5724_SB_ALL_NAME_ne_NULL                                                           |


#Negative IH Validation
  @RIF_RSP @RIF_RSP_SB_IH_Negative_Validation_5724 @5724 @SB @ET02003
  Scenario Outline: RIF RSP ET02003_5724_SB Validate IH details against database and pega for Negative test cases
    Given load data from "RSP_RIF_Conv" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "COS" channel
    Examples:
      | Test cases                                     |
      | N_5724_SB_DECEASED_F_ne_N                      |
      | N_5724_SB_DECEASED_F_eq_NULL                   |
      | N_5724_SB_PRIM_CNTRY_CD_ne_CA                  |
      | N_5724_SB_PRIM_CNTRY_CD_eq_NULL                |
      | N_5724_SB_CUST_AGE_eq_64                       |
      | N_5724_SB_CUST_AGE_eq_70                       |
      | N_5724_SB_CUST_AGE_eq_NULL                     |
      | N_5724_SB_INDV_BRTH_DT_eq_0                    |
      | N_5724_SB_INDV_BRTH_DT_eq_2                    |
      | N_5724_SB_INDV_BRTH_DT_eq_NULL                 |
      | N_5724_SB_LANG_CD_eq_bn                        |
      | N_5724_SB_LANG_CD_eq_NULL                      |
      | N_5724_SB_DO_NOT_SOLICIT_F_eq_Y                |
      | N_5724_SB_MRKTBLE_F_eq_N                       |
      | N_5724_SB_MRKTBLE_F_eq_NULL                    |
      | N_5724_SB_NOT_AML_KYC_eq_Y                     |
      | N_5724_SB_DO_NOT_CALL_F_eq_Y                   |
      | N_5724_SB_DO_NOT_CALL_F_eq_NULL                |
      | N_5724_SB_ACCT_SUBSYS_ID_ne_UF                 |
      | N_5724_SB_ACCT_SUBSYS_ID_eq_NULL               |
      | N_5724_SB_PLN_ACCT_CD_MASTER_ne_RRSP           |
      | N_5724_SB_PLN_ACCT_CD_MASTER_eq_NULL           |
      | N_5724_SB_SRC_ACCT_STAT_CD_ne_Active           |
      | N_5724_SB_SRC_ACCT_STAT_CD_eq_NULL             |
      | N_5724_SB_RSP_Account_Count_eq_0               |
      | N_5724_SB_ALL_NAME_eq_NULL                     |
      | N_5724_SB_ALL_Transit_eq_NULL                  |
      | N_5724_SB_RESP_TRNST_NUM_is_InValid            |
      | N_5724_SB_DEDICATED_INVSTMNT_ADVISOR_F_ne_N    |
      | N_5724_SB_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL |

