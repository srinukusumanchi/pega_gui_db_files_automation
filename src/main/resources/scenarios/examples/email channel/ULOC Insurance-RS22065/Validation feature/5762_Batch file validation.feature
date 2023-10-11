@5762_ULOCInsRetargeting_BatchValidationFeature
Feature: Batch Validation for 5725 D2D Payment Methods

# Base Positive Scenarios that covers both the Creatives for D2DPaymentMethods Offer
  @PAULOCInsurance @ULOCInsRetargeting_Base_Positive_Batch_Validation @5762 @EMAIL @RS22056
  Scenario Outline: PAULOCInsuranceRetargeting_RS22065_5762_EMAIL Validate offer details against batch file for Base Positive test cases
    Given load data from "ULOCIns" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read "PAULOCIns" extract file with batch "InsStatus;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    # Need to Review and Change
    Then validate ULOC Insurance offer details in batch file against database and pega

    Examples:
      | Test cases                                                                                       |
      | 5762_DECEASED_F = N                                                                              |
      | 5762_CUST_TP_CD=PSNL                                                                             |
      | 5762_and PRIM_CNTRY_CD = CA                                                                      |
      | 5762_EMPLOYEE_STAFF_F=N                                                                          |
      | 5762_EMPLOYEE_STAFF_F=Null                                                                       |
      | 5762_MRKTBLE_F = Y                                                                               |
      | 5762_DO_NOT_SOLICIT_F = NULL                                                                     |
      | 5762_DO_NOT_SOLICIT_F != Y                                                                       |
      | 5762_CUST_AGE is 18 years                                                                        |
      | 5762_CUST_AGE is 64 years                                                                        |
      | 5762_CUST_AGE is between 18-64                                                                   |
      | 5762_LANG_CD = en                                                                                |
      | 5762_LANG_CD = fr                                                                                |
      | 5762_DO_NOT_EMAIL_F = N                                                                          |
      | 5762_VLD_EMAIL_F = Y                                                                             |
      | 5762_PRIM_EMAIL_ADDR is NOT NULL                                                                 |
      | 5762_INDV_FRST_NM is NOT NULL                                                                    |
      | 5762_MK_INSURANCE_EMAIL_F ! = N                                                                  |
      | 5762_MK_INSURANCE_EMAIL_F  = NULL                                                                |
      | 5762_ACCT_SUBSYS_ID = KS                                                                         |
      | 5762_SRC_ACCT_STAT_CD = Open                                                                     |
      | 5762_PRD CD = VIC AND SUB PRD CD = RG                                                            |
      | 5762_PRD CD = VIC AND SUB PRD CD = RS                                                            |
      | 5762_PRD CD = SCL AND SUB PRD CD = CS                                                            |
      | 5762_PRD CD = SCL AND SUB PRD CD = INE                                                           |
      | 5762_PRD CD = SCL AND SUB PRD CD = RS                                                            |
      | 5762_PRD CD = SCL AND SUB PRD CD = RL                                                            |
      | 5762_PRD CD = SSL AND SUB PRD CD = SP                                                            |
      | 5762_PRD CD = SSL AND SUB PRD CD = LI                                                            |
      | 5762_CR_CRD_LMT_AMT <50000                                                                       |
      | 5762_CR_CRD_LMT_AMT =50000                                                                       |
      | 5762_CR_CRD_LMT_AMT >0                                                                           |
      | 5762_CRNT_BAL_AMT < (1.2 x CR_CRD_LMT_AMT) and CRNT_BAL_AMT >0                                   |
      | 5762_CRNT_BAL_AMT = (1.2 x CR_CRD_LMT_AMT) and CRNT_BAL_AMT >0                                   |
      | 5762_Current Date- ACCT_ODT=50                                                                   |
      | 5762_Current Date- ACCT_ODT>50                                                                   |
      | 5762_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                |
      | 5762_INS_STATUS_DESC = Waived                                                                    |
      | 5762_INS_STATUS_DESC = Life Only                                                                 |
      | 5762_INS_STATUS_DESC = Disability                                                                |
      | 5762_INS_STATUS_DESC = Disability and Life                                                       |
      | 5762_INS_STATUS_DESC = Disability, Job Loss                                                      |
      | 5762_INS_STATUS_DESC = Disability, Life and Critical Illness                                     |
      | 5762_INS_STATUS_DESC = Life and CI                                                               |
      | 5762_INS_STATUS_DESC = Life, Disability and Job Loss                                             |
      | 5762_INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL = 1 && Current date - EVENT_DATE <  7 days |
      | 5762_INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL = 1 && Current date - EVENT_DATE =  7 days |
      | 5762_ONE ACCT_VIC_RG_DUAL ACCT_SCL_CS_Diff CRNT_BAL_AMT                                          |

