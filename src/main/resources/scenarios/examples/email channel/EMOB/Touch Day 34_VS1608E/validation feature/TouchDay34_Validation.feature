Feature: Validation for EMOB Touch 34

  #  Name:	EMOB Notification - Digital Banking Email
#  Code:	VS1608E
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  EMOB Digital Banking Email 	4798
  @EMOB @EMOBTouchDay34_Positive_Validation @4798 @Workstream-4 @EMAIL @VS1608E
  Scenario Outline: EMOB Touch-34_VS1608E_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "EMOB" excel sheet
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
      | Test cases                                               |
      | Touch34_DO_NOT_SOLICIT_F=NULL                             |
      | Touch34_EMPLOYEE_STAFF_F=Null                            |
      | Touch34_Cust.age_Equal to 18                             |
      | Touch34_Cust.age_greater than 18                         |
      | Touch34_cc_vip_ind is NULL                               |
      | Touch34_LANG_CD= E                                       |
      | Touch34_LANG_CD= EN                                      |
      | Touch34_LANG_CD= F                                       |
      | Touch34_LANG_CD= FR                                      |
      | Touch34_LANG_Code_usage= e                               |
      | Touch34_LANG_Code_usage= en                              |
      | Touch34_LANG_Code_usage= f                               |
      | Touch34_LANG_Code_usage= fr                              |
      | Touch34_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_EN  |
      | Touch34_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = NF_FR  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_FR  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_EN  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SS_FR  |
      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN  |
      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_FR  |
      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN  |
      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_FR  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_FR  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_FR  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_FR  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_EN  |
      | Touch34_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = SV_FR  |
      | Touch34_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN  |
      | Touch34_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_FR  |
      | Touch34_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN   |
      | Touch34_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_FR  |
      | Touch34_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN   |
      | Touch34_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_FR |
      | Touch34_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN   |
      | Touch34_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_FR |
      | Touch34_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN   |
      | Touch34_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_FR   |
      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN  |
      | Touch34_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_FR  |
      | Touch34_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN   |
      | Touch34_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_FR  |
      | Touch34_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN  |
      | Touch34_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_FR  |
      | Touch34_acct_opn_dt = 34days                             |
      | Touch34_acct_opn_dt =37 days                             |
      | Touch34_acct_opn_dt is >=34days and <=37days             |
      | Touch34_BLOCK_RSN_CD and RECL_CD is BLANK                |
      | Touch34_BLOCK_RSN_CD and RECL_CD is NULL                 |
      | Touch34_BLOCK_RSN_CD and RECL_CD is XH                   |
      | Touch34_BLOCK_RSN_CD and RECL_CD is  C                   |


  @EMOB @EMOBTouchDay34_Negative_Validation @4798 @Workstream-4 @EMAIL @VS1608E
  Scenario Outline:EMOB Touch-34_VS1608E_EMAIL Validate offer details are not displayed against IH for Negative test cases
    Given load data from "EMOB" excel sheet
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
      | Touch34_N-CUST_TP_CD=Non_PSNL                            |
      | Touch34_N-CUST_TP_CD=NULL                                |
      | Touch34_N-PRIM_CNTRY_CD=US                               |
      | Touch34_N-PRIM_CNTRY_CD=NULL                             |
      | Touch34_N-PRIM_PROV_CD=NULL                              |
      | Touch34_N-VLD_EMAIL_F =N                                 |
      | Touch34_N-DO_NOT_EMAIL_F=Y                               |
      | Touch34_N-DO_NOT_EMAIL_F=NULL                            |
      | Touch34_N-Cust.age_Less than 18                          |
      | Touch34_N-Cust.age = NULL                                |
      | Touch34_N-INDV_FRST_NM is NULL                           |
      | Touch34_N-INDV_LAST_NM is NULL                           |
      | Touch34_N-Prv_Bnk_Ind = Y                                |
      | Touch34_N-Prv_Bnk_Ind = NULL                             |
      | Touch34_N-EMPLOYEE_STAFF_F=Y                             |
      | Touch34_N-LANG_CD= K                                     |
      | Touch34_N-LANG_CD= NE                                    |
      | Touch34_N-LANG_CD= NULL                                  |
      | Touch34_N-Marketable_F = N                               |
      | Touch34_N-Marketable_F = NULL                            |
      | Touch34_N-DO_NOT_SOLICIT_F=Y                             |
      | Touch34_N-Deceased_F=Y                                   |
      | Touch34_N-cc_vip_ind is 2                                |
      | Touch34_N-cc_vip_ind is 9                                |
      | Touch34_N-chrgf_cd is not 0                              |
      | Touch34_N-chrgf_cd is Null                               |
      | Touch34_N-PRIMARY_ACCT_HOLDER_FLAG is N                  |
      | Touch34_N-ACCT_SUBSYS_ID is BB                           |
      | Touch34_N-acct_opn_dt is lessthan 34                     |
      | Touch34_N-acct_opn_dt is greater than 37                 |
      | Touch34_N-acct_opn_dt is NULL                            |
      | Touch34_N-BLOCK_RSN_CD is Y                              |
      | Touch34_N-RECL_cd is Y                                   |
      | Touch34_N-reissu_cd is not NULL                          |
      | Touch34_N-reissu_cd is not BLANK                         |
      |Touch34_N-BLOCK_RSN_CD = A and RECL_CD = B       |
      |Touch34_N-BLOCK_RSN_CD = BLANK and RECL_CD = H   |
      |Touch34_N-BLOCK_RSN_CD = C and RECL_CD = BLANK   |
      |Touch34_N-BLOCK_RSN_CD = C and RECL_CD = NULL    |
      |Touch34_N- BLOCK_RSN_CD = X and RECL_CD = BLANK  |
      |Touch34_N- BLOCK_RSN_CD = X and RECL_CD = NULL   |
      |Touch34_N- BLOCK_RSN_CD = BLANK and RECL_CD = H  |
      |Touch34_N- BLOCK_RSN_CD = NULL and RECL_CD = H   |
      | Touch34_N-PRIM_EMAIL_ADDR = Null                         |
      | Touch34_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN |
      | Touch34_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR |
      | Touch34_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN  |
      | Touch34_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR  |
      | Touch34_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN  |
      | Touch34_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR  |
      | Touch34_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN  |
      | Touch34_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR  |

