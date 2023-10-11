Feature: Validation for 5467 TFSA_CrossSell

  @MPSACrossSellEmail @MPSACrossSell_Positive_Validation @Workstream-4 @5467 @EMAIL @RS21097  @AUTOTESTTOTAL#106
  Scenario Outline: MPSA CrossSell_RS21091_5467_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "MPSACrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then validate Mpsa CrossSell offer details against IH
    Examples:
      | Test cases                                                           |
#      | 5467_EMAIL_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_CONTROL and CURR_VAL!=1 |
#      | 5467_EMAIL_05_07_With Ultimate And Preferred Accounts_MCB_IND != Y                                                                                                                                                                                                                  |
#      | 5467_EMAIL_05_07_With Ultimate And Preferred Accounts_MCB_IND = Y                                                                                                                                                                                                                   |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD =FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1)  AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL < 1                                                                                                               |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL! = 1)  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1)                                                                                                             |
#      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL != 1                                                                                                                                                           |
#      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL != 1                                                                                                                                                      |
#      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL != 1                                                                                                                                                          |
#      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL != 1                                                                                                                                                |
#      | 5467_SRC_SYS_PRD_CD != BSAMP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active                                                                                                                                                                                                 |
#      | 5467_SRC_SYS_PRD_CD = BSAMP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active                                                                                                                                                                                                 |
#      | 5467_SRC_SYS_PRD_CD = BSAMP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active                                                                                                                                                                                                  |
#      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account                                                                                                                                                                                                                      |
#      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account                                                                                                                                                                                                                 |
#      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account                                                                                                                                                                                                                     |
#      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred                                                                                                                                                                                                           |
#      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account And ACCT_SUBSYS_ID != BB                                                                                                                                                                                             |
#      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account And SRC_ACCT_STAT_CD != A                                                                                                                                                                                            |
#      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account And PRIMARY_ACCT_HOLDER_FLAG != Y                                                                                                                                                                                    |
#      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account And ACCT_SUBSYS_ID != BB                                                                                                                                                                                        |
#      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account And SRC_ACCT_STAT_CD != A                                                                                                                                                                                       |
#      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account And PRIMARY_ACCT_HOLDER_FLAG != Y                                                                                                                                                                               |
#      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account And ACCT_SUBSYS_ID != BB                                                                                                                                                                                            |
#      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account And SRC_ACCT_STAT_CD != A                                                                                                                                                                                           |
#      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account And PRIMARY_ACCT_HOLDER_FLAG != Y                                                                                                                                                                                   |
#      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred And ACCT_SUBSYS_ID != BB                                                                                                                                                                                  |
#      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred And SRC_ACCT_STAT_CD != A                                                                                                                                                                                 |
#      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred And PRIMARY_ACCT_HOLDER_FLAG != Y                                                                                                                                                                         |
#      | 5467_MK_BK_OFFERS_EMAIL_F = Y                                                                                                                                                                                                                                                       |
#      | 5467_MK_BK_OFFERS_EMAIL_F = NULL                                                                                                                                                                                                                                                    |
#      | 5467_PHYSICIANS_F = NULL                                                                                                                                                                                                                                                            |
#      | 5467_MD_FINANCIAL_F = NULL                                                                                                                                                                                                                                                          |
#      | 5467_ITRADE_MCLEOD_F = NULL                                                                                                                                                                                                                                                         |
#      | 5467_DEDICATED_INVSTMNT_ADVISOR_F = NULL                                                                                                                                                                                                                                            |
#      | 5467_ACCT_ODT = NULL                                                                                                                                                                                                                                                                |
#      | 5467_PRD CD = 01 SUB PRD CD = 07                                                                                                                                                                                                                                                    |
#      | 5467_PRD CD = 02 SUB PRD CD = 05                                                                                                                                                                                                                                                    |
#      | 5467_PRD CD = 19 SUB PRD CD = 05                                                                                                                                                                                                                                                    |
#      | 5467_PRD CD = 13 SUB PRD CD = 05                                                                                                                                                                                                                                                    |
#      | 5467_PRD CD = 07 SUB PRD CD = 01                                                                                                                                                                                                                                                    |
#      | 5467_PRD CD = 23 SUB PRD CD = 02                                                                                                                                                                                                                                                    |
#      | 5467_PRD CD = VGD SUB PRD CD= AB                                                                                                                                                                                                                                                    |
#      | 5467_PRD CD = VCL SUB PRD CD= BC                                                                                                                                                                                                                                                    |
#      | 5467_PRD CD = VLR SUB PRD CD= CD                                                                                                                                                                                                                                                    |
#      | 5467_SRC_ACCT_STAT_CD! =  A                                                                                                                                                                                                                                                         |
#      | 5467_SRC_ACCT_STAT_CD! = Open                                                                                                                                                                                                                                                       |
#      | 5467_SRC_ACCT_STAT_CD = NULL                                                                                                                                                                                                                                                        |
#      | 5467_CUST_TP_CD=PSNL,5467_Primary Country Cd = CA,5467_MRKTBLE_F = Y,5467_Customer Not Decease                                                                                                                                                                                      |
#      | 5467_CUST_AGE >18                                                                                                                                                                                                                                                                   |
#      | 5467_CUST_AGE=18                                                                                                                                                                                                                                                                    |
#      | 5467_LANG_CD in small case_en                                                                                                                                                                                                                                                       |
#      | 5467_LANG_CD in small case_fr                                                                                                                                                                                                                                                       |
#      | 5467_DO_NOT_SOLICIT_F = NULL |
#      | 5467_DO_NOT_EMAIL_F=N                                                                                                                                                                                                                                                               |
#      | 5467_VLD_EML_F=Y                                                                                                                                                                                                                                                                    |
#      | 5467_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                                                                                                       |
#      | 5467_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                                                                                                       |
#      | 5467_NOT_AML_KYC = N                                                                                                                                                                                                                                                                |
#      | 5467_NOT_AML_KYC = NULL                                                                                                                                                                                                                                                             |
#      | 5467_ACCT_ODT>90                                                                                                                                                                                                                                                                    |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                                                 |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA   and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                                                                                                 |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA   and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                                                 |
#      | 5467_PRD CODE=01  SUB PRD CD=01                                                                                                                                                                                                                                                     |
#      | 5467_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                                                                                                                                     |
#      | 5467_PRD CODE=AXP SUB PRD CD=PC                                                                                                                                                                                                                                                     |
#      | 5467_PRD CODE=VLR SUB PRD CD=RC                                                                                                                                                                                                                                                     |
#      | 5467_PRD CODE=VFF SUB PRD CD=TR                                                                                                                                                                                                                                                     |
#      | 5467_PRD CODE=VGD SUB PRD CD=RG                                                                                                                                                                                                                                                     |
#      | 5467_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days                                                                                                                                                                     |
#      | 5467_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days                                                                                                                                                                     |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days                                                                                  |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days                                                                                  |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days                                                                                    |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days                                                                                    |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days                                                                                    |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days                                                                                    |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days |
#      | 5467_EMAIL_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL!=1                                                                                                                                                                                                                 |

   ## Added for April 13 2023 rel
