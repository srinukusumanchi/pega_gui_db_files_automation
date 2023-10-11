@EMOB_Touch7_Batch_Validation
Feature: Batch file validation for EMOB Touch Day 7

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

  @EMOB @EMOBTouchDay7_BatchFile_Positive_Validation_Nov242022 @Workstream-4 @EMAIL @VS16008
    @2432 @2437 @2438 @2441 @2444 @2445 @2446 @2447 @2448 @2449
    @2450 @4749 @4954 @4955 @4956 @4957 @4958
  Scenario Outline: EMOB Touch Day-7_VS16008_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "EMOBTouch7" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "emob" extract file with batch "ProvCode;ProductCode;SubProductCode;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB Welcome offer details in batch file against database and pega
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

