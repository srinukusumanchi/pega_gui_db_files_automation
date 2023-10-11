@Touch34_TestDataCreation
Feature: Test data creation for EMOB  Touch Day 34
#  Name:	EMOB Notification - Digital Banking Email
#  Code:	VS1608E
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  EMOB Digital Banking Email 	4798
  @EMOB @EMOBTouchDay34_Positive_TestData @4798 @Workstream-4 @EMAIL @VS1608E
  Scenario Outline: EMOB Touch Day 34_EMAIL Create test data for positive test cases
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
      | Touch34_DO_NOT_SOLICIT_F=NULL                            | 34       |
      | Touch34_EMPLOYEE_STAFF_F=Null                            | 34       |
      | Touch34_Cust.age_Equal to 18                             | 34       |
      | Touch34_Cust.age_greater than 18                         | 34       |
#      | Touch34_cc_vip_ind is NULL                               | 34       |
#      | Touch34_LANG_CD= E                                       | 34       |
#      | Touch34_LANG_CD= EN                                      | 34       |
#      | Touch34_LANG_CD= F                                       | 34       |
#      | Touch34_LANG_CD= FR                                      | 34       |
#      | Touch34_LANG_Code_usage= e                               | 34       |
#      | Touch34_LANG_Code_usage= en                              | 34       |
#      | Touch34_LANG_Code_usage= f                               | 34       |
#      | Touch34_LANG_Code_usage= fr                              | 34       |
#      | Touch34_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN   | 34       |
#      | Touch34_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_FR  | 34       |
#      | Touch34_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN   | 34       |
#      | Touch34_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_FR | 34       |
#      | Touch34_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN   | 34       |
#      | Touch34_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_FR | 34       |
#      | Touch34_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN   | 34       |
#      | Touch34_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_FR   | 34       |
#      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN   | 34       |
#      | Touch34_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_FR  | 34       |
#      | Touch34_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN  | 34       |
#      | Touch34_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_FR  | 34       |
#      | Touch34_acct_opn_dt = 34days                             | 34       |
#      | Touch34_acct_opn_dt =37 days                             | 37       |
#      | Touch34_acct_opn_dt is >=34days and <=37days             | 36       |
#      | Touch34_BLOCK_RSN_CD and RECL_CD is BLANK                | 34       |
#      | Touch34_BLOCK_RSN_CD and RECL_CD is NULL                 | 34       |
#      | Touch34_BLOCK_RSN_CD and RECL_CD is XH                   | 34       |
#      | Touch34_BLOCK_RSN_CD and RECL_CD is  C                   | 34       |



  @EMOB @EMOBTouchDay34_Negative_TestData @4798 @Workstream-4 @EMAIL @VS1608E
  Scenario Outline: EMOB Touch Day 34_EMAIL Create test data for negative test cases
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
      | Touch34_N-CUST_TP_CD=Non_PSNL                            | 34       |
      | Touch34_N-CUST_TP_CD=NULL                                | 34       |
      | Touch34_N-PRIM_CNTRY_CD=US                               | 34       |
      | Touch34_N-PRIM_CNTRY_CD=NULL                             | 34       |
      | Touch34_N-PRIM_PROV_CD=NULL                              | 34       |
      | Touch34_N-VLD_EMAIL_F =N                                 | 34       |
      | Touch34_N-DO_NOT_EMAIL_F=Y                               | 34       |
      | Touch34_N-DO_NOT_EMAIL_F=NULL                            | 34       |
      | Touch34_N-Cust.age_Less than 18                          | 34       |
      | Touch34_N-Cust.age = NULL                                | 34       |
      | Touch34_N-INDV_FRST_NM is NULL                           | 34       |
      | Touch34_N-INDV_LAST_NM is NULL                           | 34       |
      | Touch34_N-Prv_Bnk_Ind = Y                                | 34       |
      | Touch34_N-Prv_Bnk_Ind = NULL                             | 34       |
      | Touch34_N-EMPLOYEE_STAFF_F=Y                             | 34       |
      | Touch34_N-LANG_CD= K                                     | 34       |
      | Touch34_N-LANG_CD= NE                                    | 34       |
      | Touch34_N-LANG_CD= NULL                                  | 34       |
      | Touch34_N-Marketable_F = N                               | 34       |
      | Touch34_N-Marketable_F = NULL                            | 34       |
      | Touch34_N-DO_NOT_SOLICIT_F=Y                             | 34       |
      | Touch34_N-Deceased_F=Y                                   | 34       |
      | Touch34_N-cc_vip_ind is 2                                | 34       |
      | Touch34_N-cc_vip_ind is 9                                | 34       |
      | Touch34_N-chrgf_cd is not 0                              | 34       |
      | Touch34_N-chrgf_cd is Null                               | 34       |
      | Touch34_N-PRIMARY_ACCT_HOLDER_FLAG is N                  | 34       |
      | Touch34_N-ACCT_SUBSYS_ID is BB                           | 34       |
      | Touch34_N-acct_opn_dt is lessthan 34                     | 33       |
      | Touch34_N-acct_opn_dt is greater than 37                 | 38       |
      | Touch34_N-acct_opn_dt is NULL                            | NULL     |
      | Touch34_N-BLOCK_RSN_CD is Y                              | 34       |
      | Touch34_N-RECL_cd is Y                                   | 34       |
      | Touch34_N-reissu_cd is not NULL                          | 34       |
      | Touch34_N-reissu_cd is not BLANK                         | 34       |
      | Touch34_N-BLOCK_RSN_CD = A and RECL_CD = B               | 34       |
      | Touch34_N-BLOCK_RSN_CD = BLANK and RECL_CD = H           | 34       |
      | Touch34_N-BLOCK_RSN_CD = C and RECL_CD = BLANK           | 34       |
      | Touch34_N-BLOCK_RSN_CD = C and RECL_CD = NULL            | 34       |
      | Touch34_N- BLOCK_RSN_CD = X and RECL_CD = BLANK          | 34       |
      | Touch34_N- BLOCK_RSN_CD = X and RECL_CD = NULL           | 34       |
      | Touch34_N- BLOCK_RSN_CD = BLANK and RECL_CD = H          | 34       |
      | Touch34_N- BLOCK_RSN_CD = NULL and RECL_CD = H           | 34       |
      | Touch34_N-PRIM_EMAIL_ADDR = Null                         | 34       |
      | Touch34_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN | 34       |
      | Touch34_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR | 34       |
      | Touch34_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN  | 34       |
      | Touch34_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR  | 34       |
      | Touch34_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN  | 34       |
      | Touch34_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR  | 34       |
      | Touch34_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN  | 34       |
      | Touch34_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR  | 34       |