#      | 5467_EML_Trigger4            |
#      | 5467_EML_Trigger4_Current Date_eq_VALID_START_DATE                 |
#      | 5467_EML_Trigger4_Current Date_eq_VALID_END_DATE                 |

      ## Trigger5
#      | 5467_EML_Trigger5                                                  |
#      | 5467_EML_Trigger5_EV_RT_HISA_XSELL _eq_DSS_Name_MPSA_Xsell_RS21097 |
#      | 5467_EML_Trigger5_EV_RT_HISA_XSELL_gt_DSS_Name_MPSA_Xsell_RS21097  |

       ## Added for JUNE 22 2023 REL Exclusion Scenarios

           ##Positive
      | 5467_EML_Trigger4_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N                                   |
#      | 5467_EML_Trigger4_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                |
#      | 5467_EML_Trigger4_ExtTable_VALID_END_DATE_lt_Curr_Dt                                      |
#      | 5467_EML_Trigger4_ExtTable_ExtTable_VALID_START_DATE_gt_Curr_Dt                           |
#      | 5467_EML_Trigger4_ExtTable_ExtTable_CAMPAIGN_CODE_ne_RS21097                              |

  @MPSACrossSellEmail @MPSACrossSellEmail_Negative_Validation @Workstream-4 @5467 @EMAIL @RS21097   @AUT0TESTTOTAL#62
  Scenario Outline: MPSA CrossSell Email_RS21091_5467_EMAIL Validate offer details against IH for Negative test cases
    Given load data from "MPSACrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                                |
