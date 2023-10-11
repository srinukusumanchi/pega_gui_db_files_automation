@CREDITORINSURANCEINITIAL_IH_VALIDATION_EML
Feature: Validation of IH for CC Creditor Insurance for EML channel

  # Added Base Test Cases as part of Sep. 14th 2023 Release
  @CC_CreditorInsurance_EML @CC_CreditorInsurance_EML_Base_IH_Validation_2423 @2423 @EML @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_EMAIL Create Test Data for Base Line Scenarios
    Given load data from "CIEmailInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Creditor Insurance offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome
    Examples:
      | Test cases            |
      | 2423_BASE_Creative_01 |
      | 2423_BASE_Creative_04 |


# Added Positive Test Cases as part of Sep. 14th 2023 Release  @CC_CreditorInsurance_EML @CC_CreditorInsurance_EML_Base_IH_Validation_2423 @2423 @EML @VS17084
  @CC_CreditorInsurance_EML @CC_CreditorInsurance_EML_Positive_IH_Validation_2423 @2423 @EML @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_EMAIL Create Test Data for Positive Scenarios
    Given load data from "CIEmailInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Creditor Insurance offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome
    Examples:
      | Test cases                                         |
      | 2423_EML_Seg_01_PRIM_PROV_CD_eq_NULL               |
      | 2423_EML_Seg_01_TOT_DLQNT_AMT_lt_0                 |
      | 2423_EML_Seg_01_TOT_DLQNT_AMT_eq_NULL              |
      | 2423_EML_Seg_04_ACCT_ODT_gt_180                    |
      | 2423_EML_Seg_04_ACCT_ODT_eq_180                    |
      | 2423_EML_Seg_04_Insurance_Propensity_Decile_lt_DSS |


  # Added Negative Test Cases as part of Sep. 14th 2023 Release
  @CC_CreditorInsurance_EML @CC_CreditorInsurance_EML_Negative_IH_Validation_2423 @2423 @EML @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_EMAIL Create Test Data for Negative Scenarios
    Given load data from "CIEmailInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                                           |
      | N-2423_EML_Seg_01_ACCT_ODT_lt_18                     |
      | N-2423_EML_Seg_01_ACCT_ODT_gt_30                     |
      | N-2423_EML_Seg_01_ACCT_ODT_eq_NULL                   |
      | N-2423_EML_Seg_01_CHRGF_CD_ne_0                      |
      | N-2423_EML_Seg_01_CHRGF_CD_eq_NULL                   |
      | N-2423_EML_Seg_01_PRIM_PROV_CD_eq_QC                 |
      | N-2423_EML_Seg_01_TOT_DLQNT_AMT_gt_0                 |
      | N-2423_EML_Seg_04_ACCT_ODT_lt_180                    |
      | N-2423_EML_Seg_04_ACCT_ODT_eq_NULL                   |
      | N-2423_EML_Seg_04_Insurance_Propensity_Decile_gt_DSS |
      | N-2423_EML_Seg_04_MRKTBLE_F_ne_Y                     |
      | N-2423_EML_Seg_04_MRKTBLE_F_eq_NULL                  |


  @EMAIL  @CreditorInsuranceInitial @2423 @CreditorInsurance_2423_IH_POSITIVE_VAL @VS17084
  Scenario Outline: Creditor Insurance Initial Email channel Validate the IH <Test cases> for positive test cases
    Given load data from "CIEmailInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Creditor Insurance offer details against IH
    Examples:
      | Test cases                                                                                   |
#      | 2423_DECEASED_F=N                                                                            |
#      | 2423_CUST_TP_CD=PSNL                                                                         |
#      | 2423_PRIM_CNTRY_CD = CA                                                                      |
#      | 2423_DO_NOT_SOLICIT_F!=Y                                                                     |
#      | 2423_DO_NOT_SOLICIT_F=NULL                                                                   |
      | 2423_CUST_AGE=18                                                                             |
#      | 2423_CUST_AGE=69                                                                             |
#      | 2423_LANG_CD in E                                                                            |
#      | 2423_LANG_CD in EN                                                                           |
#      | 2423_LANG_CD in F                                                                            |
#      | 2423_LANG_CD in FR                                                                           |
#      | 2423_LANG_CD in small case = en                                                              |
#      | 2423_LANG_CD in small case = fr                                                              |
#      | 2423_LANG_CD in small case = e                                                               |
#      | 2423_LANG_CD in small case = f                                                               |
#      | 2423_DO_NOT_EMAIL_F=N                                                                        |
#      | 2423_VLD_EMAIL_F = Y                                                                         |
#      | 2423_PRIM_EMAIL_ADDR! = NULL                                                                 |
#      | 2423_MK_INSURANCE_EMAIL_F!=N                                                                 |
#      | 2423_MK_INSURANCE_EMAIL_F = NULL                                                             |
#      | 2423_ACCT_SUBSYS_ID = KS                                                                     |
#      | 2423_SRC_ACCT_STAT_CD = Open                                                                 |
#      | 2423_CR_CRD_PRTCTN_F = N                                                                     |
#      | 2423_PRIMARY_ACCT_HOLDER_FLAG = Y                                                            |
#      | 2423_ACCT_ODT=18                                                                             |
#      | 2423_ACCT_ODT=20                                                                             |
      | 2423_Segment1_CRD_ACTIVATION_STATE=ACTIVATED                                                 |
      | 2423_Segment1_CRD_ACTIVATION_STATE=PRE ACTIVATED                                             |
      | 2423_Segment2_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in BRANCH     |
      | 2423_Segment2_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in CALLCENTRE |
      | 2423_Segment3_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in COMNPA     |
      | 2423_Segment3_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in SOLNPA     |
      | 2423_Segment3_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in SOLPA      |
