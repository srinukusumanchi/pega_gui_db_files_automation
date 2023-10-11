Feature: Validation for EMOB Touch Day 21

  
#  Name:	EMOB Notification - Default Card Notification
#  Code:	VS1608B
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Default Card - ScotiaGold No Fee	2453
#  Default Card - SCENE VISA Card Regular	2454
#  Default Card - SCENE VISA Card Student	2456
#  Default Card - Value VISA Regular	2457
#  Default Card - Value VISA No Fee	2458
#  Default Card - Scotia Momentum VISA Infinite	2459
#  Default Card - Scotia Momentum VISA Regular	2460
#  Default Card - Scotia Momentum No-Fee VISA	2461
#  Default Card - L'earn VISA Card Student	2462
#  Default Card - GM Visa Card (Classic)	2463
#  Default Card - GM Visa Infinite Card	2464
#  Default Card - Scotiabank Gold Amex	4750
#  Default Card - Scotiabank Amex	4959
#  Default Card - Scotiabank Platinum Amex	4960
#  Default Card - Scotiabank Rewards Visa	4961
#  Default Card - Scotiabank Passport Visa Infinite	4962
#  Default Card - ScotiaGold Passport VISA	4963

  @EMOB @EMOBTouchDay21_Validation_TestData_Part_1 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#33
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch-21_VS1608B_EMAIL Validate offer details against IH for Positive test cases Part1
    Given load data from "EMOBTouch21" excel sheet
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
      | Test cases                                                        |
      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_SelectPay_01 |
      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_SelectPay_01 |
      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_SelectPay_01 |