#      | N-5467_CUST_TP_CD != PSNL                                                                                                                           |
#      | N-5467_Primary Country Cd != CA                                                                                                                     |
#      | N-5467_Primary Country Cd = NULL                                                                                                                    |
#      | N-5467_CUST_AGE < 18                                                                                                                                |
#      | N-5467_CUST_AGE = NULL                                                                                                                              |
#      | N-5467_LANG_CD NOT in (EN, E, FR, F)                                                                                                                |
#      | N-5467_LANG_CD = NULL                                                                                                                               |
#      | N-5467_DO_NOT_SOLICIT_F = Y                                     |
#      | N-5467_MRKTBLE_F = N                                                                                                                                |
#      | N-5467_MRKTBLE_F = NULL                                                                                                                             |
#      | N-5467_NOT_AML_KYC = Y                                                                                                                              |
#      | N-5467_Customer Decease - Y                                                                                                                         |
#      | N-5467_Customer Decease - NULL                                                                                                                      |
#      | N-5467_ACCT_ODT < 90 Days                                                                                                                           |
#      | N-5467_ACCT_ODT = 90 Days                                                                                                                           |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1                                                              |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                              |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL                                                            |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL => 1                                                               |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL < 1                                                                 |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = NULL                                                              |
#      | N-5467_DO_NOT_EMAIL_F=Y                                                                                                                             |
#      | N-5467_DO_NOT_EMAIL_F=NULL                                                                                                                          |
#      | N-5467_Valid Email Flag = N                                                                                                                         |
#      | N-5467_Valid Email Flag = NULL                                                                                                                      |
#      | N-5467_EMAIL Address = NULL                                                                                                                         |
#      | N-5467_First Name = NULL                                                                                                                            |
#      | N-5467_PHYSICIANS_F = Y                                                                                                                             |
#      | N-5467_MD_FINANCIAL_F = Y                                                                                                                           |
#      | N-5467_ITRADE_MCLEOD_F = Y                                                                                                                          |
#      | N-5467_DEDICATED_INVSTMNT_ADVISOR_F = Y                                                                                                             |
#      | N-5467_MK_BK_OFFERS_EMAIL_F = N                                                                                                                     |
#      | N-5467_PRD CD = 01 SUB PRD CD = 04 And Acct_odt<=90                                                                                                 |
#      | N-5467_PRD CD = 02 SUB PRD CD = 01 And Acct_odt<=90                                                                                                 |
#      | N-5467_PRD CD = 19 SUB PRD CD = 01 And Acct_odt<=90                                                                                                 |
#      | N-5467_PRD CD = 13 SUB PRD CD = 01 And Acct_odt<=90                                                                                                 |
#      | N-5467_PRD CD = 07 SUB PRD CD = 11 And Acct_odt<=90                                                                                                 |
#      | N-5467_PRD CD = 23 SUB PRD CD = 01 And Acct_odt<=90                                                                                                 |
#      | N-5467_PRD CD = VGD SUB PRD CD = NF And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VCL SUB PRD CD = ZZ And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VCL SUB PRD CD = SS And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VLR SUB PRD CD = RG And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VLR SUB PRD CD = NF And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VCL SUB PRD CD = DM And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VCL SUB PRD CD = RG And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VCL SUB PRD CD = NF And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VCL SUB PRD CD = SV And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VFA SUB PRD CD = A1 And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VFF SUB PRD CD = F1 And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = AXG SUB PRD CD = GC And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = AXS SUB PRD CD = SC And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = AXP SUB PRD CD = PC And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VLR SUB PRD CD = RC And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VFF SUB PRD CD = TR And Acct_odt<=90                                                                                                |
#      | N-5467_PRD CD = VGD SUB PRD CD = RG And Acct_odt<=90                                                                                                |
#      | N-5467_INSIGHT_CD != FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days                                  |
#      | N-5467_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL != 1 and CURRENT_DATE - EVENT_DATE < 30 days                                  |
#      | N-5467_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE > 30 days                                   |
#      | N-5467_SRC_SYS_PRD_CD = BSAMP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active                                                                 |
#      | N-5467_EMAIL_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_CONTROL and CURR_VAL=1                                                                               |
#      | N_5467_HAS_CLOSED_MPSA_F_ne_N                                                                                                                       |
#      | N_5467_HAS_CLOSED_MPSA_F_eq_NULL                                                                                                                    |
#      | N-5467_EMAIL_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL=1                                                                                |
#      | N-5467_EMAIL_03_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Preferred Account And ACCT_SUBSYS_ID != BB                    |
#      | N-5467_EMAIL_03_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Preferred Account And SRC_ACCT_STAT_CD != A                   |
#      | N-5467_EMAIL_03_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Preferred Account And PRIMARY_ACCT_HOLDER_FLAG != Y           |
#      | N-5467_EMAIL_04_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Other no Ultimate-Preferred And ACCT_SUBSYS_ID != BB          |
#      | N-5467_EMAIL_04_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Other no Ultimate-Preferred And SRC_ACCT_STAT_CD != A         |
#      | N-5467_EMAIL_04_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Other no Ultimate-Preferred And PRIMARY_ACCT_HOLDER_FLAG != Y |
#      | N-5467_EMAIL_02_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With MCB Preferred Account And ACCT_SUBSYS_ID != BB                |
#      | N-5467_EMAIL_02_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With MCB Preferred Account And SRC_ACCT_STAT_CD != A               |
#      | N-5467_EMAIL_02_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With MCB Preferred Account And PRIMARY_ACCT_HOLDER_FLAG != Y       |
#      | N-5467_EMAIL_01_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Ultimate Account                                              |
#      | N-5467_EMAIL_01_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Ultimate Account And ACCT_SUBSYS_ID != BB                     |
#      | N-5467_EMAIL_01_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Ultimate Account And SRC_ACCT_STAT_CD != A                    |
#      | N-5467_EMAIL_01_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Ultimate Account And PRIMARY_ACCT_HOLDER_FLAG != Y            |
#      | N-5467_EMAIL_02_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With MCB Preferred Account                                         |
#      | N-5467_EMAIL_03_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Preferred Account                                             |
#      | N-5467_EMAIL_04_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Other no Ultimate-Preferred                                   |

