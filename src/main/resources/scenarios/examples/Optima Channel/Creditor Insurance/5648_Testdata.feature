@CreditorInsuranceRetargeting_Optima_5648
Feature: Test data creation for Email channel for Creditor Insurance ReTargeting Offer Campaign

  @5648_ReTargeting_Optima_Positive_Testdata
  Scenario Outline: Creditor Insurance_ReTargeting Offer_VS17084_5648_Optima Create test data "<Test cases>" for positive scenarios
    Given load data from "CredInsReTargeting5648Optima" excel sheet
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
      | Test cases                                                                                               | Acct_Odt | Event_Date |
#      | 5648_OPTIMA_EMPLOYEE_STAFF_F=NULL                                                                        | 54       | 3          |
#      | 5648_OPTIMA_DO_NOT_SOLICIT_F=N                                                                           | 54       | 3          |
#      | 5648_OPTIMA_DO_NOT_SOLICIT_F=NULL                                                                        | 54       | 3          |
#      | 5648_OPTIMA_CUST_AGE=18                                                                                  | 54       | 3          |
#      | 5648_OPTIMA_CUST_AGE=69                                                                                  | 54       | 3          |
#      | 5648_OPTIMA_CUST_AGE=18 to 69                                                                            | 54       | 3          |
#      | 5648_OPTIMA_ACCT_SUBSYS_ID = KS                                                                          | 54       | 3          |
#      | 5648_OPTIMA_SRC_ACCT_STAT_CD = Open                                                                      | 54       | 3          |
#      | 5648_OPTIMA_CR_CRD_PRTCTN_F = N                                                                          | 54       | 3          |
#      | 5648_OPTIMA_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                 | 54       | 3          |
#      | 5648_OPTIMA_CR_CRD_LMT_AMT <50000 andCR_CRD_LMT_AMT >0                                                   | 54       | 3          |
#      | 5648_OPTIMA_CR_CRD_LMT_AMT =50000 andCR_CRD_LMT_AMT >0                                                   | 54       | 3          |
#      | 5648_OPTIMA_CR_CRD_LMT_AMT = 1                                                                           | 54       | 3          |
#      | N-5648_OPTIMA_CR_CRD_LMT_AMT = 0                                                                         | 54       | 3          |
#      | 5648_OPTIMA_ACCT_ODT > 50 days                                                                           | 52       | 3          |
#      | 5648_OPTIMA_ACCT_ODT = 51 days                                                                           | 51       | 3          |
#      | 5648_OPTIMA_CRNT_BAL_AMT < (1.2 x CR_CRD_LMT_AMT)                                                        | 54       | 3          |
#      | 5648_OPTIMA_CRNT_BAL_AMT = (1.2 x CR_CRD_LMT_AMT)                                                        | 54       | 3          |
#      | 5648_OPTIMA_AXG_GC                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_AXG_GS                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_AXP_PC                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_AXS_SC                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_AXS_SS                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_DM                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_NF                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_NH                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_RG                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_SC                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_SL                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_SS                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_ST                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_SV                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VCL_ZZ                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VFA_A1                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VFA_A3                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VFF_F1                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VFF_TR                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VFF_TS                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VGD_NF                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VGD_RG                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VGD_SP                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VGD_ST                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VLR_NF                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VLR_RC                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VLR_RG                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_VUS_RG                                                                                       | 54       | 3          |
#      | 5648_OPTIMA_DO_NOT_CALL_F = N                                                                            | 54       | 3          |
#      | 5648_OPTIMA_LANG_CD in en                                                                                | 54       | 3          |
#      | 5648_OPTIMA_PRIM_PROV_CD ! = QC or AB or NL                                                              | 54       | 3          |
      | 5648_OPTIMA_INSIGHT_CD = FLG_CC_INS_ABANDON_APP and CURR_VAL = 1 and Current date - EVENT_DATE =  7 days | 54       | 7          |
      | 5648_OPTIMA_INSIGHT_CD = FLG_CC_INS_ABANDON_APP and CURR_VAL = 1 and Current date - EVENT_DATE <  7 days | 54       | 6          |
