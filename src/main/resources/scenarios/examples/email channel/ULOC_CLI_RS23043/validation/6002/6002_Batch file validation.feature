Feature: Batch file validation for ULOC CLI 6002


  @ULOC_CLI_Email_6002_Batch_PositiveTCs_Validation
  Scenario Outline: ULOC CLI 6002_RS23043_EMAIL Validate the Batch file details against database and Pega for Positive test cases
    Given load data from "ULOC_CLI_Ofr" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "ULOC_CLI" extract file with batch "AcctNumber;ApprovedCreditLimit;ProdCode;SubProdCode;CampaignNumber;CurrentCreditLimit;" Email Specific Text Header
    Then Validate ULOC CLI offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                        |
      | 6002_EML_BASE_Creative_01                                                                         |
      | 6002_EML_BASE_Creative_02                                                                         |
      | 6002_EML_Creative_1_CUST_AGE_eq_18                                                                |
      | 6002_EML_Creative_1_LANG_CD_eq_fr                                                                 |
      | 6002_EML_Creative_2_CC_VIP_IND_eq_NULL                                                            |
      | 6002_EML_Creative_2_CUST_AGE_eq_70                                                                |
      | 6002_EML_Creative_1_DO_NOT_SOLICIT_F_eq_NULL                                                      |
      | 6002_EML_Creative_1_MK_LOC_LOANS_EMAIL_F_eq_NULL                                                  |
      | 6002_EML_Creative_1_Curr_Dt_eq_CLI_OFR_ST_DT                                                      |
      | 6002_EML_Creative_2_Curr_Dt_gt_CLI_OFR_ST_DT                                                      |
      | 6002_EML_Creative_1_CLI_APRVD_CR_LMT_gt_CR_CRD_LMT_AMT                                            |
# Prioritization Scenarios
      | 6002_EML_Creative_1_Multiple_KS_Accounts_Prioritize_with_Highest_Approved_Limit_Same_Product      |
      | 6002_EML_Creative_1_Multiple_KS_Accounts_Prioritize_with_Highest_Approved_Limit_Different_Product |
# Transit Scenarios
      | 6002_EML_Creative_01_ASSIGNED_FA_TRANSIT_eq_00018_RESP_TRNST_NUM_eq_00018_CLOSEST_TRANSIT_NUM_eq_00018 |
      | 6002_EML_Creative_02_ASSIGNED_FA_TRANSIT_eq_00018_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_NULL   |
      | 6002_EML_Creative_01_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_00018_CLOSEST_TRANSIT_NUM_eq_NULL   |
      | 6002_EML_Creative_02_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_00001_CLOSEST_TRANSIT_NUM_eq_00018  |
      | 6002_EML_Creative_01_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_00018   |

