@TFSA_RRSP_Xsell_Branch_Offer_COS_IHValidation

Feature: IH Validation for TFSA_RRSP_Xsell_Branch_Offer in COS Channel

  @TFSA_RRSP_Xsell_Branch_Offer_COS @TFSA_RRSP_Xsell_Branch_Offer_COS_Base_IH_Validation_6229 @6229 @COS @RS23173
  Scenario Outline: TFSA_RRSP_Xsell_Branch_Offer 6229 RS23173 COS Create IH Validation for Base Line Test Cases
    Given load data from "TFSA_RRSP_Xsell_Branch_Offer_6229_SF" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate TFSA RRSP Xsell Branch Offer details against IH for "COS" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases               |
      | 6229_SF_BASE_Creative_01 |


#Positive Scenarios

  @TFSA_RRSP_Xsell_Branch_Offer_COS @TFSA_RRSP_Xsell_Branch_Offer_COS_Positive_IH_Validation_6229 @6229 @COS @RS23173
  Scenario Outline: TFSA_RRSP_Xsell_Branch_Offer 6229 RS23173 COS Create IH Validation for Positive Test Cases
    Given load data from "TFSA_RRSP_Xsell_Branch_Offer_6229_SF" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate TFSA RRSP Xsell Branch Offer details against IH for "COS" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                                          |
      | 6229_COS_Seg_01_CUST_AGE_gt_19                                      |
      | 6229_COS_Seg_01_CUST_AGE_eq_19                                      |
      | 6229_COS_Seg_01_CUST_AGE_lt_70                                      |
      | 6229_COS_Seg_01_CUST_AGE_eq_70                                      |
      | 6229_COS_Seg_01_LANG_CD_eq_fr                                       |
      | 6229_COS_Seg_01_ADVISOR_LAST_CONTACT_DT_gt_30                       |
      | 6229_COS_Seg_01_NOT_AML_KYC_eq_NULL                                 |
      | 6229_COS_Seg_01_ITRADE_MCLEOD_F_eq_NULL                             |
      | 6229_COS_Seg_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                |
      | 6229_COS_Seg_01_VALID_START_DATE_lt_Curr_Dt                         |
      | 6229_COS_Seg_01_VALID_START_DATE_eq_Curr_Dt                         |
      | 6229_COS_Seg_01_VALID_END_DATE_gt_Curr_Dt                           |
      | 6229_COS_Seg_01_VALID_END_DATE_eq_Curr_Dt                           |
      | 6229_COS_Seg_01_MD_FINANCIAL_F_eq_NULL                              |
      | 6229_COS_Seg_01_DO_NOT_SOLICIT_eq_NULL                              |
#      |Positive Exclusion scenarios|
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_PLN_ACCT_CD_MASTER_ne_TFSA      |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_PLN_ACCT_CD_MASTER_ne_RRSP      |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_PLN_ACCT_CD_MASTER_eq_NULL      |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_ACCT_SUBSYS_ID_ne_UF            |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_ACCT_SUBSYS_ID_eq_NULL          |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_TFSA_SRC_ACCT_STAT_CD_ne_Active |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_RRSP_SRC_ACCT_STAT_CD_ne_Active |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_SRC_ACCT_STAT_CD_eq_NULL        |


#    Negative Scenarios

  @TFSA_RRSP_Xsell_Branch_Offer_COS @TFSA_RRSP_Xsell_Branch_Offer_COS_Negative_IH_Validation_6229 @6229 @COS @RS23173
  Scenario Outline: TFSA_RRSP_Xsell_Branch_Offer 6229 RS23173 COS Create IH Validation for Negative Test Cases
    Given load data from "TFSA_RRSP_Xsell_Branch_Offer_6229_SF" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "COS" channel

    Examples:
      | Test cases                                                             |
      | N-6229_COS_Seg_01_DECEASED_F_ne_N                                      |
      | N-6229_COS_Seg_01_DECEASED_F_eq_NULL                                   |
      | N-6229_COS_Seg_01_CUST_TP_CD_ne_PSNL                                   |
      | N-6229_COS_Seg_01_PRIM_CNTRY_CD_ne_CA                                  |
      | N-6229_COS_Seg_01_PRIM_CNTRY_CD_eq_NULL                                |
      | N-6229_COS_Seg_01_LANG_CD_eq_bn                                        |
      | N-6229_COS_Seg_01_LANG_CD_eq_NULL                                      |
      | N-6229_COS_Seg_01_MRKTBLE_F_ne_Y                                       |
      | N-6229_COS_Seg_01_MRKTBLE_F_eq_NULL                                    |
      | N-6229_COS_Seg_01_ADVISOR_LAST_CONTACT_DT_eq_30                        |
      | N-6229_COS_Seg_01_ADVISOR_LAST_CONTACT_DT_lt_30                        |
      | N-6229_COS_Seg_01_ADVISOR_LAST_CONTACT_DT_eq_NULL                      |
      | N-6229_COS_Seg_01_NOT_AML_KYC_eq_Y                                     |
      | N-6229_COS_Seg_01_MD_FINANCIAL_F_ne_N                                  |
      | N-6229_COS_Seg_01_ITRADE_MCLEOD_F_eq_Y                                 |
      | N-6229_COS_Seg_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                    |
      | N-6229_COS_Seg_01_DO_NOT_CALL_F_ne_N                                   |
      | N-6229_COS_Seg_01_DO_NOT_CALL_F_eq_NULL                                |
      | N-6229_COS_Seg_01_DO_NOT_SOLICIT_ne_N                                  |
      | N-6229_COS_Seg_01_CAMPAIGN_CODE_ne_RS23173                             |
      | N-6229_COS_Seg_01_CAMPAIGN_CELL_CODE_FLAG_ne_S                         |
      | N-6229_COS_Seg_01_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                      |
      | N-6229_COS_Seg_01_VALID_START_DATE_gt_Curr_Dt                          |
      | N-6229_COS_Seg_01_VALID_START_DATE_ne_OB_Scheduler_Start_Dt_Month_Year |
      | N-6229_COS_Seg_01_VALID_END_DATE_lt_Curr_Dt                            |
      | N-6229_COS_Seg_01_Branch_channel_ne_Y                                  |
      | N-6229_COS_Seg_01_Branch_channel_eq_NULL                               |
#      |Negative Exclusion Scenarios|
      | N-6229_COS_Seg_01_TFSA_RRSP_Exclusion_SRC_ACCT_STAT_CD_eq_Active       |


