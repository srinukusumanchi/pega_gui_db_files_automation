@Touch28_TestDataCreation_Email
Feature: Test data creation for EMOB  Touch Day 28
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


  @EMOB @EMOBTouchDay28_Positive_TestData @Workstream-4 @EMAIL @VS1608D
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for positive test cases for single accounts
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
      | Touch28_DO_NOT_SOLICIT_F=NULL                            | 28       |
      | Touch28_EMPLOYEE_STAFF_F=Null                            | 28       |
      | Touch28_Cust.age_Equal to 18                             | 28       |
      | Touch28_Cust.age_greater than 18                         | 28       |
      | Touch28_cc_vip_ind is NULL                               | 28       |
      | Touch28_LANG_CD= E                                       | 28       |
      | Touch28_LANG_CD= EN                                      | 28       |
      | Touch28_LANG_CD= F                                       | 28       |
      | Touch28_LANG_CD= FR                                      | 28       |
      | Touch28_LANG_Code_usage= e                               | 28       |
      | Touch28_LANG_Code_usage= en                              | 28       |
      | Touch28_LANG_Code_usage= f                               | 28       |
      | Touch28_LANG_Code_usage= fr                              | 28       |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_EN  | 28       |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = ZZ_FR  | 28       |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_EN  | 28       |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RG_FR  | 28       |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_EN  | 28       |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = NF_FR  | 28       |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_EN  | 28       |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = DM_FR  | 28       |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_EN  | 28       |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = RG_FR  | 28       |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_EN  | 28       |
      | Touch28_src_sys_prd_cd = VCL and SRC_SUB_PRD_CD = NF_FR  | 28       |
      | Touch28_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_EN  | 28       |
      | Touch28_src_sys_prd_cd = VFA and SRC_SUB_PRD_CD = A1_FR  | 28       |
      | Touch28_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = F1_EN   | 28       |
      | Touch28_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = F1_FR  | 28       |
      | Touch28_src_sys_prd_cd = AXGand SRC_SUB_PRD_CD = GC_EN   | 28       |
      | Touch28_src_sys_prd_cd = AXG  and SRC_SUB_PRD_CD = GC_FR | 28       |
      | Touch28_src_sys_prd_cd = AXSand SRC_SUB_PRD_CD = SC_EN   | 28       |
      | Touch28_src_sys_prd_cd = AXS  and SRC_SUB_PRD_CD = SC_FR | 28       |
      | Touch28_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_EN   | 28       |
      | Touch28_src_sys_prd_cd = AXPand SRC_SUB_PRD_CD = PC_FR   | 28       |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_EN  | 28       |
      | Touch28_src_sys_prd_cd = VLR and SRC_SUB_PRD_CD = RC_FR  | 28       |
      | Touch28_src_sys_prd_cd = VFFand SRC_SUB_PRD_CD = TR_EN   | 28       |
      | Touch28_src_sys_prd_cd = VFF and SRC_SUB_PRD_CD = TR_FR  | 28       |
      | Touch28_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_EN  | 28       |
      | Touch28_src_sys_prd_cd = VGD and SRC_SUB_PRD_CD = RG_FR  | 28       |
      | Touch28_acct_opn_dt = 28 days                            | 28       |
      | Touch28_acct_opn_dt =31  days                            | 31       |
      | Touch28_acct_opn_dt is >=28 days and <=31 days           | 29       |
      | Touch28_BLOCK_RSN_CD and RECL_CD is BLANK                | 28       |
      | Touch28_BLOCK_RSN_CD and RECL_CD is NULL                 | 28       |
      | Touch28_BLOCK_RSN_CD and RECL_CD is XH                   | 28       |
      | Touch28_BLOCK_RSN_CD and RECL_CD is  C                   | 28       |
      | Touch28_CRD_ACTIVATION_STATE Leading Spaces              | 28       |
      | Touch28_CRD_ACTIVATION_STATE Trailing Spaces             | 28       |


  @EMOB @EMOBTouchDay28_Positive_TestData @Workstream-4 @EMAIL @VS1608D @Supplementary
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for positive test cases for single accounts
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
      | Test cases                                                             | Acct_Odt |
      | Touch28_Primary Card Activated No Supp Card Cust Receive Supp Creative | 28       |
      | Touch28_Primary Card Activated Cust Receive Activated Creative         | 28       |

  @EMOB @EMOBTouchDay28_Positive_TestData @Workstream-4 @EMAIL @VS1608D @Supplementary
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for positive test cases for dual accounts
    Given load data from "EMOB" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write same account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write cid and account number for EMOB into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                                  | Acct_Odt |
      | Touch28_One Supp Card and different Activation Status here Customer Skips Supp Card                         | 28       |
      | Touch28_One Supp Card and Activation Status is Not Activated here Customer will receive Activation creative | 28       |
      | Touch28_One Supp card and Activation status = Activated  here Customer Skips Supp Card                      | 28       |

  @EMOB @EMOBTouchDay28_Positive_TestData @Workstream-4 @EMAIL @VS1608D @Supplementary
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for positive test cases for dual accounts
    Given load data from "EMOB" excel sheet
    Given write same cid into sheet "CUST_DIM" for "<Test cases>" having "2" accounts
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number for EMOB into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                                 | Acct_Odt |
      | Touch28_No Supp Card and Activation Status is Not Activated here Customer will receive Activation creative | 28       |
      | Touch28_No Supp Card and Activation Status is Activated here Customer will receive Supp Creative           | 28       |
      | Touch28_No Supp Card and different Activation Status                                                       | 28       |

  @EMOB @EMOBTouchDay28_Positive_TestData @Workstream-4 @EMAIL @VS1608D @Supplementary
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for positive test cases for three accounts
    Given load data from "EMOB" excel sheet
    Given write cid into "CUST_DIM" sheet for one supp and primary cards "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table "<Test cases>" having "1" accounts
    When write account number for one supp and primary cards into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number for EMOB into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                                                                                                       | Acct_Odt |
      | Touch28_Account 1= One Supp Card.  Primary and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated                         | 28       |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated             | 28       |
      | Touch28_Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Activated     | 28       |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Not Activated         | 28       |
      | Touch28_Account 1= One Supp Card.  Primary = Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated     | 28       |
      | Touch28_Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated | 28       |


  @EMOB @EMOBTouchDay28_Negative_TestData_SingleAcc @Workstream-4 @EMAIL @VS1608D
    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for negative test cases for single accounts
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
      | Touch28_N-CUST_TP_CD=Non_PSNL                            | 28       |
      | Touch28_N-CUST_TP_CD=NULL                                | 28       |
      | Touch28_N-PRIM_CNTRY_CD=US                               | 28       |
      | Touch28_N-PRIM_CNTRY_CD=NULL                             | 28       |
      | Touch28_N-PRIM_PROV_CD=NULL                              | 28       |
      | Touch28_N-VLD_EMAIL_F =N                                 | 28       |
      | Touch28_N-DO_NOT_EMAIL_F=Y                               | 28       |
      | Touch28_N-DO_NOT_EMAIL_F=NULL                            | 28       |
      | Touch28_N-Cust.age_Less than 18                          | 28       |
      | Touch28_N-Cust.age = NULL                                | 28       |
      | Touch28_N-INDV_FRST_NM is NULL                           | 28       |
      | Touch28_N-INDV_LAST_NM is NULL                           | 28       |
      | Touch28_N-Prv_Bnk_Ind = Y                                | 28       |
      | Touch28_N-Prv_Bnk_Ind = NULL                             | 28       |
      | Touch28_N-EMPLOYEE_STAFF_F=Y                             | 28       |
      | Touch28_N-LANG_CD= K                                     | 28       |
      | Touch28_N-LANG_CD= NE                                    | 28       |
      | Touch28_N-LANG_CD= NULL                                  | 28       |
      | Touch28_N-Marketable_F = N                               | 28       |
      | Touch28_N-Marketable_F = NULL                            | 28       |
      | Touch28_N-DO_NOT_SOLICIT_F=Y                             | 28       |
      | Touch28_N-Deceased_F=Y                                   | 28       |
      | Touch28_N-cc_vip_ind is 2                                | 28       |
      | Touch28_N-cc_vip_ind is 9                                | 28       |
      | Touch28_N-chrgf_cd is not 0                              | 28       |
      | Touch28_N-chrgf_cd is Null                               | 28       |
      | Touch28_N-PRIMARY_ACCT_HOLDER_FLAG is N                  | 28       |
      | Touch28_N-ACCT_SUBSYS_ID is BB                           | 28       |
      | Touch28_N-acct_opn_dt is lessthan 28                     | 27       |
      | Touch28_N-acct_opn_dt is greater than 31                 | 32       |
      | Touch28_N-acct_opn_dt is NULL                            | NULL     |
      | Touch28_N-BLOCK_RSN_CD is Y                              | 28       |
      | Touch28_N-RECL_cd is Y                                   | 28       |
      | Touch28_N-reissu_cd is not NULL                          | 28       |
      | Touch28_N-reissu_cd is not BLANK                         | 28       |
      | Touch28_N-BLOCK_RSN_CD = A and RECL_CD = B               | 28       |
      | Touch28_N-BLOCK_RSN_CD = BLANK and RECL_CD = H           | 28       |
      | Touch28_N-BLOCK_RSN_CD = C and RECL_CD = BLANK           | 28       |
      | Touch28_N-BLOCK_RSN_CD = C and RECL_CD = NULL            | 28       |
      | Touch28_N- BLOCK_RSN_CD = X and RECL_CD = BLANK          | 28       |
      | Touch28_N- BLOCK_RSN_CD = X and RECL_CD = NULL           | 28       |
      | Touch28_N- BLOCK_RSN_CD = BLANK and RECL_CD = H          | 28       |
      | Touch28_N- BLOCK_RSN_CD = NULL and RECL_CD = H           | 28       |
      | Touch28_N-PRIM_EMAIL_ADDR = Null                         | 28       |
      | Touch28_N-src_sys_prd_cd = VGD and SRC_SUB_PRD_CD =RS_EN | 28       |
      | Touch28_N-src_sys_prd_cd = VCL and SRC_SUB_PRD_CD =TS_FR | 28       |
      | Touch28_N-src_sys_prd_cd =VLRand SRC_SUB_PRD_CD = F2_EN  | 28       |
      | Touch28_N-src_sys_prd_cd =VFAand SRC_SUB_PRD_CD = A6_FR  | 28       |
      | Touch28_N-src_sys_prd_cd =VFFand SRC_SUB_PRD_CD = SP_EN  | 28       |
      | Touch28_N-src_sys_prd_cd =AXGand SRC_SUB_PRD_CD = CP_FR  | 28       |
      | Touch28_N-src_sys_prd_cd =AXSand SRC_SUB_PRD_CD = GR_EN  | 28       |
      | Touch28_N-src_sys_prd_cd =AXPand SRC_SUB_PRD_CD = RT_FR  | 28       |
