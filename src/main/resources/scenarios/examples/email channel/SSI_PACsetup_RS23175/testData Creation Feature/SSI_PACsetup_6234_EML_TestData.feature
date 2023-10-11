@SSI_PACsetup_EML_TestLoad
Feature: Test Data Creation For SSI Investment Funds for EML Channel

  @SSI_PACsetup_Funds_EML_Base_TestData_6234 @6234 @EML @RS23175
  Scenario Outline: SSI PACsetup 6234 RS23175 Create test data for Base Line test cases for EML Channel
    Given load data from "SSIPACsetup_EML_6234" excel sheet
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

    Examples:
      | Test cases           | Acct_Cnt | ACCT_ODT_Val |
      | 6234_EML_BASE_Seg_01 | 1        | 25           |


  @SSI_PACsetup_Funds_EML_Positive_TestData_6234 @6234 @EML @RS23175
  Scenario Outline: SSI PACsetup 6234 RS23175 Create test data for Positive Line test cases for EML Channel
    Given load data from "SSIPACsetup_EML_6234" excel sheet
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

    Examples:
      | Test cases                                                                                               | Acct_Cnt | ACCT_ODT_Val                                       |
#      | 6234_EML_Creative_01_LANG_CD_eq_EN                                                                       | 1        | 25                                                 |
#      | 6234_EML_Creative_01_LANG_CD_eq_F                                                                        | 1        | 25                                                 |
#      | 6234_EML_Creative_01_LANG_CD_eq_FR                                                                       | 1        | 25                                                 |
#      | 6234_EML_Creative_01_ITRADE_MCLEOD_F_eq_NULL                                                             | 1        | 25                                                 |
#      | 6234_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                | 1        | 25                                                 |
#      | 6234_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_NULL                                                        | 1        | 25                                                 |
#      | 6234_EML_Creative_01_DO_NOT_SOLICIT_eq_NULL                                                              | 1        | 25                                                 |
#      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RRS     | 1        | 25                                                 |
#      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RSS     | 1        | 25                                                 |
#      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REF     | 1        | 25                                                 |
#      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REI     | 1        | 25                                                 |
#      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_SYS_SUB_PRD_CD_BNSCSVTF_eq_SRC_SYS_PRD_CD_eq_TFS     | 1        | 25                                                 |
#      | 6234_EML_Creative_01_ACCT_ODT_eq_20                                                                      | 1        | 20                                                 |
#      | 6234_EML_Creative_01_ACCT_ODT_eq_30                                                                      | 1        | 30                                                 |
      | 6234_EML_Creative_01_NRS_LIF_LIRA_LRSP_LRIF_PRIF_RRIF_RLIF_RRIF_RRSP_RLSP_RRSP_RDSP_RESP_RESP_TFSA_FHSA  | 17        | 25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25 |
      | 6234_EML_Creative_01_INDV_LAST_NM_eq_NULL                                                                | 1        | 25                                                 |
      | 6234_EML_Creative_01_PIC_PAC_F_eq_2                                                                      | 1        | 25                                                 |
      #Positive Exclusion Scenarios
      | 6234_EML_Creative_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 | 2        | 25,180                                             |
      | 6234_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 | 2        | 25,180                                             |
      | 6234_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_180 | 2        | 25,180                                             |
      | 6234_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_181 | 2        | 25,181                                             |


  @SSI_PACsetup_Funds_EML_Negative_TestData_6234 @6234 @EML @RS23175
  Scenario Outline: SSI PACsetup 6234 RS23175 Create test data for Negative Line test cases for EML Channel
    Given load data from "SSIPACsetup_EML_6234" excel sheet
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

    Examples:
      | Test cases                                                                                                 | Acct_Cnt | ACCT_ODT_Val |
      | N-6234_EML_Creative_01_DECEASED_F_eq_Y                                                                     | 1        | 25           |
      | N-6234_EML_Creative_01_DECEASED_F_eq_NULL                                                                  | 1        | 25           |
      | N-6234_EML_Creative_01_CUST_TP_CD_eq_ABCD                                                                  | 1        | 25           |
      | N-6234_EML_Creative_01_PRIM_CNTRY_CD_eq_IN                                                                 | 1        | 25           |
      | N-6234_EML_Creative_01_PRIM_CNTRY_CD_eq_NULL                                                               | 1        | 25           |
      | N-6234_EML_Creative_01_CUST_AGE_eq_NULL                                                                    | 1        | 25           |
      | N-6234_EML_Creative_01_LANG_CD_eq_KA                                                                       | 1        | 25           |
      | N-6234_EML_Creative_01_MRKTBLE_F_eq_N                                                                      | 1        | 25           |
      | N-6234_EML_Creative_01_MRKTBLE_F_eq_NULL                                                                   | 1        | 25           |
      | N-6234_EML_Creative_01_ITRADE_MCLEOD_F_eq_Y                                                                | 1        | 25           |
      | N-6234_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                   | 1        | 25           |
      | N-6234_EML_Creative_01_PRIM_EMAIL_ADDR _eq_NULL                                                            | 1        | 25           |
      | N-6234_EML_Creative_01_INDV_FRST_NM_eq_NULL                                                                | 1        | 25           |
      | N-6234_EML_Creative_01_DO_NOT_EMAIL_F_eq_Y                                                                 | 1        | 25           |
      | N-6234_EML_Creative_01_VLD_EMAIL_F_eq_N                                                                    | 1        | 25           |
      | N-6234_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_N                                                           | 1        | 25           |
      | N-6234_EML_Creative_01_DO_NOT_SOLICIT_eq_Y                                                                 | 1        | 25           |
      | N-6234_EML_Creative_01_PLN_ACCT_DLR_ne_SSI                                                                 | 1        | 25           |
      | N-6234_EML_Creative_01_PLN_ACCT_DLR_eq_NULL                                                                | 1        | 25           |
      | N-6234_EML_Creative_01_ACCT_SUBSYS_ID_ne_UF                                                                | 1        | 25           |
      | N-6234_EML_Creative_01_ACCT_SUBSYS_ID_eq_NULL                                                              | 1        | 25           |
      | N-6234_EML_Creative_01_SRC_ACCT_STAT_CD_ne_Active                                                          | 1        | 25           |
      | N-6234_EML_Creative_01_SRC_ACCT_STAT_CD_eq_NULL                                                            | 1        | 25           |
      | N-6234_EML_Creative_01_ACCT_ODT_gt_30                                                                      | 1        | 31           |
      | N-6234_EML_Creative_01_ACCT_ODT_lt_20                                                                      | 1        | 19           |
      | N-6234_EML_Creative_01_ACCT_ODT_eq_NULL                                                                    | 1        | NULL         |
      | N-6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_LIF_SRC_SYS_SUB_PRD_CD_eq_BNSCSVRG_SRC_SYS_PRD_CD_eq_BNSCSVRG | 1        | 25           |
      | N-6234_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                                       | 1        | 25           |
      | N-6234_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                    | 1        | 25           |
      | N-6233_EML_Creative_01_IP_AR_RELATN_TYPE_CD_ne_ANN_or_OWN                                                | 1        | 25           |
      | N-6234_EML_Creative_01_IP_AR_RELATN_TYPE_CD_eq_NULL                                                        | 1        | 25           |
      | N-6234_EML_Creative_01_PIC_PAC_F_eq_1                                                                      | 1        | 25           |
      #Exclusion Scenarios
      | N-6234_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 | 2        | 25,180       |
      | N-6234_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_179 | 2        | 25,179       |
