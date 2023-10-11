@CreditorInsurance_Retargeting_5648_BATCH_VALIDATION
Feature: Validation of Batch file CI Retargeting 5648 scenarios for all channels

  ##########################EMAIL#############################

  @EMAIL  @CIReTargetingOfferEmail @5648 @CIRetargeting_5648_BATCH_POSITIVE @VS17084 @AUTOTESTTOTAL#56
  Scenario Outline: Creditor Insurance Retargeting Email channel Validate the batch file <Test cases> for positive test cases
    Given load data from "CredInsReTargeting5648Email" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read Creditor Insurance "CIEmail" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the creditor insurance offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                                                                                 |
      | 5648_EMAIL_EMPLOYEE_STAFF_F=NULL                                                                        |
      | 5648_EMAIL_DO_NOT_SOLICIT_F=N                                                                           |
      | 5648_EMAIL_DO_NOT_SOLICIT_F=NULL                                                                        |
      | 5648_EMAIL_CUST_AGE=18                                                                                  |
      | 5648_EMAIL_CUST_AGE=69                                                                                  |
      | 5648_EMAIL_CUST_AGE=18 to 69                                                                            |
      | 5648_EMAIL_ACCT_SUBSYS_ID = KS                                                                          |
      | 5648_EMAIL_SRC_ACCT_STAT_CD = Open                                                                      |
      | 5648_EMAIL_CR_CRD_PRTCTN_F = N                                                                          |
      | 5648_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                 |
      | 5648_EMAIL_CR_CRD_LMT_AMT <50000 andCR_CRD_LMT_AMT >0                                                   |
      | 5648_EMAIL_CR_CRD_LMT_AMT =50000 andCR_CRD_LMT_AMT >0                                                   |
      | 5648_EMAIL_CR_CRD_LMT_AMT = 0                                                                           |
      | 5648_EMAIL_CR_CRD_LMT_AMT = 1                                                                           |
      | 5648_EMAIL_ACCT_ODT > 50 days                                                                           |
      | 5648_EMAIL_ACCT_ODT = 51 days                                                                           |
      | 5648_EMAIL_CRNT_BAL_AMT < (1.2 x CR_CRD_LMT_AMT)                                                        |
      | 5648_EMAIL_CRNT_BAL_AMT = (1.2 x CR_CRD_LMT_AMT)                                                        |
      | 5648_EMAIL_AXG_GC                                                                                       |
      | 5648_EMAIL_AXG_GS                                                                                       |
      | 5648_EMAIL_AXP_PC                                                                                       |
      | 5648_EMAIL_AXS_SC                                                                                       |
      | 5648_EMAIL_AXS_SS                                                                                       |
      | 5648_EMAIL_VCL_DM                                                                                       |
      | 5648_EMAIL_VCL_NF                                                                                       |
      | 5648_EMAIL_VCL_NH                                                                                       |
      | 5648_EMAIL_VCL_RG                                                                                       |
      | 5648_EMAIL_VCL_SC                                                                                       |
      | 5648_EMAIL_VCL_SL                                                                                       |
      | 5648_EMAIL_VCL_SS                                                                                       |
      | 5648_EMAIL_VCL_ST                                                                                       |
      | 5648_EMAIL_VCL_SV                                                                                       |
      | 5648_EMAIL_VCL_ZZ                                                                                       |
      | 5648_EMAIL_VFA_A1                                                                                       |
      | 5648_EMAIL_VFA_A3                                                                                       |
      | 5648_EMAIL_VFF_F1                                                                                       |
      | 5648_EMAIL_VFF_TR                                                                                       |
      | 5648_EMAIL_VFF_TS                                                                                       |
      | 5648_EMAIL_VGD_NF                                                                                       |
      | 5648_EMAIL_VGD_RG                                                                                       |
      | 5648_EMAIL_VGD_SP                                                                                       |
      | 5648_EMAIL_VGD_ST                                                                                       |
      | 5648_EMAIL_VLR_NF                                                                                       |
      | 5648_EMAIL_VLR_RC                                                                                       |
      | 5648_EMAIL_VLR_RG                                                                                       |
      | 5648_EMAIL_VUS_RG                                                                                       |
      | 5648_EMAIL_LANG_CD in en                                                                                |
      | 5648_EMAIL_LANG_CD in fr                                                                                |
      | 5648_EMAIL_DO_NOT_EMAIL_F=N                                                                             |
      | 5648_EMAIL_VLD_EMAIL_F=Y                                                                                |
      | 5648_EMAIL_Email address !=NULL                                                                         |
      | 5648_EMAIL_Individual First Name not blank/null                                                         |
      | 5648_EMAIL_MK_INSURANCE_EMAIL_F =Y                                                                      |
      | 5648_EMAIL_MK_INSURANCE_EMAIL_F =NULL                                                                   |
      | 5648_EMAIL_INSIGHT_CD = FLG_CC_INS_ABANDON_APP and CURR_VAL = 1 and Current date - EVENT_DATE =  7 days |
      | 5648_EMAIL_INSIGHT_CD = FLG_CC_INS_ABANDON_APP and CURR_VAL = 1 and Current date - EVENT_DATE <  7 days |
      | 5648_EMAIL_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL = 1                                                                                         |
      | 5648_EMAIL_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL > 1                                                                                         |
      | 5648_EMAIL_RAB_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL > 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE =  7 |
      | 5648_EMAIL_RAB_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL = 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE <  7 |
      | 5648_EMAIL_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL = 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL! = 1,Current date - EVENT_DATE <  7    |
      | 5648_EMAIL_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL = 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE >  7     |
      | 5648_EMAIL_RAB_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL != 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE <  7    |


  @EMAIL @CIReTargetingOfferEmail @5648 @CIRetargeting_5648_BATCH_Negative @VS17084 @AUTOTESTTOTAL#45
  Scenario Outline: Creditor Insurance ReTargeting Email channel Validate the batch file <Test cases> for negative test cases
    Given load data from "CredInsReTargeting5648Email" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read Creditor Insurance "CIEmail" extract file with Preference customer offer details
    Then validate the Creditor Insurance offer details should not display in batch file
    Examples:
      | Test cases                                                              |
      | N-5648_EMAIL_DECEASED_F=Y                                                    |
      | N-5648_EMAIL_DECEASED_F=NULL                                                 |
      | N-5648_EMAIL_CUST_TP_CD=NONPSNL                                              |
      | N-5648_EMAIL_PRIM_CNTRY_CD != CA                                             |
      | N-5648_EMAIL_PRIM_CNTRY_CD = NULL                                            |
      | N-5648_EMAIL_EMPLOYEE_STAFF_F=Y                                              |
      | N-5648_EMAIL_MRKTBLE_F = N                                                   |
      | N-5648_EMAIL_MRKTBLE_F = NULL                                                |
      | N-5648_EMAIL_DO_NOT_SOLICIT_F=Y                                              |
      | N-5648_EMAIL_CUST_AGE<18                                                     |
      | N-5648_EMAIL_CUST_AGE>69                                                     |
      | N-5648_EMAIL_CUST_AGE=NULL                                                   |
      | N-5648_EMAIL_ACCT_SUBSYS_ID != KS                                            |
      | N-5648_EMAIL_SRC_ACCT_STAT_CD != Open                                        |
      | N-5648_EMAIL_CR_CRD_PRTCTN_F = Y                                             |
      | N-5648_EMAIL_CR_CRD_PRTCTN_F = NULL                                          |
      | N-5648_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = N                                    |
      | N-5648_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = NULL                                 |
      | N-5648_EMAIL_CR_CRD_LMT_AMT>50000                                            |
      | N-5648_EMAIL_CR_CRD_LMT_AMT<0                                                |
      | N-5648_EMAIL_AXG_AB                                                          |
      | N-5648_EMAIL_AXP_BC                                                          |
      | N-5648_EMAIL_AXS_CD                                                          |
      | N-5648_EMAIL_VCL_EF                                                          |
      | N-5648_EMAIL_VFA_AC                                                          |
      | N-5648_EMAIL_VFF_GH                                                          |
      | N-5648_EMAIL_VGD_EF                                                          |
      | N-5648_EMAIL_VLR_TH                                                          |
      | N-5648_EMAIL_VUS_AS                                                          |
      | N-5648_EMAIL_Current Date - ACCT_ODT < 50 days                               |
      | N-5648_EMAIL_Current Date - ACCT_ODT = 50 days                               |
      | N-5648_EMAIL_CRNT_BAL_AMT > 1.2 x CR_CRD_LMT_AMT                             |
      | N-5648_EMAIL_LANG_CD = NULL                                                  |
      | N-5648_EMAIL_LANG_CD = ft                                                    |
      | N-5648_EMAIL_INSIGHT_CD != FLG_CC_INS_ABANDON_APP                            |
      | N-5648_EMAIL_CURR_VAL != 1                                                   |
      | N-5648_EMAIL_Current date - EVENT_DATE >  7 days                             |
      | N-5648_EMAIL_INSIGHT_CD = FLG_CC_INSURANCE_RETARGET_RS21071 and CURR_VAL = 1 |
      | N-5648_EMAIL_DO_NOT_EMAIL_F=Y                                                |
      | N-5648_EMAIL_DO_NOT_EMAIL_F=NULL                                             |
      | N-5648_EMAIL_VLD_EMAIL_F=N                                                   |
      | N-5648_EMAIL_VLD_EMAIL_F=NULL                                                |
      | N-5648_EMAIL_Email address =NULL                                             |
      | N-5648_EMAIL_Individual First Name = NULL                                    |
      | N-5648_EMAIL_MK_INSURANCE_EMAIL_F =N                                         |
      | N-5648_EMAIL_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL < 1    |
      | N-5648_EMAIL_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL = NULL |