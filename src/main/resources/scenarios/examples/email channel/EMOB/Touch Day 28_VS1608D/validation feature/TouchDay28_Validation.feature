Feature: Validation for EMOB Touch 28
#  Name:	EMOB Notification Supplementary Email
#  Code:	VS1608D
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  SCENE VISA Card Regular	4784
#  Value VISA Regular	4786
#  Value VISA No Fee	4787
#  Scotia Momentum VISA Infinite	4788
#  Scotia Momentum VISA Regular	4789
#  Scotia Momentum No-Fee VISA	4790
#  GM Visa Card (Classic) 	4791
#  GM Visa Infinite Card 	4792
#  Scotiabank Amex	4793
#  Scotiabank Platinum Amex	4794
#  Scotiabank Gold Amex	4795
#  Scotiabank Rewards Visa	4796
#  Scotiabank Passport Visa Infinite Card	4797
#  ScotiaGold Passport	4885
  @EMOB @EMOBTouchDay28_Positive_Validation @Workstream-4 @EMAIL @VS1608D
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline: EMOB Touch-28_VS1608D_EMAIL Validate offer details against IH for Positive test cases
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
      | Touch28_DO_NOT_SOLICIT_F=NULL                            |
      | Touch28_EMPLOYEE_STAFF_F=Null                            |
      | Touch28_Cust.age_Equal to 18                             |
      | Touch28_Cust.age_greater than 18                         |
      | Touch28_cc_vip_ind is NULL                               |
      | Touch28_LANG_CD= E                                       |
      | Touch28_LANG_CD= EN                                      |
      | Touch28_LANG_CD= F                                       |
      | Touch28_LANG_CD= FR                                      |
      | Touch28_LANG_Code_usage= e                               |
      | Touch28_LANG_Code_usage= en                              |
      | Touch28_LANG_Code_usage= f                               |
      | Touch28_LANG_Code_usage= fr                              |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN  |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_FR  |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN  |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_FR  |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN  |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_FR  |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN  |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_FR  |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN  |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_FR  |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN  |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_FR  |
      | Touch28_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN  |
      | Touch28_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_FR  |
      | Touch28_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN   |
      | Touch28_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_FR  |
      | Touch28_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN   |
      | Touch28_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_FR |
      | Touch28_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN   |
      | Touch28_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_FR |
      | Touch28_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN   |
      | Touch28_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_FR   |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN  |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_FR  |
      | Touch28_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN   |
      | Touch28_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_FR  |
      | Touch28_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN  |
      | Touch28_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_FR  |
      | Touch28_acct_opn_dt = 28 days                            |
      | Touch28_acct_opn_dt =31  days                            |
      | Touch28_acct_opn_dt is >=28 days and <=31 days           |
      | Touch28_BLOCK_RSN_CD and RECL_CD is BLANK                |
      | Touch28_BLOCK_RSN_CD and RECL_CD is NULL                 |
      | Touch28_BLOCK_RSN_CD and RECL_CD is XH                   |
      | Touch28_BLOCK_RSN_CD and RECL_CD is  C                   |
      | Touch28_CRD_ACTIVATION_STATE Leading Spaces              |
      | Touch28_CRD_ACTIVATION_STATE Trailing Spaces             |


  @EMOB @EMOBTouchDay28_Positive_Supp_Validation @Workstream-4 @EMAIL @VS1608D
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline: EMOB Touch-28_VS1608D_EMAIL Validate Supplementary offer details against IH for Positive test cases
    Given load data from "EMOB" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And set cust account relation cid for cust dim cid
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                                                                                                                                                 |
      | Touch28_Primary Card Activated No Supp Card Cust Receive Supp Creative                                                                                     |
      | Touch28_Primary Card Activated Cust Receive Activated Creative                                                                                             |
      | Touch28_One Supp Card and different Activation Status here Customer Skips Supp Card                                                                        |
      | Touch28_One Supp Card and Activation Status is Not Activated here Customer will receive Activation creative                                                |
      | Touch28_One Supp card and Activation status = Activated  here Customer Skips Supp Card                                                                     |
      | Touch28_No Supp Card and Activation Status is Not Activated here Customer will receive Activation creative                                                 |
      | Touch28_No Supp Card and Activation Status is Not Activated here Customer will receive Activation creative_Account_2                                       |
      | Touch28_No Supp Card and Activation Status is Activated here Customer will receive Supp Creative                                                           |
      | Touch28_No Supp Card and Activation Status is Activated here Customer will receive Supp Creative_Account_2                                                 |
      | Touch28_No Supp Card and different Activation Status                                                                                                       |
      | Touch28_No Supp Card and different Activation Status_Account_2                                                                                             |
      | Touch28_Account 1= One Supp Card.  Primary and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated                                   |
      | Touch28_Account 1= One Supp Card.  Primary and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated_Account_2                         |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated                       |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated_Account_2             |
      | Touch28_Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Activated               |
      | Touch28_Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Activated_Account_2     |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Not Activated                   |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Not Activated_Account_2         |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated               |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated_Account_2     |
      | Touch28_Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated           |
      | Touch28_Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated_Account_2 |

  @EMOB @EMOBTouchDay28_Negative_Validation @Workstream-4 @EMAIL @VS1608D
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline:EMOB Touch-28_VS1608D_EMAIL Validate offer details are not displayed against IH for Negative test cases
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
      | Touch28_N-CUST_TP_CD=Non_PSNL                            |
      | Touch28_N-CUST_TP_CD=NULL                                |
      | Touch28_N-PRIM_CNTRY_CD=US                               |
      | Touch28_N-PRIM_CNTRY_CD=NULL                             |
      | Touch28_N-PRIM_PROV_CD=NULL                              |
      | Touch28_N-VLD_EMAIL_F =N                                 |
      | Touch28_N-DO_NOT_EMAIL_F=Y                               |
      | Touch28_N-DO_NOT_EMAIL_F=NULL                            |
      | Touch28_N-Cust.age_Less than 18                          |
      | Touch28_N-Cust.age = NULL                                |
      | Touch28_N-INDV_FRST_NM is NULL                           |
      | Touch28_N-INDV_LAST_NM is NULL                           |
      | Touch28_N-Prv_Bnk_Ind = Y                                |
      | Touch28_N-Prv_Bnk_Ind = NULL                             |
      | Touch28_N-EMPLOYEE_STAFF_F=Y                             |
      | Touch28_N-LANG_CD= K                                     |
      | Touch28_N-LANG_CD= NE                                    |
      | Touch28_N-LANG_CD= NULL                                  |
      | Touch28_N-Marketable_F = N                               |
      | Touch28_N-Marketable_F = NULL                            |
      | Touch28_N-DO_NOT_SOLICIT_F=Y                             |
      | Touch28_N-Deceased_F=Y                                   |
      | Touch28_N-cc_vip_ind is 2                                |
      | Touch28_N-cc_vip_ind is 9                                |
      | Touch28_N-chrgf_cd is not 0                              |
      | Touch28_N-chrgf_cd is Null                               |
      | Touch28_N-PRIMARY_ACCT_HOLDER_FLAG is N                  |
      | Touch28_N-ACCT_SUBSYS_ID is BB                           |
      | Touch28_N-acct_opn_dt is lessthan 28                     |
      | Touch28_N-acct_opn_dt is greater than 31                 |
      | Touch28_N-acct_opn_dt is NULL                            |
      | Touch28_N-BLOCK_RSN_CD is Y                              |
      | Touch28_N-RECL_cd is Y                                   |
      | Touch28_N-reissu_cd is not NULL                          |
      | Touch28_N-reissu_cd is not BLANK                         |
      | Touch28_N-BLOCK_RSN_CD = A and RECL_CD = B               |
      | Touch28_N-BLOCK_RSN_CD = BLANK and RECL_CD = H           |
      | Touch28_N-BLOCK_RSN_CD = C and RECL_CD = BLANK           |
      | Touch28_N-BLOCK_RSN_CD = C and RECL_CD = NULL            |
      | Touch28_N- BLOCK_RSN_CD = X and RECL_CD = BLANK          |
      | Touch28_N- BLOCK_RSN_CD = X and RECL_CD = NULL           |
      | Touch28_N- BLOCK_RSN_CD = BLANK and RECL_CD = H          |
      | Touch28_N- BLOCK_RSN_CD = NULL and RECL_CD = H           |
      | Touch28_N-PRIM_EMAIL_ADDR = Null                         |
      | Touch28_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN |
      | Touch28_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR |
      | Touch28_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN  |
      | Touch28_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR  |
      | Touch28_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN  |
      | Touch28_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR  |
      | Touch28_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN  |
      | Touch28_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR  |
#      | Touch28_N-PLASTIC_TP_CD =A                               |
      | Touch28_N-IP_AR_RELATN_TYPE_CD=SUP                       |



  @EMOB @EMOBTouchDay28_Supplementary_Negative_Validation @Workstream-4 @EMAIL @VS1608D
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline:EMOB Touch-28_VS1608D_EMAIL Validate Supplementary offer details are not displayed against IH for Negative test cases
    Given load data from "EMOB" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And set cust account relation cid for cust dim cid
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                                                                                                 |
      | Touch28_One Supp Card and different Activation Status here Customer Skips Supp Card_Account_2                                                              |
      | Touch28_One Supp Card and Activation Status is Not Activated here Customer will receive Activation creative_Account_2                                      |
      | Touch28_One Supp card and Activation status = Activated  here Customer Skips Supp Card_Account_2                                                           |
      | Touch28_Account 1= One Supp Card.  Primary and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated_Account_3                         |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated_Account_3             |
      | Touch28_Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Activated_Account_3     |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Not Activated_Account_3         |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated_Account_3     |
      | Touch28_Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated_Account_3 |