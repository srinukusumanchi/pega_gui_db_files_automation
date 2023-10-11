@Touch14_TestDataCreation
Feature: Test data creation for EMOB  Touch Day 14
#  Name:	EMOB Notification - Activation Email
#  Code:	VS1608C
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  ScotiaGold No-Fee - Activation Email	4751
#  SCENE VISA Card Regular - Activation Email	4752
#  SCENE VISA Card Student - Activation Email	4753
#  Value VISA Regular - Activation Email	4754
#  Value VISA No Fee - Activation Email	4755
#  Scotia Momentum VISA Infinite - Activation Email	4756
#  Scotia Momentum VISA Regular - Activation Email	4757
#  Scotia Momentum No-Fee VISA - Activation Email	4758
#  L’earn VISA Card Student - Activation Email	4759
#  GM Visa Card (Classic)  - Activation Email	4760
#  GM Visa Infinite Card  - Activation Email	4761
#  Scotiabank Amex - Activation Email	4762
#  Scotiabank Platinum Amex - Activation Email	4763
#  Scotiabank Gold Amex - Activation Email	4764
#  Scotiabank Rewards Visa - Activation Email	4765
#  Scotiabank Passport Visa Infinite Card - Activation Email	4766
#  ScotiaGold Passport - Activation Email	4884

  @EMOB @EMOBTouchDay14_Positive_TestData @Workstream-4 @EMAIL @VS1608C
    @4751 @4752 @4753 @4754 @4755 @4756 @4757 @4758 @4759 @4760
    @4761 @4762 @4763 @4764 @4765 @4766 @4884
  Scenario Outline: EMOB Touch Day 14_EMAIL Create test data for positive test cases
    Given load data from "EMOB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                               | Acct_Odt |
      | Touch14_DO_NOT_SOLICIT_F=NULL                            | 14       |
      | Touch14_EMPLOYEE_STAFF_F=Null                            | 14       |
      | Touch14_Cust.age_Equal to 18                             | 14       |
      | Touch14_Cust.age_greater than 18                         | 14       |
      | Touch14_cc_vip_ind is NULL                               | 14       |
      | Touch14_LANG_CD= E                                       | 14       |
      | Touch14_LANG_CD= EN                                      | 14       |
      | Touch14_LANG_CD= F                                       | 14       |
      | Touch14_LANG_CD= FR                                      | 14       |
      | Touch14_LANG_Code_usage= e                               | 14       |
      | Touch14_LANG_Code_usage= en                              | 14       |
      | Touch14_LANG_Code_usage= f                               | 14       |
      | Touch14_LANG_Code_usage= fr                              | 14       |
      | Touch14_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_EN  | 14       |
      | Touch14_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_FR  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_FR  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_EN  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_FR  | 14       |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN  | 14       |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_FR  | 14       |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN  | 14       |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_FR  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_FR  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_FR  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_FR  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_EN  | 14       |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_FR  | 14       |
      | Touch14_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN  | 14       |
      | Touch14_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_FR  | 14       |
      | Touch14_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN   | 14       |
      | Touch14_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_FR  | 14       |
      | Touch14_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN   | 14       |
      | Touch14_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_FR | 14       |
      | Touch14_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN   | 14       |
      | Touch14_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_FR | 14       |
      | Touch14_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN   | 14       |
      | Touch14_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_FR   | 14       |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN  | 14       |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_FR  | 14       |
      | Touch14_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN   | 14       |
      | Touch14_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_FR  | 14       |
      | Touch14_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN  | 14       |
      | Touch14_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_FR  | 14       |
      | Touch14_acct_opn_dt = 14 days                            | 14       |
      | Touch14_acct_opn_dt = 17 days                            | 17       |
      | Touch14_acct_opn_dt is >=14 days and <=17 days           | 15       |
      | Touch14_BLOCK_RSN_CD and RECL_CD is BLANK                | 14       |
      | Touch14_BLOCK_RSN_CD and RECL_CD is NULL                 | 14       |
      | Touch14_BLOCK_RSN_CD and RECL_CD is XH                   | 14       |
      | Touch14_BLOCK_RSN_CD and RECL_CD is  C                   | 14       |
      | Touch14_CRD_ACTIVATION_STATE Leading Spaces              | 14       |
      | Touch14_CRD_ACTIVATION_STATE Trailing Spaces             | 14       |

  @EMOB @EMOBTouchDay14_Negative_TestData @Workstream-4 @EMAIL @VS1608C
    @4751 @4752 @4753 @4754 @4755 @4756 @4757 @4758 @4759 @4760
    @4761 @4762 @4763 @4764 @4765 @4766 @4884
  Scenario Outline: EMOB Touch Day 14_EMAIL Create test data for negative test cases
    Given load data from "EMOB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                               | Acct_Odt |
      | Touch14_N-CUST_TP_CD=Non_PSNL                            | 14       |
      | Touch14_N-CUST_TP_CD=NULL                                | 14       |
      | Touch14_N-PRIM_CNTRY_CD=US                               | 14       |
      | Touch14_N-PRIM_CNTRY_CD=NULL                             | 14       |
      | Touch14_N-PRIM_PROV_CD=NULL                              | 14       |
      | Touch14_N-VLD_EMAIL_F =N                                 | 14       |
      | Touch14_N-DO_NOT_EMAIL_F=Y                               | 14       |
      | Touch14_N-DO_NOT_EMAIL_F=NULL                            | 14       |
      | Touch14_N-Cust.age_Less than 18                          | 14       |
      | Touch14_N-Cust.age = NULL                                | 14       |
      | Touch14_N-INDV_FRST_NM is NULL                           | 14       |
      | Touch14_N-INDV_LAST_NM is NULL                           | 14       |
      | Touch14_N-Prv_Bnk_Ind = Y                                | 14       |
      | Touch14_N-Prv_Bnk_Ind = NULL                             | 14       |
      | Touch14_N-EMPLOYEE_STAFF_F=Y                             | 14       |
      | Touch14_N-LANG_CD= K                                     | 14       |
      | Touch14_N-LANG_CD= NE                                    | 14       |
      | Touch14_N-LANG_CD= NULL                                  | 14       |
      | Touch14_N-Marketable_F = N                               | 14       |
      | Touch14_N-Marketable_F = NULL                            | 14       |
      | Touch14_N-DO_NOT_SOLICIT_F=Y                             | 14       |
      | Touch14_N-Deceased_F=Y                                   | 14       |
      | Touch14_N-cc_vip_ind is 2                                | 14       |
      | Touch14_N-cc_vip_ind is 9                                | 14       |
      | Touch14_N-chrgf_cd is not 0                              | 14       |
      | Touch14_N-chrgf_cd is Null                               | 14       |
      | Touch14_N-PRIMARY_ACCT_HOLDER_FLAG is N                  | 14       |
      | Touch14_N-ACCT_SUBSYS_ID is BB                           | 14       |
      | Touch14_N-acct_opn_dt is lessthan 14                     | 13       |
      | Touch14_N-acct_opn_dt is greater than 17                 | 18       |
      | Touch14_N-acct_opn_dt is NULL                            | NULL     |
      | Touch14_N-BLOCK_RSN_CD is Y                              | 14       |
      | Touch14_N-RECL_cd is Y                                   | 14       |
      | Touch14_N-reissu_cd is not NULL                          | 14       |
      | Touch14_N-reissu_cd is not BLANK                         | 14       |
      | Touch14_N-BLOCK_RSN_CD = A and RECL_CD = B               | 14       |
      | Touch14_N-BLOCK_RSN_CD = BLANK and RECL_CD = H           | 14       |
      | Touch14_N-BLOCK_RSN_CD = C and RECL_CD = BLANK           | 14       |
      | Touch14_N-BLOCK_RSN_CD = C and RECL_CD = NULL            | 14       |
      | Touch14_N- BLOCK_RSN_CD = X and RECL_CD = BLANK          | 14       |
      | Touch14_N- BLOCK_RSN_CD = X and RECL_CD = NULL           | 14       |
      | Touch14_N- BLOCK_RSN_CD = BLANK and RECL_CD = H          | 14       |
      | Touch14_N- BLOCK_RSN_CD = NULL and RECL_CD = H           | 14       |
      | Touch14_N-PRIM_EMAIL_ADDR = Null                         | 14       |
      | Touch14_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN | 14       |
      | Touch14_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR | 14       |
      | Touch14_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN  | 14       |
      | Touch14_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR  | 14       |
      | Touch14_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN  | 14       |
      | Touch14_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR  | 14       |
      | Touch14_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN  | 14       |
      | Touch14_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR  | 14       |
      | Touch14_N-Activation State Name = Activated              | 14       |