#   ## Added for April 13 2023 rel
#      | N_5467_EML_Trigger4_CAMPAIGN_CODE_ne_RS21097                    |
#      | N_5467_EML_Trigger4_CAMPAIGN_CELL_CODE_ne_5467                  |
#      | N_5467_EML_Trigger4_CAMPAIGN_CELL_CODE_eq_NULL                  |
#      | N_5467_EML_Trigger4_CAMPAIGN_CELL_CODE_FLAG_eq_N                |
#      | N_5467_EML_Trigger4_CAMPAIGN_CELL_CODE_FLAG_eq_NULL             |
#      | N_5467_EML_Trigger4_Current Date_lt_VALID_START_DATE            |
#      | N_5467_EML_Trigger4_VALID_END_DATE_lt_Current Date              |
#      | N_5467_EML_Trigger4_EMAIL_CHANNEL_eq_N                          |
#      | N_5467_EML_Trigger4_EMAIL_CHANNEL_eq_NULL                       |
#      | N_5467_EML_Trigger4_CAMPAIGN_CELL_DESC_eq_NULL                  |
#    ## Trigger5
#      | N_5467_EML_Trigger5_EV_RT_HISA_XSELL _lt_DSS_MPSA_Xsell_RS21097 |
#      | N_5467_EML_Trigger5_EV_RT_HISA_XSELL_eq_NULL                    |

   ## Added for JUNE 22 2023 REL Exclusion Scenarios
#      | N_5467_EML_Trigger4_ExtTable_VALID_END_DATE_gt_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y   |
#      | N_5467_EML_Trigger4_ExtTable_VALID_END_DATE_eq_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y   |
#      | N_5467_EML_Trigger4_ExtTable_VALID_START_DATE_lt_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y |
#      | N_5467_EML_Trigger4_ExtTable_VALID_START_DATE_eq_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y |
      | N_5467_EML_Trigger4_ExtTable_2_Records                                                    |
