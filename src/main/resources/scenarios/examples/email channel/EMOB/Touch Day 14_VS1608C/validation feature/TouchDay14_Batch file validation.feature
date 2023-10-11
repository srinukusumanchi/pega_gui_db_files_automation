Feature: Batch file validation for EMOB Touch Day 14

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
#  .EmailSpecificText	    Email Specific Text (Name / Value pair)
#  Example: “AcctNum:” + .ACCT_NUM + “|LastName:”+”.INDV_LAST_NM+”|AcctBal:”+.ACCT_BAL_AMT

  @EMOB @EMOBTouchDay14_BatchFile_Positive_Validation @Workstream-4 @EMAIL @VS1608C
    @4751 @4752 @4753 @4754 @4755 @4756 @4757 @4758 @4759 @4760
    @4761 @4762 @4763 @4764 @4765 @4766 @4884
  Scenario Outline: EMOB Touch Day-14_VS1608C_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "EMOB" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB offer details in batch file against database and pega
    Examples:
      | Test cases                                               |
      | Touch14_DO_NOT_SOLICIT_F=NULL                            |
      | Touch14_EMPLOYEE_STAFF_F=Null                            |
      | Touch14_Cust.age_Equal to 18                             |
      | Touch14_Cust.age_greater than 18                         |
      | Touch14_cc_vip_ind is NULL                               |
      | Touch14_LANG_CD= E                                       |
      | Touch14_LANG_CD= EN                                      |
      | Touch14_LANG_CD= F                                       |
      | Touch14_LANG_CD= FR                                      |
      | Touch14_LANG_Code_usage= e                               |
      | Touch14_LANG_Code_usage= en                              |
      | Touch14_LANG_Code_usage= f                               |
      | Touch14_LANG_Code_usage= fr                              |
      | Touch14_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_EN  |
      | Touch14_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_FR  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_FR  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_EN  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_FR  |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN  |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_FR  |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN  |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_FR  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_FR  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_FR  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_FR  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_EN  |
      | Touch14_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_FR  |
      | Touch14_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN  |
      | Touch14_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_FR  |
      | Touch14_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN   |
      | Touch14_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_FR  |
      | Touch14_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN   |
      | Touch14_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_FR |
      | Touch14_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN   |
      | Touch14_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_FR |
      | Touch14_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN   |
      | Touch14_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_FR   |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN  |
      | Touch14_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_FR  |
      | Touch14_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN   |
      | Touch14_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_FR  |
      | Touch14_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN  |
      | Touch14_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_FR  |
      | Touch14_acct_opn_dt = 14 days                            |
      | Touch14_acct_opn_dt = 17 days                            |
      | Touch14_acct_opn_dt is >=14 days and <=17 days           |
      | Touch14_BLOCK_RSN_CD and RECL_CD is BLANK                |
      | Touch14_BLOCK_RSN_CD and RECL_CD is NULL                 |
      | Touch14_BLOCK_RSN_CD and RECL_CD is XH                   |
      | Touch14_BLOCK_RSN_CD and RECL_CD is  C                   |
      | Touch14_CRD_ACTIVATION_STATE Leading Spaces              |
      | Touch14_CRD_ACTIVATION_STATE Trailing Spaces             |


  @EMOB @EMOBTouchDay14_BatchFile_Negative_Validation @Workstream-4 @EMAIL @VS1608C
    @4751 @4752 @4753 @4754 @4755 @4756 @4757 @4758 @4759 @4760
    @4761 @4762 @4763 @4764 @4765 @4766 @4884
  Scenario Outline: EMOB Touch Day-14_VS1608C_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "EMOB" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    Then validate EMOB offer details should not display in batch file
    Examples:
      | Test cases                                               |
      | Touch14_N-CUST_TP_CD=Non_PSNL                            |
      | Touch14_N-CUST_TP_CD=NULL                                |
      | Touch14_N-PRIM_CNTRY_CD=US                               |
      | Touch14_N-PRIM_CNTRY_CD=NULL                             |
      | Touch14_N-PRIM_PROV_CD=NULL                              |
      | Touch14_N-VLD_EMAIL_F =N                                 |
      | Touch14_N-DO_NOT_EMAIL_F=Y                               |
      | Touch14_N-DO_NOT_EMAIL_F=NULL                            |
      | Touch14_N-Cust.age_Less than 18                          |
      | Touch14_N-Cust.age = NULL                                |
      | Touch14_N-INDV_FRST_NM is NULL                           |
      | Touch14_N-INDV_LAST_NM is NULL                           |
      | Touch14_N-Prv_Bnk_Ind = Y                                |
      | Touch14_N-Prv_Bnk_Ind = NULL                             |
      | Touch14_N-EMPLOYEE_STAFF_F=Y                             |
      | Touch14_N-LANG_CD= K                                     |
      | Touch14_N-LANG_CD= NE                                    |
      | Touch14_N-LANG_CD= NULL                                  |
      | Touch14_N-Marketable_F = N                               |
      | Touch14_N-Marketable_F = NULL                            |
      | Touch14_N-DO_NOT_SOLICIT_F=Y                             |
      | Touch14_N-Deceased_F=Y                                   |
      | Touch14_N-cc_vip_ind is 2                                |
      | Touch14_N-cc_vip_ind is 9                                |
      | Touch14_N-chrgf_cd is not 0                              |
      | Touch14_N-chrgf_cd is Null                               |
      | Touch14_N-PRIMARY_ACCT_HOLDER_FLAG is N                  |
      | Touch14_N-ACCT_SUBSYS_ID is BB                           |
      | Touch14_N-acct_opn_dt is lessthan 14                     |
      | Touch14_N-acct_opn_dt is greater than 17                 |
      | Touch14_N-acct_opn_dt is NULL                            |
      | Touch14_N-BLOCK_RSN_CD is Y                              |
      | Touch14_N-RECL_cd is Y                                   |
      | Touch14_N-reissu_cd is not NULL                          |
      | Touch14_N-reissu_cd is not BLANK                         |
      | Touch14_N-BLOCK_RSN_CD = A and RECL_CD = B               |
      | Touch14_N-BLOCK_RSN_CD = BLANK and RECL_CD = H           |
      | Touch14_N-BLOCK_RSN_CD = C and RECL_CD = BLANK           |
      | Touch14_N-BLOCK_RSN_CD = C and RECL_CD = NULL            |
      | Touch14_N- BLOCK_RSN_CD = X and RECL_CD = BLANK          |
      | Touch14_N- BLOCK_RSN_CD = X and RECL_CD = NULL           |
      | Touch14_N- BLOCK_RSN_CD = BLANK and RECL_CD = H          |
      | Touch14_N- BLOCK_RSN_CD = NULL and RECL_CD = H           |
      | Touch14_N-PRIM_EMAIL_ADDR = Null                         |
      | Touch14_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN |
      | Touch14_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR |
      | Touch14_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN  |
      | Touch14_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR  |
      | Touch14_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN  |
      | Touch14_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR  |
      | Touch14_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN  |
      | Touch14_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR  |
      | Touch14_N-Activation State Name = Activated              |