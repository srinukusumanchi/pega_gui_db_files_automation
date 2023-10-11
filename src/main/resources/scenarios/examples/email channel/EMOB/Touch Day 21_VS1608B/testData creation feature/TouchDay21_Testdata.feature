@Touch21_TestDataCreation
Feature: Test data creation for EMOB  Touch Day 21
#  Name:	EMOB Notification - Default Card Notification
#  Code:	VS1608B - Default Card
#  Issue: 	Engagement
#  Group:	Unsecured Lending

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


  @EMOB @EMOBTouchDay21_Positive_TestData @Workstream-4 @EMAIL @VS1608B
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch Day 21_EMAIL Create test data for positive test cases
    Given load data from "EMOBTouch21" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
#    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    And write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                        | Acct_Odt |
      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_SelectPay_01 | 21       |
      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_SelectPay_01 | 21       |
      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_SelectPay_01 | 21       |
#      | Touch21_DO_NOT_SOLICIT_F=NULL                                  | 21       |
#      | Touch21_EMPLOYEE_STAFF_F=Null                                  | 21       |
#      | Touch21_Cust.age_Equal to 18                                   | 21       |
#      | Touch21_Cust.age_greater than 18                               | 21       |
#      | Touch21_cc_vip_ind is NULL                                     | 21       |
#      | Touch21_MK_CC_INFO_ACCTS_EMAIL =NULL                           | 21       |
#      | Touch21_MK_CC_INFO_ACCTS_EMAIL =Y                              | 21       |
#      | Touch21_LANG_CD= E                                             | 21       |
#      | Touch21_LANG_CD= EN                                            | 21       |
#      | Touch21_LANG_CD= F                                             | 21       |
#      | Touch21_LANG_CD= FR                                            | 21       |
#      | Touch21_LANG_Code_usage= e                                     | 21       |
#      | Touch21_LANG_Code_usage= en                                    | 21       |
#      | Touch21_LANG_Code_usage= f                                     | 21       |
#      | Touch21_LANG_Code_usage= fr                                    | 21       |
#      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN        | 21       |
      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN         | 21       |
#      | Touch21_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN         | 21       |
#      | Touch21_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN         | 21       |
#      | Touch21_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN         | 21       |
#      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN         | 21       |
#      | Touch21_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_SelectPay | 21       |
#      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN        | 21       |
#      | Touch21_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_SelectPay | 21       |
#      | Touch21_acct_opn_dt = 21 days                                  | 21       |
#      | Touch21_acct_opn_dt = 24 days                                  | 24       |
#      | Touch21_acct_opn_dt is >=21days and <=24days                   | 22       |
#      | Touch21_BLOCK_RSN_CD and RECL_CD is BLANK                      | 21       |
#      | Touch21_BLOCK_RSN_CD and RECL_CD is NULL                       | 21       |
#      | Touch21_BLOCK_RSN_CD and RECL_CD is XH                         | 21       |
#      | Touch21_BLOCK_RSN_CD and RECL_CD is  C                         | 21       |

  @EMOB @EMOBTouchDay21_Negative_TestData @Workstream-4 @EMAIL @VS1608B
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch Day 21_EMAIL Create test data for negative test cases
    Given load data from "EMOBTouch21" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
#    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    And write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                   | Acct_Odt |
#      | N-Touch21_MK_CC_INFO_ACCTS_EMAIL =N                                  | 21       |
#      | Touch21_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN             | 21       |
#      | Touch21_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR             | 21       |
#      | Touch21_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN              | 21       |
#      | Touch21_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR              | 21       |
#      | Touch21_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN              | 21       |
#      | Touch21_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR              | 21       |
#      | Touch21_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN              | 21       |
#      | Touch21_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR              | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_PBP_STAT_CD = P          | 21       |
      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_FICO_SCORE < 660 | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_NF_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_ZZ_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SS_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RG_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_NF_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_DM_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_RG_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_NF_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VCL_SV_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VLR_RC_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VFF_TR_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_CC_SCNRY_CUST_ID != NULL | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_PRIM_PROV_CD = QC        | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_PBP_STAT_CD = A          | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_PBP_STAT_CD = P          | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_FICO_SCORE < 660         | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_TOT_DLQNT_AMT = 1        | 21       |
