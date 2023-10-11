Feature: Validation for 5464 TFSACrossSell

  @TFSACrossSellEmail @TFSACrossSell_Positive_Validation @Workstream-4 @5464 @EMAIL @RS21091  @AUTOTESTTOTAL#43
  Scenario Outline: TFSA CrossSell_RS21091_5464_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "TFSACrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"

#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

    Then validate CrossSell offer details against IH
    Examples:
      | Test cases       |
      | 5464_CUST_TP_CD=PSNL,5464_Primary Country Cd = CA,5464_CUST_AGE >18,5464_DO_NOT_SOLICIT_F = N,5464_MRKTBLE_F = Y,5464_NOT_AML_KYC = N,CUST_OPNT_DT > 90 days,5464_Customer Not Decease,5464_ACCT_ODT>90 |
      | 5464_CUST_AGE=18                                                                                                                                                                                        |
      | 5464_LANG_CD in E                                                                                                                                                                                       |
      | 5464_LANG_CD in EN                                                                                                                                                                                      |
      | 5464_LANG_CD in F                                                                                                                                                                                       |
      | 5464_LANG_CD in FR                                                                                                                                                                                      |
      | 5464_LANG_CD in small case_e                                                                                                                                                                            |
      | 5464_LANG_CD in small case_en                                                                                                                                                                           |
      | 5464_LANG_CD in small case_f                                                                                                                                                                            |
      | 5464_LANG_CD in small case_fr                                                                                                                                                                           |
      | 5464_DO_NOT_SOLICIT_F = NULL                                                                                                                                                                            |
      | 5464_DO_NOT_EMAIL_F=N                                                                                                                                                                                   |
      | 5464_VLD_EML_F=Y                                                                                                                                                                                        |
      | 5464_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                           |
      | 5464_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                           |
      | 5464_NOT_AML_KYC = NULL                                                                                                                                                                                 |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                     |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                     |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA   and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                     |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA   and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                     |
      | 5464_PRD CODE=01  SUB PRD CD=01                                                                                                                                                                         |
      | 5464_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                                                         |
      | 5464_PLN_ACCT_CD_MASTER != TFSA and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active |
      | 5464_PLN_ACCT_CD_MASTER = TFSA  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active |
      | 5464_PLN_ACCT_CD_MASTER = TFSA and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active  |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1  |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1   |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1   |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL! = 1 |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1    |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL ! = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1 |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1 |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1  |
      | 5464_PRD CD = 02 SUB PRD CD = 05                                                                                                                                                                      |
      | 5464_PRD CD = 19 SUB PRD CD = 05                                                                                                                                                                      |
      | 5464_PRD CD = 13 SUB PRD CD = 05                                                                                                                                                                      |
      | 5464_PRD CD = 07 SUB PRD CD = 01                                                                                                                                                                      |
      | 5464_PRD CD = 23 SUB PRD CD = 02                                                                                                                                                                      |
      | 5464_PRD CD = VGD SUB PRD CD= AB                                                                                                                                                                      |
      | 5464_PRD CD = VCL SUB PRD CD= BC                                                                                                                                                                      |
      | 5464_PRD CD = VLR SUB PRD CD= CD                                                                                                                                                                      |
      | 5464_SRC_ACCT_STAT_CD! =  A                                                                                                                                                                           |
      | 5464_SRC_ACCT_STAT_CD!  Open                                                                                                                                                                          |
      | 5464_SRC_ACCT_STAT_CD = NULL                                                                                                                                                                          |

    # Added for May 25 RLSE 2023 for External Table scenario

      |5464_EML_VALID_START_DATE_lt_Curr_Dt|
      |5464_EML_VALID_START_DATE_eq_Curr_Dt|
      |5464_EML_VALID_END_DATE_gt_Curr_Dt|
      |5464_EML_VALID_END_DATE_eq_Curr_Dt|
#
#   Multiple Accounts , External Records
      | 5464_EML_Multiple_Externaltbl_Records |