#      | Touch28_N-PLASTIC_TP_CD =A                               | 28       |
      | Touch28_N-IP_AR_RELATN_TYPE_CD=SUP                       | 28       |


#  @EMOB @EMOBTouchDay28_Negative_TestData @Workstream-4 @EMAIL @VS1608D @Supplementary
#    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
#  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for negative test cases for single accounts
#    Given load data from "EMOB" excel sheet
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
#    When write account number into "ACCT_DIM" sheet for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then insert customer account details in "ACCT_DIM" table
#    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
#    Examples:
#      | Test cases                                                               | Acct_Odt |
#      | Touch28_N-Primary Card Activated No Supp Card Cust Receive Supp Creative | 28       |
#      | Touch28_N-Primary Card Activated Cust Receive Activated Creative         | 28       |
#
#  @EMOB @EMOBTouchDay28_Negative_TestData @Workstream-4 @EMAIL @VS1608D @Supplementary
#    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
#  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for negative test cases for dual accounts
#    Given load data from "EMOB" excel sheet
#    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#    When  write same account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then insert customer account details in "ACCT_DIM" table
#    When write cid and account number for EMOB into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
#    Examples:
#      | Test cases                                                                                                    | Acct_Odt |
#      | Touch28_N-One Supp Card and different Activation Status here Customer Skips Supp Card                         | 28       |
#      | Touch28_N-One Supp Card and Activation Status is Not Activated here Customer will receive Activation creative | 28       |
#      | Touch28_N-One Supp card and Activation status = Activated  here Customer Skips Supp Card                      | 28       |
#
#
#  @EMOB @EMOBTouchDay28_Negative_TestData @Workstream-4 @EMAIL @VS1608D @Supplementary
#    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885
#  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for negative test cases for dual accounts
#    Given load data from "EMOB" excel sheet
#    Given write same cid into sheet "CUST_DIM" for "<Test cases>" having "2" accounts
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
#    Then insert customer account details in "ACCT_DIM" table having "2" accounts
#    When write cid and account number for EMOB into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
#    Examples:
#      | Test cases                                                                                                   | Acct_Odt |
#      | Touch28_N-No Supp Card and Activation Status is Not Activated here Customer will receive Activation creative | 28       |
#      | Touch28_N-No Supp Card and Activation Status is Activated here Customer will receive Supp Creative           | 28       |
#      | Touch28_N-No Supp Card and different Activation Status                                                       | 28       |
#
#  @EMOB @EMOBTouchDay28_Negative_TestData @Workstream-4 @EMAIL @VS1608D @Supplementary
#    @4784 @4786 @4787 @4788 @4789 @4790 @4791 @4792 @4793 @4794 @4795 @4796 @4797 @4885 @sk
#  Scenario Outline: EMOB Touch Day 28_EMAIL Create test data for negative test cases for three accounts
#    Given load data from "EMOB" excel sheet
#    Given write cid into "CUST_DIM" sheet for negative one supp and primary cards "<Test cases>" having "3" Customers
#    Then insert Multiple customer information details in "CUST_DIM" table "<Test cases>" having "1" accounts
#    When write account number for Negative one supp and primary cards into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
#    Then insert customer account details in "ACCT_DIM" table having "2" accounts
#    When write cid and account number for EMOB into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
##    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
#    Examples:
#      | Test cases                                                                                                                                         | Acct_Odt |
#      | Touch28_N-Account 1= One Supp Card.  Primary and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated                         | 28       |
#      | Touch28_N-Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Activated             | 28       |
#      | Touch28_N-Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Activated     | 28       |
#      | Touch28_N-Account 1= One Supp Card.  Primary = Activated and Supp Card= Activated and Account 2= No Supp Card, Primary Card= Not Activated         | 28       |
#      | Touch28_N-Account 1= One Supp Card.  Primary = Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated     | 28       |
#      | Touch28_N-Account 1= One Supp Card.  Primary = Not Activated and Supp Card= Not Activated and Account 2= No Supp Card, Primary Card= Not Activated | 28       |
#