#      | 5648_OPTIMA_FileLayout_GIVEN_NAME!=NULL                                                                  | 54       | 3          |
#      | 5648_OPTIMA_FileLayout_INDV_GNDR_CD!=NULL                                                                | 54       | 3          |
#      | 5648_OPTIMA_FileLayout_PRIM_ADDR_LINE_1!=NULL                                                            | 54       | 3          |
#      | 5648_OPTIMA_FileLayout_PRIM_CITY_NM!=NULL                                                                | 54       | 3          |
#      | 5648_OPTIMA_FileLayout_PRIM_PROV_CD!=NULL                                                                | 54       | 3          |
#      | 5648_OPTIMA_FileLayout_PRIM_POST_CD!=NULL                                                                | 54       | 3          |
#      | 5648_OPTIMA_FileLayout_INDV_HOME_TEL_NUM!=NULL                                                           | 54       | 3          |
#      | 5648_OPTIMA_FileLayout_INDV_BRTH_DT!=NULL                                                                | 54       | 3          |
#      | 5648_OPTIMA_FileLayout_SRC_SYS_SUB_PRD_DESC!=NULL                                                        | 54       | 3          |
      | 5648_OPTIMA_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL = 1                                      | 54       | NULL       |
      | 5648_OPTIMA_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL > 1                                      | 54       | NULL       |


  @5648_ReTargeting_Optima_Negative_TestData
  Scenario Outline: Creditor Insurance_ReTargeting Offer_VS17084_5648_EMAIL Create test data "<Test cases>" for negative scenarios
    Given load data from "CredInsReTargeting5648Optima" excel sheet
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
      | Test cases                                                               | Acct_Odt | Event_Date |
#      | N-5648_OPTIMA_DECEASED_F=Y                                                    | 54       | 3          |
#      | N-5648_OPTIMA_DECEASED_F=NULL                                                 | 54       | 3          |
#      | N-5648_OPTIMA_CUST_TP_CD=NONPSNL                                              | 54       | 3          |
#      | N-5648_OPTIMA_PRIM_CNTRY_CD != CA                                             | 54       | 3          |
#      | N-5648_OPTIMA_PRIM_CNTRY_CD = NULL                                            | 54       | 3          |
#      | N-5648_OPTIMA_EMPLOYEE_STAFF_F=Y                                              | 54       | 3          |
#      | N-5648_OPTIMA_MRKTBLE_F = N                                                   | 54       | 3          |
#      | N-5648_OPTIMA_MRKTBLE_F = NULL                                                | 54       | 3          |
#      | N-5648_OPTIMA_DO_NOT_SOLICIT_F=Y                                              | 54       | 3          |
#      | N-5648_OPTIMA_CUST_AGE<18                                                     | 54       | 3          |
#      | N-5648_OPTIMA_CUST_AGE>69                                                     | 54       | 3          |
#      | N-5648_OPTIMA_CUST_AGE=NULL                                                   | 54       | 3          |
#      | N-5648_OPTIMA_ACCT_SUBSYS_ID != KS                                            | 54       | 3          |
#      | N-5648_OPTIMA_SRC_ACCT_STAT_CD != Open                                        | 54       | 3          |
#      | N-5648_OPTIMA_CR_CRD_PRTCTN_F = Y                                             | 54       | 3          |
#      | N-5648_OPTIMA_CR_CRD_PRTCTN_F = NULL                                          | 54       | 3          |
#      | N-5648_OPTIMA_PRIMARY_ACCT_HOLDER_FLAG = N                                    | 54       | 3          |
#      | N-5648_OPTIMA_PRIMARY_ACCT_HOLDER_FLAG = NULL                                 | 54       | 3          |
#      | N-5648_OPTIMA_CR_CRD_LMT_AMT>50000                                            | 54       | 3          |
#      | N-5648_OPTIMA_CR_CRD_LMT_AMT<0                                                | 54       | 3          |
#      | N-5648_OPTIMA_AXG_AB                                                          | 54       | 3          |
#      | N-5648_OPTIMA_AXP_BC                                                          | 54       | 3          |
#      | N-5648_OPTIMA_AXS_CD                                                          | 54       | 3          |
#      | N-5648_OPTIMA_VCL_EF                                                          | 54       | 3          |
#      | N-5648_OPTIMA_VFA_AC                                                          | 54       | 3          |
#      | N-5648_OPTIMA_VFF_GH                                                          | 54       | 3          |
#      | N-5648_OPTIMA_VGD_EF                                                          | 54       | 3          |
#      | N-5648_OPTIMA_VLR_TH                                                          | 54       | 3          |
#      | N-5648_OPTIMA_VUS_AS                                                          | 54       | 3          |
#      | N-5648_OPTIMA_Current Date - ACCT_ODT < 50 days                               | 49       | 3          |
#      | N-5648_OPTIMA_Current Date - ACCT_ODT = 50 days                               | 50       | 3          |
#      | N-5648_OPTIMA_CRNT_BAL_AMT > 1.2 x CR_CRD_LMT_AMT                             | 54       | 3          |
#      | N-5648_OPTIMA_DO_NOT_CALL_F = Y                                               | 54       | 3          |
#      | N-5648_OPTIMA_DO_NOT_CALL_F = NULL                                            | 54       | 3          |
#      | N-5648_OPTIMA_LANG_CD = f                                                     | 54       | 3          |
#      | N-5648_OPTIMA_LANG_CD = fr                                                    | 54       | 3          |
#      | N-5648_OPTIMA_LANG_CD = NULL                                                  | 54       | 3          |
#      | N-5648_OPTIMA_PRIM_PROV_CD = QC                                               | 54       | 3          |
#      | N-5648_OPTIMA_PRIM_PROV_CD = AB                                               | 54       | 3          |
#      | N-5648_OPTIMA_PRIM_PROV_CD = NL                                               | 54       | 3          |
      | N-5648_OPTIMA_INSIGHT_CD != FLG_CC_INS_ABANDON_APP                       | 54       | 3          |
      | N-5648_OPTIMA_CURR_VAL != 1                                              | 54       | 3          |
      | N-5648_OPTIMA_Current date - EVENT_DATE >  7 days                        | 54       | 8          |
