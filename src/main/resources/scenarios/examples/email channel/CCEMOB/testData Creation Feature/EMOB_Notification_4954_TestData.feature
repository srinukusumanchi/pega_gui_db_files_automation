@EMOB_Notification_EML_TestLoad
Feature: Test Data Creation For EMOB Notification for EML Channel

  @EMOB_Notification_EML @EMOB_Notification_EML_Base_TestData_4954 @4954 @EML @VS16008
  Scenario Outline: EMOB Notification 4954 VS16008 EML Create test data for Base Line test cases
    Given load data from "EMOB_Notification_4954" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts


    Examples:
      | Test cases                | Acct_Cnt | ACCT_ODT_Val |
      | 4954_EML_BASE_Creative_01 | 1        | 7            |

  @EMOB_Notification_EML @EMOB_Notification_EML_Positive_TestData_4954 @4954 @EML @VS16008
  Scenario Outline: EMOB Notification 4954 VS16008 EML Create test data for Positive Line test cases
    Given load data from "EMOB_Notification_4954" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts


    Examples:
      | Test cases                                       | Acct_Cnt | ACCT_ODT_Val |
      | 4954_EML_Seg_01_DO_NOT_SOLICIT_F_eq_NULL         | 1        | 7            |
      | 4954_EML_Seg_01_CUST_AGE _eq_18                  | 1        | 7            |
      | 4954_EML_Seg_01_CUST_AGE _eq_19                  | 1        | 7            |
      | 4954_EML_Seg_01_NOT_AML_KYC _eq_NULL             | 1        | 7            |
      | 4954_EML_Seg_01_CC_VIP_IND_eq_NULL               | 1        | 7            |
      | 4954_EML_Seg_01_ACCT_ODT_eq_4                    | 1        | 5            |
      | 4954_EML_Seg_01_ACCT_ODT_eq_7                    | 1        | 8            |
      | 4954_EML_Seg_01_MK_CC_INFO_ACCTS_EMAIL_F_eq_NULL | 1        | 7            |
      | 4954_EML_Seg_01_BLOCK_CD_eq_NULL_RECL_CD_eq_C    | 1        | 7            |
      | 4954_EML_Seg_01_BLOCK_CD_eq_X_RECL_CD_eq_H       | 1        | 7            |

  @EMOB_Notification_EML @EMOB_Notification_EML_Negative_TestData_4954 @4954 @EML @VS16008
  Scenario Outline: EMOB Notification 4954 VS16008 EML Create test data for Negative Line test cases
    Given load data from "EMOB_Notification_4954" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts


    Examples:
      | Test cases                                       | Acct_Cnt | ACCT_ODT_Val |
      | N-4954_EML_Seg_01_DECEASED_F_eq_Y                | 1        | 7            |
      | N-4954_EML_Seg_01_DECEASED_F_eq_NULL             | 1        | 7            |
      | N-4954_EML_Seg_01_PRIM_CNTRY_CD_ne_CA            | 1        | 7            |
      | N-4954_EML_Seg_01_PRIM_CNTRY_CD_eq_NULL          | 1        | 7            |
      | N-4954_EML_Seg_01_CUST_TP_CD_ne_PSNL             | 1        | 7            |
      | N-4954_EML_Seg_01_DO_NOT_SOLICIT_F_eq_Y          | 1        | 7            |
      | N-4954_EML_Seg_01_LANG_CD_eq_KA                  | 1        | 7            |
      | N-4954_EML_Seg_01_CUST_AGE _eq_NULL              | 1        | 7            |
      | N-4954_EML_Seg_01_CUST_AGE _lt_18                | 1        | 7            |
      | N-4954_EML_Seg_01_NOT_AML_KYC _eq_Y              | 1        | 7            |
      | N-4954_EML_Seg_01_MRKTBLE_F _eq_N                | 1        | 7            |
      | N-4954_EML_Seg_01_MRKTBLE_F _eq_NULL             | 1        | 7            |
      | N-4954_EML_Seg_01_CC_VIP_IND_eq_2                | 1        | 7            |
      | N-4954_EML_Seg_01_CC_VIP_IND_eq_9                | 1        | 7            |
      | N-4954_EML_Seg_01_ACCT_ODT_lt_4                  | 1        | 3            |
      | N-4954_EML_Seg_01_ACCT_ODT_gt_7                  | 1        | 8            |
      | N-4954_EML_Seg_01_ACCT_ODT_eq_NULL               | 1        | NULL         |
      | N-4954_EML_Seg_01_DO_NOT_EMAIL_F _eq_Y           | 1        | 7            |
      | N-4954_EML_Seg_01_DO_NOT_EMAIL_F _eq_NULL        | 1        | 7            |
      | N-4954_EML_Seg_01_VLD_EMAIL_F_eq_N               | 1        | 7            |
      | N-4954_EML_Seg_01_VLD_EMAIL_F_eq_NULL            | 1        | 7            |
      | N-4954_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL        | 1        | 7            |
      | N-4954_EML_Seg_01_INDV_FRST_NM _eq_NULL          | 1        | 7            |
      | N-4954_EML_Seg_01_INDV_LAST_NM_eq_NULL           | 1        | 7            |
      | N-4954_EML_Seg_01_MK_CC_INFO_ACCTS_EMAIL_F _eq_N | 1        | 7            |
      | N-4954_EML_Seg_01_BLOCK_CD_eq_C_RECL_CD_eq_NULL  | 1        | 7            |
      | N-4954_EML_Seg_01_BLOCK_CD_eq_H_RECL_CD_eq_X     | 1        | 7            |
      | N-4954_EML_Seg_01_REISSU_CD_eq_A                 | 1        | 7            |
      | N-4954_EML_Seg_01_PRIM_ACCT_HOLDER_F_eq_N        | 1        | 7            |
      | N-4954_EML_Seg_01_PRIM_ACCT_HOLDER_F_eq_NULL     | 1        | 7            |
      | N-4954_EML_Seg_01_SRC_ACCT_STAT_CD_ne_Open       | 1        | 7            |
      | N-4954_EML_Seg_01_SRC_ACCT_STAT_CD_eq_NULL       | 1        | 7            |
      | N-4954_EML_Seg_01_ACCT_SUBSYS_ID_ne_KS           | 1        | 7            |
      | N-4954_EML_Seg_01_ACCT_SUBSYS_ID_eq_NULL         | 1        | 7            |
      | N-4954_EML_Seg_01_SRC_PRD_CD_ne_AXS              | 1        | 7            |
      | N-4954_EML_Seg_01_SRC_PRD_CD_eq_NULL             | 1        | 7            |
      | N-4954_EML_Seg_01_SRC_SUB_PRD_CD_ne_SC           | 1        | 7            |
      | N-4954_EML_Seg_01_SRC_SUB_PRD_CD_eq_NULL         | 1        | 7            |
      | N-4954_EML_Seg_01_PRIM_PROV_CD_eq_NULL           | 1        | 7            |
      | N-4954_EML_Seg_01_CHRGF_CD_ne_0                  | 1        | 7            |
      | N-4954_EML_Seg_01_CHRGF_CD_eq_NULL               | 1        | 7            |