#      | Touch21_DO_NOT_SOLICIT_F=NULL                                     |
#      | Touch21_EMPLOYEE_STAFF_F=Null                                     |
#      | Touch21_Cust.age_Equal to 18                                      |
#      | Touch21_Cust.age_greater than 18                                  |
#      | Touch21_cc_vip_ind is NULL                                        |
#      | Touch21_MK_CC_INFO_ACCTS_EMAIL =NULL                              |
#      | Touch21_MK_CC_INFO_ACCTS_EMAIL =Y                                 |
#      | Touch21_LANG_CD= E                                                |
#      | Touch21_LANG_CD= EN                                               |
#      | Touch21_LANG_CD= F                                                |
#      | Touch21_LANG_CD= FR                                               |
#      | Touch21_LANG_Code_usage= e                                        |
#      | Touch21_LANG_Code_usage= en                                       |
#      | Touch21_LANG_Code_usage= f                                        |
#      | Touch21_LANG_Code_usage= fr                                       |
#      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_EN           |
#      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_SelectPay    |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN           |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_SelectPay    |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_EN           |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_SelectPay    |
#      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN           |
#      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_SelectPay    |
#      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN           |
#      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_SelectPay    |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN           |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_SelectPay    |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN           |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_SelectPay    |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN           |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_SelectPay    |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_EN           |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_SelectPay    |

  @EMOB @EMOBTouchDay21_Validation_TestData_Part_2 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#32
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch-21_VS1608B_EMAIL Validate offer details against IH for Positive test cases Part 2
    Given load data from "EMOBTouch21" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                                                           |
      | Touch21_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN              |
      | Touch21_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN               |
      | Touch21_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN               |
      | Touch21_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN               |
      | Touch21_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN               |
      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN              |
      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_SelectPay       |
      | Touch21_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN               |
      | Touch21_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_SelectPay       |
      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN              |
      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_SelectPay       |
      | Touch21_acct_opn_dt = 21 days                                        |
      | Touch21_acct_opn_dt = 24 days                                        |
      | Touch21_acct_opn_dt is >=21days and <=24days                         |
      | Touch21_BLOCK_RSN_CD and RECL_CD is BLANK                            |
      | Touch21_BLOCK_RSN_CD and RECL_CD is NULL                             |
      | Touch21_BLOCK_RSN_CD and RECL_CD is XH                               |
      | Touch21_BLOCK_RSN_CD and RECL_CD is  C                               |
      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_TOT_DLQNT_AMT > 1        |

  @EMOB @EMOBTouchDay21_Validation_TestData_Part_3 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#35
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch-21_VS1608B_EMAIL Validate offer details against IH for Positive test cases part 3
    Given load data from "EMOBTouch21" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                                                           |
      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_TOT_DLQNT_AMT > 1        |


  @EMOB @EMOBTouchDay21_Validation_TestData_Part_4 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#40
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch-21_VS1608B_EMAIL Validate offer details against IH for Positive test cases Part 4
    Given load data from "EMOBTouch21" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                                                           |
      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_CC_SCNRY_CUST_ID != NULL |
      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_PRIM_PROV_CD = QC        |
      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_PBP_STAT_CD = A          |
      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_PBP_STAT_CD = P          |
      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_FICO_SCORE < 660         |
      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_TOT_DLQNT_AMT = 1        |
      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_TOT_DLQNT_AMT > 1        |
      | N-Touch21_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_SelectPay      |
      | N-Touch21_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_SelectPay    |
      | N-Touch21_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_SelectPay    |
      | N-Touch21_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_SelectPay     |
      | N-Touch21_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_SelectPay     |


  @EMOB @EMOBTouchDay21_Negative_Validation_Part_1 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#34
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline:EMOB Touch-21_VS1608B_EMAIL Validate offer details are not displayed against IH for Negative test cases Part 1
    Given load data from "EMOBTouch21" excel sheet
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
      | N-Touch21_MK_CC_INFO_ACCTS_EMAIL =N                      |
      | Touch21_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN |
      | Touch21_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR |
      | Touch21_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN  |
      | Touch21_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR  |
      | Touch21_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN  |
      | Touch21_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR  |
      | Touch21_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN  |
      | Touch21_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR  |
      | Touch21_N-CUST_TP_CD=Non_PSNL                            |
      | Touch21_N-CUST_TP_CD=NULL                                |
      | Touch21_N-PRIM_CNTRY_CD=US                               |
      | Touch21_N-PRIM_CNTRY_CD=NULL                             |
      | Touch21_N-PRIM_PROV_CD=NULL                              |
      | Touch21_N-VLD_EMAIL_F =N                                 |
      | Touch21_N-DO_NOT_EMAIL_F=Y                               |
      | Touch21_N-DO_NOT_EMAIL_F=NULL                            |
      | Touch21_N-Cust.age_Less than 18                          |
      | Touch21_N-Cust.age = NULL                                |
      | Touch21_N-INDV_FRST_NM is NULL                           |
      | Touch21_N-INDV_LAST_NM is NULL                           |
      | Touch21_N-Prv_Bnk_Ind = Y                                |
      | Touch21_N-Prv_Bnk_Ind = NULL                             |
      | Touch21_N-EMPLOYEE_STAFF_F=Y                             |
      | Touch21_N-LANG_CD= K                                     |
      | Touch21_N-LANG_CD= NE                                    |
      | Touch21_N-LANG_CD= NULL                                  |
      | Touch21_N-Marketable_F = N                               |
      | Touch21_N-Marketable_F = NULL                            |
      | Touch21_N-DO_NOT_SOLICIT_F=Y                             |
      | Touch21_N-Deceased_F=Y                                   |
      | Touch21_N-Deceased_F=NULL                                |
      | Touch21_N-cc_vip_ind is 2                                |
      | Touch21_N-cc_vip_ind is 9                                |

  @EMOB @EMOBTouchDay21_Negative_Validation_Part_2 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#21
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline:EMOB Touch-21_VS1608B_EMAIL Validate offer details are not displayed against IH for Negative test cases Part 2
    Given load data from "EMOBTouch21" excel sheet
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
      | Test cases                                      |
      | Touch21_N-chrgf_cd is not 0                     |
      | Touch21_N-chrgf_cd is Null                      |
      | Touch21_N-PRIMARY_ACCT_HOLDER_FLAG is N         |
      | Touch21_N-PRIMARY_ACCT_HOLDER_FLAG is NULL      |
      | Touch21_N-ACCT_SUBSYS_ID is BB                  |
      | Touch21_N-acct_opn_dt is lessthan 21            |
      | Touch21_N-acct_opn_dt is greater than 24        |
      | Touch21_N-acct_opn_dt is NULL                   |
      | Touch21_N-BLOCK_RSN_CD is Y                     |
      | Touch21_N-RECL_cd is Y                          |
      | Touch21_N-reissu_cd is not NULL                 |
      | Touch21_N-reissu_cd is not BLANK                |
      | Touch21_N-BLOCK_RSN_CD = A and RECL_CD = B      |
      | Touch21_N-BLOCK_RSN_CD = BLANK and RECL_CD = H  |
      | Touch21_N-BLOCK_RSN_CD = C and RECL_CD = BLANK  |
      | Touch21_N-BLOCK_RSN_CD = C and RECL_CD = NULL   |
      | Touch21_N- BLOCK_RSN_CD = X and RECL_CD = BLANK |
      | Touch21_N- BLOCK_RSN_CD = X and RECL_CD = NULL  |
      | Touch21_N- BLOCK_RSN_CD = BLANK and RECL_CD = H |
      | Touch21_N- BLOCK_RSN_CD = NULL and RECL_CD = H  |
      | Touch21_N-PRIM_EMAIL_ADDR = Null                |
