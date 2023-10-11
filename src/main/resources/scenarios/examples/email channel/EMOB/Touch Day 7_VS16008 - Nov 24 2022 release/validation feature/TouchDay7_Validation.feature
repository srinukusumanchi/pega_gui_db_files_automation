@EMOB_Touch7_IH_Validation
Feature: Validation for EMOB Touch 7

  
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
  @EMOB @EMOBTouchDay7_Positive_IH_Validation @Workstream-4 @EMAIL @VS16008
    @2432 @2437 @2438 @2441 @2444 @2445 @2446 @2447 @2448 @2449
    @2450 @4749 @4954 @4955 @4956 @4957 @4958
  Scenario Outline: EMOB Touch-7_VS16008_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "EMOBTouch7" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
    Examples:
      | Test cases                                              |
      | Touch7_Cust.age_Equal to 18                             |
      | Touch7_Cust.age_greater than 18                         |
      | Touch7_cc_vip_ind is NULL                               |
      | Touch7_LANG_CD= E                                       |
      | Touch7_LANG_CD= EN                                      |
      | Touch7_LANG_CD= F                                       |
      | Touch7_LANG_CD= FR                                      |
      | Touch7_LANG_Code_usage= e                               |
      | Touch7_LANG_Code_usage= en                              |
      | Touch7_LANG_Code_usage= f                               |
      | Touch7_LANG_Code_usage= fr                              |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN  |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_FR  |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_EN  |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_FR  |
      | Touch7_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN  |
      | Touch7_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_FR  |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN  |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_FR  |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN  |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_FR  |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN  |
      | Touch7_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_FR  |
      | Touch7_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN   |
      | Touch7_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_FR |
      | Touch7_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN   |
      | Touch7_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_FR |
      | Touch7_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN   |
      | Touch7_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_FR   |
      | Touch7_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN   |
      | Touch7_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_FR  |
      | Touch7_src_sys_prd_cd = VUS and SRC_SUB_PRD_CD = RG_EN  |
      | Touch7_src_sys_prd_cd = VUS and SRC_SUB_PRD_CD = RG_FR  |
#      | Touch7_src_sys_prd_cd = STD and SRC_SUB_PRD_CD = MC_EN  |
#      | Touch7_src_sys_prd_cd = STD and SRC_SUB_PRD_CD = MC_FR  |
      | Touch7_acct_opn_dt =  5 days                            |
      | Touch7_acct_opn_dt = 8 days                             |
      | Touch7_acct_opn_dt is >=5 days and <=8 days             |


  @EMOB @EMOBTouchDay7_Negative_IH_Validation @Workstream-4 @EMAIL @VS16008
    @2432 @2437 @2438 @2441 @2444 @2445 @2446 @2447 @2448 @2449
    @2450 @4749 @4954 @4955 @4956 @4957 @4958
  Scenario Outline:EMOB Touch-7_VS16008_EMAIL Validate offer details are not displayed against IH for Negative test cases
    Given load data from "EMOBTouch7" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                               |
      | Touch7_N-CUST_TP_CD=Non_PSNL                             |
      | Touch7_N-CUST_TP_CD=NULL                                 |
      | Touch7_N-PRIM_CNTRY_CD=US                                |
      | Touch7_N-PRIM_CNTRY_CD=NULL                              |
      | Touch7_N-PRIM_PROV_CD=NULL                               |
      | Touch7_N-VLD_EMAIL_F =N                                  |
      | Touch7_N-DO_NOT_EMAIL_F=Y                                |
      | Touch7_N-DO_NOT_EMAIL_F=NULL                             |
      | Touch7_N-Cust.age_Less than 18                           |
      | Touch7_N-Cust.age = NULL                                 |
      | Touch7_N-INDV_FRST_NM is NULL                            |
      | Touch7_N-INDV_LAST_NM is NULL                            |
      | Touch7_N-LANG_CD= K                                      |
      | Touch7_N-LANG_CD= NE                                     |
      | Touch7_N-LANG_CD= NULL                                   |
      | Touch7_N-Marketable_F = N                                |
      | Touch7_N-Marketable_F = NULL                             |
      | Touch7_N-DO_NOT_SOLICIT_F=Y                              |
      | Touch7_N-Deceased_F=Y                                    |
      | Touch7_N-cc_vip_ind is 2                                 |
      | Touch7_N-cc_vip_ind is 9                                 |
      | Touch7_N-chrgf_cd is not 0                               |
      | Touch7_N-chrgf_cd is Null                                |
      | Touch7_N-PRIMARY_ACCT_HOLDER_FLAG is N                   |
      | Touch7_N-ACCT_SUBSYS_ID is BB                            |
      | Touch7_N-acct_opn_dt is lessthan 5                       |
      | Touch7_N-acct_opn_dt is greater than 8                   |
      | Touch7_N-acct_opn_dt is NULL                             |
      | Touch7_N-reissu_cd is not NULL                           |
      | Touch7_N-reissu_cd is not BLANK                          |
      | Touch7_N-PRIM_EMAIL_ADDR = Null                          |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN  |
      | Touch7_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR  |
      | Touch7_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN   |
      | Touch7_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR   |
      | Touch7_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN   |
      | Touch7_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR   |
      | Touch7_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN   |
      | Touch7_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR   |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_EN |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_FR |
      | Touch7_N-src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN |
      | Touch7_N-src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_FR |
      | Touch7_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_EN |
      | Touch7_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_FR |
      | Touch7_N-src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN |
      | Touch7_N-src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_FR |
      | Touch7_N-src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN  |
      | Touch7_N-src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_FR |
      | Touch7_N-src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN |
      | Touch7_N-src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_FR |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN |
      | Touch7_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_FR |
