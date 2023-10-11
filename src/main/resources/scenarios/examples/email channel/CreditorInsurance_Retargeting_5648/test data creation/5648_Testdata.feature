@CreditorInsuranceRetargeting_Email_5648
Feature: Test data creation for Email channel for Creditor Insurance ReTargeting Offer Campaign

  @5648_ReTargeting_Email_Positive_Testdata
  Scenario Outline: Creditor Insurance_ReTargeting Offer_VS17084_5648_EMAIL Create test data "<Test cases>" for positive scenarios
    Given load data from "CredInsReTargeting5648Email" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                         | Acct_Odt | Event_Date |
#      | 5648_EMAIL_EMPLOYEE_STAFF_F=NULL                                                                        | 54       | 3          |
#      | 5648_EMAIL_DO_NOT_SOLICIT_F=N                                                                           | 54       | 3          |
#      | 5648_EMAIL_DO_NOT_SOLICIT_F=NULL                                                                        | 54       | 3          |
#      | 5648_EMAIL_CUST_AGE=18                                                                                  | 54       | 3          |
#      | 5648_EMAIL_CUST_AGE=69                                                                                  | 54       | 3          |
#      | 5648_EMAIL_CUST_AGE=18 to 69                                                                            | 54       | 3          |
#      | 5648_EMAIL_ACCT_SUBSYS_ID = KS                                                                          | 54       | 3          |
#      | 5648_EMAIL_SRC_ACCT_STAT_CD = Open                                                                      | 54       | 3          |
#      | 5648_EMAIL_CR_CRD_PRTCTN_F = N                                                                          | 54       | 3          |
#      | 5648_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                 | 54       | 3          |
#      | 5648_EMAIL_CR_CRD_LMT_AMT <50000 andCR_CRD_LMT_AMT >0                                                   | 54       | 3          |
#      | 5648_EMAIL_CR_CRD_LMT_AMT =50000 andCR_CRD_LMT_AMT >0                                                   | 54       | 3          |
#      | N-5648_EMAIL_CR_CRD_LMT_AMT = 0                                                                         | 54       | 3          |
#      | 5648_EMAIL_CR_CRD_LMT_AMT = 1                                                                           | 54       | 3          |
#      | 5648_EMAIL_ACCT_ODT > 50 days                                                                           | 52       | 3          |
#      | 5648_EMAIL_ACCT_ODT = 51 days                                                                           | 51       | 3          |
#      | 5648_EMAIL_CRNT_BAL_AMT < (1.2 x CR_CRD_LMT_AMT)                                                        | 51       | 3          |
#      | 5648_EMAIL_CRNT_BAL_AMT = (1.2 x CR_CRD_LMT_AMT)                                                        | 54       | 3          |
#      | 5648_EMAIL_AXG_GC                                                                                       | 54       | 3          |
#      | 5648_EMAIL_AXG_GS                                                                                       | 54       | 3          |
#      | 5648_EMAIL_AXP_PC                                                                                       | 54       | 3          |
#      | 5648_EMAIL_AXS_SC                                                                                       | 54       | 3          |
#      | 5648_EMAIL_AXS_SS                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_DM                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_NF                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_NH                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_RG                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_SC                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_SL                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_SS                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_ST                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_SV                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VCL_ZZ                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VFA_A1                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VFA_A3                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VFF_F1                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VFF_TR                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VFF_TS                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VGD_NF                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VGD_RG                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VGD_SP                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VGD_ST                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VLR_NF                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VLR_RC                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VLR_RG                                                                                       | 54       | 3          |
#      | 5648_EMAIL_VUS_RG                                                                                       | 54       | 3          |
#      | 5648_EMAIL_LANG_CD in en                                                                                | 54       | 3          |
#      | 5648_EMAIL_LANG_CD in fr                                                                                | 54       | 3          |
#      | 5648_EMAIL_DO_NOT_EMAIL_F=N                                                                             | 54       | 3          |
#      | 5648_EMAIL_VLD_EMAIL_F=Y                                                                                | 54       | 3          |
#      | 5648_EMAIL_Email address !=NULL                                                                         | 54       | 3          |
#      | 5648_EMAIL_Individual First Name not blank/null                                                         | 54       | 3          |
#      | 5648_EMAIL_MK_INSURANCE_EMAIL_F =Y                                                                      | 54       | 3          |
#      | 5648_EMAIL_MK_INSURANCE_EMAIL_F =NULL                                                                   | 54       | 3          |
      | 5648_EMAIL_INSIGHT_CD = FLG_CC_INS_ABANDON_APP and CURR_VAL = 1 and Current date - EVENT_DATE =  7 days | 54       | 7          |
      | 5648_EMAIL_INSIGHT_CD = FLG_CC_INS_ABANDON_APP and CURR_VAL = 1 and Current date - EVENT_DATE <  7 days | 54       | 6          |
      | 5648_EMAIL_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL = 1 | 54       | NULL       |
      | 5648_EMAIL_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL > 1 | 54       | NULL       |

  @5648_ReTargeting_Email_Negative_TestData
  Scenario Outline: Creditor Insurance_ReTargeting Offer_VS17084_5648_EMAIL Create test data "<Test cases>" for negative scenarios
    Given load data from "CredInsReTargeting5648Email" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                              | Acct_Odt | Event_Date |