#      | N-Touch21_src_sys_prd_cd = VGD_RG_SelectPay_TOT_DLQNT_AMT > 1        | 21       |
#      | Touch21_N-CUST_TP_CD=Non_PSNL                                        | 21       |
#      | Touch21_N-CUST_TP_CD=NULL                                            | 21       |
#      | Touch21_N-PRIM_CNTRY_CD=US                                           | 21       |
#      | Touch21_N-PRIM_CNTRY_CD=NULL                                         | 21       |
#      | Touch21_N-PRIM_PROV_CD=NULL                                          | 21       |
#      | Touch21_N-VLD_EMAIL_F =N                                             | 21       |
#      | Touch21_N-DO_NOT_EMAIL_F=Y                                           | 21       |
#      | Touch21_N-DO_NOT_EMAIL_F=NULL                                        | 21       |
#      | Touch21_N-Cust.age_Less than 18                                      | 21       |
#      | Touch21_N-Cust.age = NULL                                            | 21       |
#      | Touch21_N-INDV_FRST_NM is NULL                                       | 21       |
#      | Touch21_N-INDV_LAST_NM is NULL                                       | 21       |
#      | Touch21_N-Prv_Bnk_Ind = Y                                            | 21       |
#      | Touch21_N-Prv_Bnk_Ind = NULL                                         | 21       |
#      | Touch21_N-EMPLOYEE_STAFF_F=Y                                         | 21       |
#      | Touch21_N-LANG_CD= K                                                 | 21       |
#      | Touch21_N-LANG_CD= NE                                                | 21       |
#      | Touch21_N-LANG_CD= NULL                                              | 21       |
#      | Touch21_N-Marketable_F = N                                           | 21       |
#      | Touch21_N-Marketable_F = NULL                                        | 21       |
#      | Touch21_N-DO_NOT_SOLICIT_F=Y                                         | 21       |
#      | Touch21_N-Deceased_F=Y                                               | 21       |
#      | Touch21_N-Deceased_F=NULL                                            | 21       |
#      | Touch21_N-cc_vip_ind is 2                                            | 21       |
#      | Touch21_N-cc_vip_ind is 9                                            | 21       |
#      | Touch21_N-chrgf_cd is not 0                                          | 21       |
#      | Touch21_N-chrgf_cd is Null                                           | 21       |
#      | Touch21_N-PRIMARY_ACCT_HOLDER_FLAG is N                              | 21       |
#      | Touch21_N-PRIMARY_ACCT_HOLDER_FLAG is NULL                           | 21       |
#      | Touch21_N-ACCT_SUBSYS_ID is BB                                       | 21       |
#      | Touch21_N-acct_opn_dt is lessthan 21                                 | 20       |
#      | Touch21_N-acct_opn_dt is greater than 24                             | 25       |
#      | Touch21_N-acct_opn_dt is NULL                                        | NULL     |
#      | Touch21_N-BLOCK_RSN_CD is Y                                          | 21       |
#      | Touch21_N-RECL_cd is Y                                               | 21       |
#      | Touch21_N-reissu_cd is not NULL                                      | 21       |
#      | Touch21_N-reissu_cd is not BLANK                                     | 21       |
#      | Touch21_N-BLOCK_RSN_CD = A and RECL_CD = B                           | 21       |
#      | Touch21_N-BLOCK_RSN_CD = BLANK and RECL_CD = H                       | 21       |
#      | Touch21_N-BLOCK_RSN_CD = C and RECL_CD = BLANK                       | 21       |
#      | Touch21_N-BLOCK_RSN_CD = C and RECL_CD = NULL                        | 21       |
#      | Touch21_N- BLOCK_RSN_CD = X and RECL_CD = BLANK                      | 21       |
#      | Touch21_N- BLOCK_RSN_CD = X and RECL_CD = NULL                       | 21       |
#      | Touch21_N- BLOCK_RSN_CD = BLANK and RECL_CD = H                      | 21       |
#      | Touch21_N- BLOCK_RSN_CD = NULL and RECL_CD = H                       | 21       |
#      | Touch21_N-PRIM_EMAIL_ADDR = Null                                     | 21       |
#      | N-Touch21_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_SelectPay      | 21       |
#      | N-Touch21_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_SelectPay    | 21       |
#      | N-Touch21_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_SelectPay    | 21       |
#      | N-Touch21_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_SelectPay     | 21       |
#      | N-Touch21_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_SelectPay     | 21       |
