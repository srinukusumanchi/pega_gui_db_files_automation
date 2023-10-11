@EMOB_Notification_EML_5894_IHValidation
Feature: Validation for 5894 EMOB Notification in EML Channel

  @EMOB_Notification @EMOB_Notification_EML_IH_Base_Validation_5894 @5894 @EML @VS16008 @EMOB_Notification_IHValidation
  Scenario Outline: EMOB_Notification VS16008_5894_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "EMOB_Notification_5894" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate EMOB Notification offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                |
      | 5894_EML_BASE_Creative_01 |

  @EMOB_Notification @EMOB_Notification_EML_IH_Positive_Validation_5894 @5894 @EML @VS16008 @EMOB_Notification_IHValidation
  Scenario Outline: EMOB_Notification VS16008_5894_EML Validate IH details against database and pega for Positive Line test cases
    Given load data from "EMOB_Notification_5894" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate EMOB Notification offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                       |
      | 5894_EML_Seg_01_DO_NOT_SOLICIT_F_eq_NULL         |
      | 5894_EML_Seg_01_CUST_AGE _eq_18                  |
      | 5894_EML_Seg_01_CUST_AGE _eq_19                  |
      | 5894_EML_Seg_01_NOT_AML_KYC _eq_NULL             |
      | 5894_EML_Seg_01_CC_VIP_IND_eq_NULL               |
      | 5894_EML_Seg_01_ACCT_ODT_eq_4                    |
      | 5894_EML_Seg_01_ACCT_ODT_eq_7                    |
      | 5894_EML_Seg_01_MK_CC_INFO_ACCTS_EMAIL_F_eq_NULL |
      | 5894_EML_Seg_01_BLOCK_CD_eq_NULL_RECL_CD_eq_C    |
      | 5894_EML_Seg_01_BLOCK_CD_eq_X_RECL_CD_eq_H       |


  @EMOB_Notification @EMOB_Notification_EML_IH_Negative_Validation_5894 @5894 @EML @VS16008 @EMOB_Notification_IHValidation
  Scenario Outline: EMOB_Notification VS16008_5894_EML Validate IH details against database and pega for Negative Line test cases
    Given load data from "EMOB_Notification_5894" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel

    Examples:
      | Test cases                                       |
      | N-5894_EML_Seg_01_DECEASED_F_eq_Y                |
      | N-5894_EML_Seg_01_DECEASED_F_eq_NULL             |
      | N-5894_EML_Seg_01_PRIM_CNTRY_CD_ne_CA            |
      | N-5894_EML_Seg_01_PRIM_CNTRY_CD_eq_NULL          |
      | N-5894_EML_Seg_01_CUST_TP_CD_ne_PSNL             |
      | N-5894_EML_Seg_01_DO_NOT_SOLICIT_F_eq_Y          |
      | N-5894_EML_Seg_01_LANG_CD_eq_KA                  |
      | N-5894_EML_Seg_01_CUST_AGE _eq_NULL              |
      | N-5894_EML_Seg_01_CUST_AGE _lt_18                |
      | N-5894_EML_Seg_01_NOT_AML_KYC _eq_Y              |
      | N-5894_EML_Seg_01_MRKTBLE_F _eq_N                |
      | N-5894_EML_Seg_01_MRKTBLE_F _eq_NULL             |
      | N-5894_EML_Seg_01_CC_VIP_IND_eq_2                |
      | N-5894_EML_Seg_01_CC_VIP_IND_eq_9                |
      | N-5894_EML_Seg_01_ACCT_ODT_lt_4                  |
      | N-5894_EML_Seg_01_ACCT_ODT_gt_7                  |
      | N-5894_EML_Seg_01_ACCT_ODT_eq_NULL               |
      | N-5894_EML_Seg_01_DO_NOT_EMAIL_F _eq_Y           |
      | N-5894_EML_Seg_01_DO_NOT_EMAIL_F _eq_NULL        |
      | N-5894_EML_Seg_01_VLD_EMAIL_F_eq_N               |
      | N-5894_EML_Seg_01_VLD_EMAIL_F_eq_NULL            |
      | N-5894_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL        |
      | N-5894_EML_Seg_01_INDV_FRST_NM _eq_NULL          |
      | N-5894_EML_Seg_01_INDV_LAST_NM_eq_NULL           |
      | N-5894_EML_Seg_01_MK_CC_INFO_ACCTS_EMAIL_F _eq_N |
      | N-5894_EML_Seg_01_BLOCK_CD_eq_C_RECL_CD_eq_NULL  |
      | N-5894_EML_Seg_01_BLOCK_CD_eq_H_RECL_CD_eq_X     |
      | N-5894_EML_Seg_01_REISSU_CD_eq_A                 |
      | N-5894_EML_Seg_01_PRIM_ACCT_HOLDER_F_eq_N        |
      | N-5894_EML_Seg_01_PRIM_ACCT_HOLDER_F_eq_NULL     |
      | N-5894_EML_Seg_01_SRC_ACCT_STAT_CD_ne_Open       |
      | N-5894_EML_Seg_01_SRC_ACCT_STAT_CD_eq_NULL       |
      | N-5894_EML_Seg_01_ACCT_SUBSYS_ID_ne_KS           |
      | N-5894_EML_Seg_01_ACCT_SUBSYS_ID_eq_NULL         |
      | N-5894_EML_Seg_01_SRC_PRD_CD_ne_VUS              |
      | N-5894_EML_Seg_01_SRC_PRD_CD_eq_NULL             |
      | N-5894_EML_Seg_01_SRC_SUB_PRD_CD_ne_RG           |
      | N-5894_EML_Seg_01_SRC_SUB_PRD_CD_eq_NULL         |
      | N-5894_EML_Seg_01_PRIM_PROV_CD_eq_NULL           |
      | N-5894_EML_Seg_01_CHRGF_CD_ne_0                  |
      | N-5894_EML_Seg_01_CHRGF_CD_eq_NULL               |

