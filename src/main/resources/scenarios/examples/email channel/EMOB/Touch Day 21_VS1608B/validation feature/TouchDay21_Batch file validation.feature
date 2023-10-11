Feature: Batch file validation for EMOB Touch Day 21

#  Properties	          Description	               Mandatory(Y/N)	PegaSource	DatabaseTable	    Database Field	                           Comments
#  .CUST_ID	             Customer ID	                Y	             Database	CUST_DIM	        CIS_CUST_ID
#  .PRIM_EMAIL_ADDR	     Email Address	                Y	             Database	CUST_DIM	        PRIM_EMAIL_ADDR
#  .INDV_TTL_NM	         Individual Title	            N	             Database	CUST_DIM	        INDV_TTL_NM
#  .INDV_FRST_NM	     Individual First Name	        Y	             Database	CUST_DIM	        INDV_FRST_NM
#  .INDV_LAST_NM	     Individual Last Name	        N	             Database	CUST_DIM	        INDV_LAST_NM
#  .LanguageCode	     Language Code	                Y	             Database	CUST_DIM	        LANG_CD	Format:                         Uppercase first letter (i.e. 'E')
#  .OfferExpiry	         Offer expiry date	            N	             Database 	ACCT_DIM	        CLI_OFR_EXP_DT  	                    Earliest expiry from all eligible customer/account. Example: 20200506 (need to remove dashes
#                               +
#                           Strategy
#  Offer Code	         OfferID (pyName)	            Y	             Action	    pyName	            Last 4 digits (remove 'CIE')
#  Campaign Code	     Campaign code	                Y	             Action	    Campaign Code
#  .CreativeID	         CreativeID	                    Y	             Action  	Creative ID		                                            Default will be from Action. Strategy can overwrite if there is segmentation logic.
#                           or
#                         Strategy
#  .pxInteractionID	     Pega's Interaction ID	        Y	             Strategy	Foundation
#  Response tracking code Pega's Response tracking code	Y	             Strategy	Foundation	        InteractionID+'_'pyName
#  Mail ID	             Mail ID	                    N	             Strategy	Unique Number		                                        Need to be the same as DM file
#                                                                                      starting from
#                                                                                      2 Alpha characters
#                                                                                      + 6 Numeric values
#  .EmailSpecificText (separated by |): Example:  0001|VCL|RG|XBT23"	Province Code
#  Preference	Preference Category - CUST_DIM column name

  @EMOB @EMOBTouchDay21_BatchFile_Positive_Validation_TestData_Part1 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#33
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch Day-21_VS1608B_EMAIL Validate batch file details against database and pega for Positive test cases Part-1
    Given load data from "EMOBTouch21" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Latest EMOB offer details in batch file against database and pega
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

  @EMOB @EMOBTouchDay21_BatchFile_Positive_Validation_TestData_Part2 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#32
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch Day-21_VS1608B_EMAIL Validate batch file details against database and pega for Positive test cases Part-2
    Given load data from "EMOBTouch21" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Latest EMOB offer details in batch file against database and pega
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

  @EMOB @EMOBTouchDay21_BatchFile_Positive_Validation_TestData_Part_3 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#35
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch Day-21_VS1608B_EMAIL Validate batch file details against database and pega for Positive test cases Part 3
    Given load data from "EMOBTouch21" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Latest EMOB offer details in batch file against database and pega
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

  @EMOB @EMOBTouchDay21_BatchFile_Positive_Validation_TestData_Part_4 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#40
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch Day-21_VS1608B_EMAIL Validate batch file details against database and pega for Positive test cases Part 4
    Given load data from "EMOBTouch21" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Latest EMOB offer details in batch file against database and pega
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

  @EMOB @EMOBTouchDay21_BatchFile_Negative_Validation_Part_1 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#34
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch Day-21_VS1608B_EMAIL Validate batch file details against database and pega for Negative test cases Part1
    Given load data from "EMOBTouch21" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    Then validate EMOB offer details should not display in batch file
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

  @EMOB @EMOBTouchDay21_BatchFile_Negative_Validation_Part_2 @Workstream-4 @EMAIL @VS1608B @AUTOTESTTOTAL#21
    @2453 @4963 @4962 @4961 @4960 @4959 @4750 @2464 @2463 @2462 @2461
    @2460 @2459 @2458 @2457 @2456 @2454 @2453
  Scenario Outline: EMOB Touch Day-21_VS1608B_EMAIL Validate batch file details against database and pega for Negative test cases Part 2
    Given load data from "EMOBTouch21" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    Then validate EMOB offer details should not display in batch file
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
