@SSI_AnnualReview_EML_TestLoad
Feature: Test Data Creation For AnnualReview for EML Channel

  @SSI_AnnualReview_EML_Base_TestData_6260 @6260 @EML @RS23176
  Scenario Outline: SSI AnnualReview 6260 RS23176 Create test data for Base Line test cases for EML Channel
    Given load data from "SSIAnnualReview_EML_6260" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "KYC_EXPIRY_DT" field with "<KYC_EXPIRY_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases           | Acct_Cnt | ACCT_ODT_Val | KYC_EXPIRY_DT_Val |
      | 6260_EML_BASE_Seg_01 | 1        | NULL         | -35               |

  @SSI_AnnualReview_EML_Positive_TestData_6260 @6260 @EML @RS23176
  Scenario Outline: SSI AnnualReview 6260 RS23176 Create test data for Positive Line test cases for EML Channel
    Given load data from "SSIAnnualReview_EML_6260" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "KYC_EXPIRY_DT" field with "<KYC_EXPIRY_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                               | Acct_Cnt | ACCT_ODT_Val | KYC_EXPIRY_DT_Val                                                   |
      #Positive Scenarios
      | 6260_EML_Creative_01_LANG_CD_eq_EN                                                                       | 1        | NULL         | -35                                                                 |
      | 6260_EML_Creative_01_LANG_CD_eq_F                                                                        | 1        | NULL         | -35                                                                 |
      | 6260_EML_Creative_01_LANG_CD_eq_FR                                                                       | 1        | NULL         | -35                                                                 |
      | 6260_EML_Creative_01_ITRADE_MCLEOD_F_eq_NULL                                                             | 1        | NULL         | -35                                                                 |
      | 6260_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                | 1        | NULL         | -35                                                                 |
      | 6260_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_NULL                                                        | 1        | NULL         | -35                                                                 |
      | 6260_EML_Creative_01_DO_NOT_SOLICIT_eq_NULL                                                              | 1        | NULL         | -35                                                                 |
      | 6260_EML_Creative_01_KYC_EXPIRY_DT_eq_40                                                                 | 1        | NULL         | -40                                                                 |
      | 6260_EML_Creative_01_KYC_EXPIRY_DT_eq_30                                                                 | 1        | NULL         | -30                                                                 |
      | 6260_EML_Creative_01_NRS_LIF_LIRA_LRSP_LRIF_PRIF_RRIF_RLIF_RRIF_RRSP_RLSP_RRSP_RDSP_RESP_RESP_TFSA_FHSA  | 17       | NULL         | -35,-35,-35,-35,-35,-35,-35,-35,-35,-35,-35,-35,-35,-35,-35,-35,-35 |
      | 6260_EML_Creative_01_INDV_LAST_NM_eq_NULL                                                                | 1        | NULL         | -35                                                                 |
      #Positive Exclusion Scenarios
      | 6260_EML_Creative_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 | 2        | 180          | -35                                                                 |
      | 6260_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 | 2        | 180          | -35                                                                 |
      | 6260_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_180 | 2        | 180          | -35                                                                 |
      | 6260_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_181 | 2        | 181          | -35                                                                 |


  @SSI_AnnualReview_EML_Negative_TestData_6260 @6260 @EML @RS23176
  Scenario Outline: SSI AnnualReview 6260 RS23176 Create test data for Negative Line test cases for EML Channel
    Given load data from "SSIAnnualReview_EML_6260" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "KYC_EXPIRY_DT" field with "<KYC_EXPIRY_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                                 | Acct_Cnt | ACCT_ODT_Val | KYC_EXPIRY_DT_Val |
      #Negative Scenarios
      | N-6260_EML_Creative_01_DECEASED_F_eq_Y                                                                     | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_DECEASED_F_eq_NULL                                                                  | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_CUST_TP_CD_eq_ABCD                                                                  | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_PRIM_CNTRY_CD_eq_IN                                                                 | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_PRIM_CNTRY_CD_eq_NULL                                                               | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_CUST_AGE_eq_NULL                                                                    | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_LANG_CD_eq_KA                                                                       | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_MRKTBLE_F_eq_N                                                                      | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_MRKTBLE_F_eq_NULL                                                                   | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_ITRADE_MCLEOD_F_eq_Y                                                                | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                   | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_PRIM_EMAIL_ADDR _eq_NULL                                                            | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_INDV_FRST_NM_eq_NULL                                                                | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_DO_NOT_EMAIL_F_eq_Y                                                                 | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_VLD_EMAIL_F_eq_N                                                                    | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_N                                                           | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_DO_NOT_SOLICIT_eq_Y                                                                 | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_PLN_ACCT_DLR_ne_SSI                                                                 | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_PLN_ACCT_DLR_eq_NULL                                                                | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_ACCT_SUBSYS_ID_ne_UF                                                                | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_ACCT_SUBSYS_ID_eq_NULL                                                              | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_SRC_ACCT_STAT_CD_ne_Active                                                          | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_SRC_ACCT_STAT_CD_eq_NULL                                                            | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_KYC_EXPIRY_DT_gt_40                                                                 | 1        | NULL         | -41               |
      | N-6260_EML_Creative_01_KYC_EXPIRY_DT_lt_30                                                                 | 1        | NULL         | -29               |
      | N-6260_EML_Creative_01_KYC_EXPIRY_DT_eq_NULL                                                               | 1        | NULL         | NULL              |
      | N-6260_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_LIF_SRC_SYS_SUB_PRD_CD_eq_BNSCSVRG_SRC_SYS_PRD_CD_eq_BNSCSVRG | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                                       | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                    | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_IP_AR_RELATN_TYPE_CD_ne_ANN_or_OWN                                                  | 1        | NULL         | -35               |
      | N-6260_EML_Creative_01_IP_AR_RELATN_TYPE_CD_eq_NULL                                                        | 1        | NULL         | -35               |
      #Exclusion Scenarios
      | N-6260_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 | 2        | NULL,180          | -35               |
      | N-6260_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_179 | 2        | NULL,179          | -35               |