#      | N-5648_OPTIMA_INSIGHT_CD = FLG_CC_INSURANCE_RS21026  and CURR_VAL = 1         | 54       | 3          |
#      | N-5648_OPTIMA_INSIGHT_CD = FLG_CC_INSURANCE_RETARGET_RS21071 and CURR_VAL = 1 | 54       | 3          |
#      | N-5648_OPTIMA_GIVEN_NAME=NULL                                                 | 54       | 3          |
#      | 5648_OPTIMA_INDV_GNDR_CD=NULL                                                 | 54       | 3          |
#      | N-5648_OPTIMA_PRIM_ADDR_LINE_1=NULL                                           | 54       | 3          |
#      | N-5648_OPTIMA_PRIM_CITY_NM=NULL                                               | 54       | 3          |
#      | N-5648_OPTIMA_PRIM_PROV_CD=NULL                                               | 54       | 3          |
#      | N-5648_OPTIMA_PRIM_POST_CD=NULL                                               | 54       | 3          |
#      | N-5648_OPTIMA_INDV_HOME_TEL_NUM=NULL                                          | 54       | 3          |
#      | N-5648_OPTIMA_INDV_BRTH_DT=NULL                                               | 54       | 3          |
#      | N-5648_OPTIMA_CR_CRD_LMT_AMT=NULL                                             | 54       | 3          |
#      | N-5648_OPTIMA_SRC_SYS_SUB_PRD_DESC=NULL                                       | 54       | 3          |
      | N-5648_OPTIMA_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL < 1    | 54       | NULL       |
      | N-5648_OPTIMA_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS && CURR_VAL = NULL | 54       | NULL       |

  @5648_ReTargeting_Optima_Positive_Testdata_MultipleCustinsights
  Scenario Outline: Creditor Insurance_ReTargeting Offer_VS17084_5648_Optima Create test data "<Test cases>" for positive scenarios
    Given load data from "CredInsReTargeting5648Optima" excel sheet
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
      | Test cases                                                                                                                                                  | Acct_Odt | Event_Date |
#      | 5648_OPTIMA_RAB_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL = 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE <  7 | 54       | 7          |
#      | 5648_OPTIMA_RAB_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL > 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE =  7 | 54       | 6          |
#      | 5648_OPTIMA_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL = 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL! = 1,Current date - EVENT_DATE <  7    | 54       | 1          |
#      | 5648_OPTIMA_RPC_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL = 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE >  7     | 54       | 8          |
#      | 5648_OPTIMA_RAB_INSIGHT_CD = CNT_PAGEVISIT_CREDITOR_INS,CURR_VAL != 1 && INSIGHT_CD = FLG_CC_INS_ABANDON_APP,CURR_VAL = 1,Current date - EVENT_DATE <  7    | 54       | 6          |

    ##Exclusion Adder for march 30 2023 REL
      | 5648_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_CURR_VAL_ne_1                                                                                                   | 54       | 3          |
      | 5648_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_CURR_VAL_eq_NULL                                                                                                | 54       | 3          |
      | N_5648_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_AND_CURR_VAL_eq_1                                                                                             | 54       | 3          |