## Added for july 06th 2023 REL
      | 5464_EML_Trigger4                                                               |
      | 5464_EML_Trigger4_EV_RT_TFSA_XSELL _eq_DSS_Name_TFSA_Xsell_RS21091_EV_Threshold |
  @TFSACrossSellEmail @TFSACrossSellEmail_Negative_Validation @Workstream-4 @5464 @EMAIL @RS21091  @AUTOTESTTOTAL#35
  Scenario Outline: TFSA CrossSell Email_RS21091_5464_EMAIL Validate offer details against IH for Negative test cases
    Given load data from "TFSACrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"

#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

    Then verify offer should not display
    Examples:
      | Test cases                      |
      | N-5464_CUST_TP_CD != PSNL                                                                                                                                                                               |
      | N-5464_Primary Country Cd != CA                                                                                                                                                                         |
      | N-5464_Primary Country Cd = NULL                                                                                                                                                                        |
      | N-5464_CUST_AGE < 18                                                                                                                                                                                    |
      | N-5464_CUST_AGE = NULL                                                                                                                                                                                  |
      | N-5464_LANG_CD NOT in (EN, E, FR, F)                                                                                                                                                                    |
      | N-5464_LANG_CD = NULL                                                                                                                                                                                   |
      | N-5464_DO_NOT_SOLICIT_F = Y                                                                                                                                                                             |
      | N-5464_MRKTBLE_F = N                                                                                                                                                                                    |
      | N-5464_MRKTBLE_F = NULL                                                                                                                                                                                 |
      | N-5464_NOT_AML_KYC = Y                                                                                                                                                                                  |
      | N-5464_CUST_OPNT_DT < 90 days                                                                                                                                                                           |
      | N-5464_CUST_OPNT_DT = 90 days                                                                                                                                                                           |
      | N-5464_CUST_OPNT_DT = NULL                                                                                                                                                                              |
      | N-5464_Customer Decease - Y                                                                                                                                                                             |
      | N-5464_Customer Decease - NULL                                                                                                                                                                          |
      | N-5464_ACCT_ODT < 90 Days                                                                                                                                                                               |
      | N-5464_ACCT_ODT = 90 Days                                                                                                                                                                               |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1                                                                                                                  |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                  |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1                                                                                                                  |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD != FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                  |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1                                                                                                                   |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1                                                                                                                     |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                  |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                                |
      | N-5464_DO_NOT_EMAIL_F=Y                                                                                                                                                                                 |
      | N-5464_DO_NOT_EMAIL_F=NULL                                                                                                                                                                              |
      | N-5464_Valid Email Flag = N                                                                                                                                                                             |
      | N-5464_Valid Email Flag = NULL                                                                                                                                                                          |
      | N-5464_EMAIL Address = NULL                                                                                                                                                                             |
      | N-5464_First Name = NULL                                                                                                                                                                                |
      | N-5464_PLN_ACCT_CD_MASTER = TFSA and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active |

    # Added for May 25th RLSE 2023 for External Table
      |N_5464_EML_VALID_START_DATE_gt_Curr_Dt |
      |N_5464_EML_VALID_END_DATE_lt_Curr_Dt|
      |N_5464_EML_CAMPAIGN_CODE_ne_RS21091|
      |N_5464_EML_CAMPAIGN_CELL_CODE_ne_CIE5464|
      |N_5464_EML_CAMPAIGN_CELL_CODE_eq_NULL|
      |N_5464_EML_CAMPAIGN_CELL_CODE_FLAG_ne_Y|
      |N_5464_EML_CAMPAIGN_CELL_CODE_FLAG_eq_NULL|
      |N_5464_EML_EMAIL_CHANNEL_ne_Y|
      |N_5464_EML_EMAIL_CHANNEL_eq_NULL|
## Added for july 06th 2023 REL
      | N_5464_EML_Trigger4_EV_RT_TFSA_XSELL _lt_DSS_TFSA_Xsell_RS21091_EV_Threshold    |
      | N_5464_EML_Trigger4_EV_RT_TFSA_XSELL_eq_NULL                                    |