#      | N-5648_EMAIL_DECEASED_F=Y                                                    | 54       | 3          |
#      | N-5648_EMAIL_DECEASED_F=NULL                                                 | 54       | 3          |
#      | N-5648_EMAIL_CUST_TP_CD=NONPSNL                                              | 54       | 3          |
#      | N-5648_EMAIL_CUST_TP_CD=NULL                                                 | 54       | 3          |
#      | N-5648_EMAIL_PRIM_CNTRY_CD != CA                                             | 54       | 3          |
#      | N-5648_EMAIL_PRIM_CNTRY_CD = NULL                                            | 54       | 3          |
#      | N-5648_EMAIL_EMPLOYEE_STAFF_F=Y                                              | 54       | 3          |
#      | N-5648_EMAIL_MRKTBLE_F = N                                                   | 54       | 3          |
#      | N-5648_EMAIL_MRKTBLE_F = NULL                                                | 54       | 3          |
#      | N-5648_EMAIL_DO_NOT_SOLICIT_F=Y                                              | 54       | 3          |
#      | N-5648_EMAIL_CUST_AGE<18                                                     | 54       | 3          |
#      | N-5648_EMAIL_CUST_AGE>69                                                     | 54       | 3          |
#      | N-5648_EMAIL_CUST_AGE=NULL                                                   | 54       | 3          |
#      | N-5648_EMAIL_ACCT_SUBSYS_ID != KS                                            | 54       | 3          |
#      | N-5648_EMAIL_SRC_ACCT_STAT_CD != Open                                        | 54       | 3          |
#      | N-5648_EMAIL_CR_CRD_PRTCTN_F = Y                                             | 54       | 3          |
#      | N-5648_EMAIL_CR_CRD_PRTCTN_F = NULL                                          | 54       | 3          |
#      | N-5648_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = N                                    | 54       | 3          |
#      | N-5648_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = NULL                                 | 54       | 3          |
#      | N-5648_EMAIL_CR_CRD_LMT_AMT>50000                                            | 54       | 3          |
#      | N-5648_EMAIL_CR_CRD_LMT_AMT<0                                                | 54       | 3          |
#      | N-5648_EMAIL_AXG_AB                                                          | 54       | 3          |
#      | N-5648_EMAIL_AXP_BC                                                          | 54       | 3          |
#      | N-5648_EMAIL_AXS_CD                                                          | 54       | 3          |
#      | N-5648_EMAIL_VCL_EF                                                          | 54       | 3          |
#      | N-5648_EMAIL_VFA_AC                                                          | 54       | 3          |
#      | N-5648_EMAIL_VFF_GH                                                          | 54       | 3          |
#      | N-5648_EMAIL_VGD_EF                                                          | 54       | 3          |
#      | N-5648_EMAIL_VLR_TH                                                          | 54       | 3          |
#      | N-5648_EMAIL_VUS_AS                                                          | 54       | 3          |
#      | N-5648_EMAIL_Current Date - ACCT_ODT < 50 days                               | 49       | 3          |
#      | N-5648_EMAIL_Current Date - ACCT_ODT = 50 days                               | 50       | 3          |
#      | N-5648_EMAIL_CRNT_BAL_AMT > 1.2 x CR_CRD_LMT_AMT                             | 54       | 3          |
#      | N-5648_EMAIL_LANG_CD = NULL                                                  | 54       | 3          |
#      | N-5648_EMAIL_LANG_CD = ft                                                    | 54       | 3          |
      | N-5648_EMAIL_INSIGHT_CD != FLG_CC_INS_ABANDON_APP                            | 54       | 3          |
      | N-5648_EMAIL_CURR_VAL != 1                                                   | 54       | 3          |
      | N-5648_EMAIL_Current date - EVENT_DATE >  7 days                             | 54       | 8          |
#      | N-5648_EMAIL_INSIGHT_CD = FLG_CC_INSURANCE_RETARGET_RS21071 and CURR_VAL = 1 | 54       | 3          |
#      | N-5648_EMAIL_DO_NOT_EMAIL_F=Y                                                | 54       | 3          |
#      | N-5648_EMAIL_DO_NOT_EMAIL_F=NULL                                             | 54       | 3          |
#      | N-5648_EMAIL_VLD_EMAIL_F=N                                                   | 54       | 3          |
#      | N-5648_EMAIL_VLD_EMAIL_F=NULL                                                | 54       | 3          |
#      | N-5648_EMAIL_Email address =NULL                                             | 54       | 3          |
#      | N-5648_EMAIL_Individual First Name = NULL                                    | 54       | 3          |
#      | N-5648_EMAIL_MK_INSURANCE_EMAIL_F =N                                         | 54       | 3          |
      | N-5648_EMAIL_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL < 1    | 54       | NULL       |
      | N-5648_EMAIL_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL = NULL | 54       | NULL       |

  @5648_ReTargeting_Email_Positive_Testdata_MultipleCustinsights
  Scenario Outline: Creditor Insurance_ReTargeting Offer_VS17084_5648_EMAIL Create test data "<Test cases>" for positive scenarios
    Given load data from "CredInsReTargeting5648Email" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    When write dual same account number into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" insights
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "Test cases" having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases                                                                                                                                                 | Acct_Odt | Event_Date |
      | 5648_EMAIL_RAB_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL > 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE =  7 | 54       | 7          |
      | 5648_EMAIL_RAB_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL = 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE <  7 | 54       | 6          |
      | 5648_EMAIL_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL = 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL! = 1,Current date - EVENT_DATE <  7    | 54       | 1          |
      | 5648_EMAIL_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL = 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE >  7     | 54       | 8          |
      | 5648_EMAIL_RAB_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL != 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE <  7    | 54       | 6          |