#Added for May11th release for Tenured segment
      | 2423_TEN_Seg1_ACCT_ODT_eq_180                                                                |
      | 2423_TEN_Seg1_ACCT_ODT_gt_180                                                                |
      | 2423_TEN_Seg1_PROP_DECILE_lt_DSS_eq_1                                                        |
      | 2423_TEN_Seg1_PROP_DECILE_eq_DSS_eq_1                                                        |
      | 2423_EAR_Seg1_Ten_Seg1_Prioritization                                                        |
      | 2423_TEN_ACCT_PRI1_VS_PRI2_Prioritization                                                    |
      | 2423_TEN_ACCT_PRI2_VS_PRI3_Prioritization                                                    |
      | 2423_TEN_ACCT_PRI1_VS_PRI3_Prioritization                                                    |
      | 2423_TEN_ACCT_PRI17_VS_PRI17_MaxODT_Prioritization                                           |

  @EMAIL  @CreditorInsuranceInitial @2423 @CreditorInsurance_2423_IH_NEGATIVE_VAL @VS17084
  Scenario Outline: Creditor Insurance Initial Email channel Validate the IH<Test cases> for negative test cases
    Given load data from "CIEmailInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
#    Then verify offer should not display
    Then verify offer should not display
    Examples:
      | Test cases                           |
#      | N_2423_DECEASED_F=Y                                                                                                       |
#      | N_2423_DECEASED_F=NULL                                                                                                    |
#      | N_2423_CUST_TP_CD!=PSNL                                                                                                   |
#      | N_2423_PRIM_CNTRY_CD! = CA                                                                                                |
#      | N_2423_PRIM_CNTRY_CD = NULL                                                                                               |
#      | N_2423_DO_NOT_SOLICIT_F = Y                                                                                               |
#      | N_2423_CUST_AGE=70                                                                                                        |
#      | N_2423_CUST_AGE=NULL                                                                                                      |
#      | N_2423_LANG_CD in K                                                                                                       |
#      | N_2423_LANG_CD in NE                                                                                                      |
#      | N_2423_LANG_CD in NULL                                                                                                    |
#      | N_2423_DO_NOT_EMAIL_F! = N                                                                                                |
#      | N_2423_DO_NOT_EMAIL_F = NULL                                                                                              |
#      | N_2423_VLD_EMAIL_F = N                                                                                                    |
#      | N_2423_VLD_EMAIL_F = NULL                                                                                                 |
#      | N_2423_PRIM_EMAIL_ADDR = NULL                                                                                             |
#      | N_2423_MK_INSURANCE_EMAIL_F=N                                                                                             |
#      | N_2423_INDV_FRST_NM=NULL                                                                                                  |
#      | N_2423_ACCT_SUBSYS_ID! = KS                                                                                               |
#      | N_2423_SRC_ACCT_STAT_CD! = Open                                                                                           |
#      | N_2423_CR_CRD_PRTCTN_F! = N                                                                                               |
#      | N_2423_PRIMARY_ACCT_HOLDER_FLAG! = Y                                                                                      |
#      | N_2423_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                                                    |
#      | N_2423_ ACCT_ODT  = 17                                                                                                    |
#      | N_2423_ ACCT_ODT  = 21                                                                                                    |
#      | N_2423_INSIGHT_CD = FLG_CC_INSURANCE_EMOB_RS21039_TARGET  and CURR_VAL = 1                                                |
#      | N_2423_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL NOT in (BRANCH, CALLCENTRE,COMNPA, SOLNPA, SOLPA) |
#Added for May11th release for Tenured segment
      | N_2423_TEN_Seg1_ACCT_ODT_lt_180      |
      | N_2423_TEN_Seg1_PROP_DEC_gt_DSS_eq_1 |
      | N_2423_TEN_Seg1_MRKTBLE_F_eq_N       |
      | N_2423_TEN_Seg1_MRKTBLE_F_eq_NULL    |
      | N_2423_CUST_AGE=17                   |


