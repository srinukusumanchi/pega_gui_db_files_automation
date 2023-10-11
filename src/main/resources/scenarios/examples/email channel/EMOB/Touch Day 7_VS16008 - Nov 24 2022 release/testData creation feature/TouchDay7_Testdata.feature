@EMOB_Touch7_TestDataCreation
Feature: Test data creation for EMOB  Touch Day 7
#  Name:	EMOB Notification
#  Code:	VS16008
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Welcome to  ScotiaGold No Fee	2432
#  Welcome to SCENE VISA Card Regular	2437
#  Welcome to SCENE VISA Card Student	2438
#  Welcome to Value VISA Regular	2441
#  Welcome to Value VISA No Fee	2444
#  Welcome to Scotia Momentum VISA Infinite	2445
#  Welcome to Scotia Momentum VISA Regular	2446
#  Welcome to Scotia Momentum No-Fee VISA	2447
#  Welcome to L earn VISA Card Student	2448
#  Welcome to GM Visa Card (Classic)	2449
#  Welcome to GM Visa Infinite Card	2450
#  Welcome to Scotiabank Gold Amex	4749
#  Welcome to Scotiabank Amex	4954
#  Welcome to Scotiabank Platinum Amex	4955
#  Welcome to Scotiabank Rewards Visa	4956
#  Welcome to Scotiabank Passport Visa Infinite	4957
#  Welcome to ScotiaGold Passport VISA	4958

  @EMOB @EMOBTouchDay7_Positive_TestData @Workstream-4 @EMAIL @VS16008
    @2432 @2437 @2438 @2441 @2444 @2445 @2446 @2447 @2448 @2449
    @2450 @4749 @4954 @4955 @4956 @4957 @4958
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                              | acct_odt |
      | Touch7_Cust.age_Equal to 18                             | 6        |
      | Touch7_Cust.age_greater than 18                         | 6        |
      | Touch7_cc_vip_ind is NULL                               | 6        |
      | Touch7_LANG_CD= E                                       | 6        |
      | Touch7_LANG_CD= EN                                      | 6        |
      | Touch7_LANG_CD= F                                       | 6        |
      | Touch7_LANG_CD= FR                                      | 6        |
      | Touch7_LANG_Code_usage= e                               | 6        |
      | Touch7_LANG_Code_usage= en                              | 6        |
      | Touch7_LANG_Code_usage= f                               | 6        |
      | Touch7_LANG_Code_usage= fr                              | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN  | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_FR  | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_EN  | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_FR  | 6        |
      | Touch7_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN  | 6        |
      | Touch7_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_FR  | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN  | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_FR  | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN  | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_FR  | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN  | 6        |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_FR  | 6        |
      | Touch7_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN   | 6        |
      | Touch7_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_FR | 6        |
      | Touch7_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN   | 6        |
      | Touch7_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_FR | 6        |
      | Touch7_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN   | 6        |
      | Touch7_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_FR   | 6        |
      | Touch7_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN   | 6        |
      | Touch7_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_FR  | 6        |
      | Touch7_src_sys_prd_cd = VUS and SRC_SUB_PRD_CD = RG_EN  | 6        |
      | Touch7_src_sys_prd_cd = VUS and SRC_SUB_PRD_CD = RG_FR  | 6        |
      | Touch7_acct_opn_dt =  5 days                            | 5        |
      | Touch7_acct_opn_dt = 8 days                             | 8        |
      | Touch7_acct_opn_dt is >=5 days and <=8 days             | 7        |


  @EMOB @EMOBTouchDay7_Negative_TestData @Workstream-4 @EMAIL @VS16008
    @2432 @2437 @2438 @2441 @2444 @2445 @2446 @2447 @2448 @2449
    @2450 @4749 @4954 @4955 @4956 @4957 @4958
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for negative test cases
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                               | acct_odt |
      | Touch7_N-CUST_TP_CD=Non_PSNL                             | 6        |
      | Touch7_N-CUST_TP_CD=NULL                                 | 6        |
      | Touch7_N-PRIM_CNTRY_CD=US                                | 6        |
      | Touch7_N-PRIM_CNTRY_CD=NULL                              | 6        |
      | Touch7_N-PRIM_PROV_CD=NULL                               | 6        |
      | Touch7_N-VLD_EMAIL_F =N                                  | 6        |
      | Touch7_N-DO_NOT_EMAIL_F=Y                                | 6        |
      | Touch7_N-DO_NOT_EMAIL_F=NULL                             | 6        |
      | Touch7_N-Cust.age_Less than 18                           | 6        |
      | Touch7_N-Cust.age = NULL                                 | 6        |
      | Touch7_N-INDV_FRST_NM is NULL                            | 6        |
      | Touch7_N-INDV_LAST_NM is NULL                            | 6        |
      | Touch7_N-LANG_CD= K                                      | 6        |
      | Touch7_N-LANG_CD= NE                                     | 6        |
      | Touch7_N-LANG_CD= NULL                                   | 6        |
      | Touch7_N-Marketable_F = N                                | 6        |
      | Touch7_N-Marketable_F = NULL                             | 6        |
      | Touch7_N-DO_NOT_SOLICIT_F=Y                              | 6        |
      | Touch7_N-Deceased_F=Y                                    | 6        |
      | Touch7_N-cc_vip_ind is 2                                 | 6        |
      | Touch7_N-cc_vip_ind is 9                                 | 6        |
      | Touch7_N-chrgf_cd is not 0                               | 6        |
      | Touch7_N-chrgf_cd is Null                                | 6        |
      | Touch7_N-PRIMARY_ACCT_HOLDER_FLAG is N                   | 6        |
      | Touch7_N-ACCT_SUBSYS_ID is BB                            | 6        |
      | Touch7_N-acct_opn_dt is lessthan 5                       | 4        |
      | Touch7_N-acct_opn_dt is greater than 8                   | 9        |
      | Touch7_N-acct_opn_dt is NULL                             | NULL     |
      | Touch7_N-BLOCK_RSN_CD is Y                               | 6        |
      | Touch7_N-RECL_cd is Y                                    | 6        |
      | Touch7_N-reissu_cd is not NULL                           | 6        |
      | Touch7_N-reissu_cd is not BLANK                          | 6        |
      | Touch7_N-PRIM_EMAIL_ADDR = Null                          | 6        |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN  | 6        |
      | Touch7_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR  | 6        |
      | Touch7_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN   | 6        |
      | Touch7_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR   | 6        |
      | Touch7_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN   | 6        |
      | Touch7_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR   | 6        |
      | Touch7_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN   | 6        |
      | Touch7_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR   | 6        |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_EN | 6        |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_FR | 6        |
      | Touch7_N-src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN | 6        |
      | Touch7_N-src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_FR | 6        |
      | Touch7_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_EN | 6        |
      | Touch7_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_FR | 6        |
      | Touch7_N-src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN | 6        |
      | Touch7_N-src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_FR | 6        |
      | Touch7_N-src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN  | 6        |
      | Touch7_N-src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_FR | 6        |
      | Touch7_N-src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN | 6        |
      | Touch7_N-src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_FR | 6        |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN | 6        |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_FR | 6        |

