@5504_IH_Validation
Feature: Validation for 5504 MPSA_Contribution

  @MPSAContributionEmail @MPSAContributionEmail_IHFile_Positive_Generic_Validation @5504 @EMAIL @RS21098 @AUTOTESTTOTAL#30
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "MPSAContributionFunds" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details against IH
    Examples:
      | Test cases                                                                                                                             |
      | 5504_CUST_TP_CD=PSNL,5504_Primary Country Cd = CA,5504_MRKTBLE_F = Y,5504_Customer Not Decease                                         |
      | 5504_CUST_AGE >18                                                                                                                      |
      | 5504_CUST_AGE=18                                                                                                                       |
      | 5504_LANG_CD in E                                                                                                                      |
      | 5504_LANG_CD in EN                                                                                                                     |
      | 5504_LANG_CD in F                                                                                                                      |
      | 5504_LANG_CD in FR                                                                                                                     |
      | 5504_LANG_CD in small case_e                                                                                                           |
      | 5504_LANG_CD in small case_en                                                                                                          |
      | 5504_LANG_CD in small case_f                                                                                                           |
      | 5504_LANG_CD in small case_fr                                                                                                          |
      | 5504_DO_NOT_SOLICIT_F = N                                                                                                              |
      | 5504_DO_NOT_SOLICIT_F = NULL                                                                                                           |
      | 5504_NOT_AML_KYC = N                                                                                                                   |
      | 5504_NOT_AML_KYC = NULL                                                                                                                |
      | 5504_ACCT_ODT>90                                                                                                                       |
      | 5504_ACCT_ODT = NULL                                                                                                                   |
      | 5504_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                                                      |
      | 5504_BUSINESS_SEGMENT = Retail                                                                                                         |
      | 5504_SRC_ACCT_STAT_CD! =  A                                                                                                            |
      | 5504_SRC_ACCT_STAT_CD! = Open                                                                                                          |
      | 5504_DO_NOT_EMAIL_F=N                                                                                                                  |
      | 5504_VLD_EML_F=Y                                                                                                                       |
      | 5504_PRIM_EMAIL_ADDRESS!=NULL                                                                                                          |
      | 5504_INDV_FRST_NM!=NULL/BLANK                                                                                                          |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL! = 1 and Current date - CUST_INSIGHTS.EVENT_DATE < 60 |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 1 and Current date - CUST_INSIGHTS.EVENT_DATE > 60  |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_ENG_RS22022_TARGET_CONTROL && CUST_INSIGHT.CURR_VAL! = 1                                      |
      | 5504_MPSA with PAC && ULTIMATE && PREFERRED - Ultimate and Preferred                                                                   |
      | 5504_MPSA without PAC PAC && ULTIMATE && PREFERRED - Ultimate and Preferred                                                            |
      | 5504_SRC_SYS_PRD_CD = BSAMP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active                                                      |

  @MPSAContributionEmail @MPSAContributionEmail_IHFile_Positive_CellGroup_Validation @5504 @EMAIL @RS21098 @AUTOTESTTOTAL#15
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for Positive test cases for cell group
    Given load data from "MPSAContributionFunds" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details against IH
    Examples:
      | Test cases                                                                                                                                                              |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1    |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1    |
      | 5504_CUST_INSIGHTS.INSIGHT_CD =FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1)  AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL < 1   |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL! = 1)  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1) |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                     |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA   and CUST_INSIGHTS.CURR_VAL > 1                                                                                     |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA   and CUST_INSIGHTS.CURR_VAL = 1                                                                                     |
      | 5504_CellGroup.PRI && CellGroup.TXR                                                                                                                                     |
      | 5504_CellGroup.MPC && CellGroup.TXR                                                                                                                                     |
      | 5504_CellGroup.MPC && CellGroup.TXR && CellGroup.PRI                                                                                                                    |
      | 5504_CellGroup.TXR_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CURR_VAL = 1 and EVENT_DATE > 30 days                                                                        |
      | 5504_CellGroup.TXR_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CURR_VAL = 1 and EVENT_DATE = 30 days                                                                        |
      | 5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT = 20 days                                                                                              |
      | 5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT = 30 days                                                                                              |
      | 5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT > 20 and < 30 days                                                                                     |

  @MPSAContributionEmail @MPSAContributionEmail_IH_Positive_accounts_Validation @5504 @EMAIL @RS21098 @AUTOTESTTOTAL#21
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for Positive test  for accounts
    Given load data from "MPSAContributionFunds" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details against IH
    Examples:
      | Test cases                                                                    |
      | 5504_PRD CODE=01  SUB PRD CD=01                                               |
      | 5504_PRD CODE=VGD SUB PRD CD=NF                                               |
      | 5504_PRD CD = 01 SUB PRD CD = 07                                              |
      | 5504_PRD CD = 02 SUB PRD CD = 05                                              |
      | 5504_PRD CD = 19 SUB PRD CD = 05                                              |
      | 5504_PRD CD = 13 SUB PRD CD = 05                                              |
      | 5504_PRD CD = 07 SUB PRD CD = 01                                              |
      | 5504_PRD CD = 23 SUB PRD CD = 02                                              |
      | 5504_PRD CD = VGD SUB PRD CD= AB                                              |
      | 5504_PRD CD = VCL SUB PRD CD= BC                                              |
      | 5504_PRD CD = VLR SUB PRD CD= CD                                              |
      | 5504_PRD CD IN 01 && SUB PRD CD IN (01,02,03,04) && ACCOUNT_ODT >90           |
      | 5504_PRD CD IN 02 && SUB PRD CD IN (01,02,03) && ACCOUNT_ODT < 90 && inactive |
      | 5504_PRD CD IN 19 && SUB PRD CD IN (01,02,03,04,07,08) && ACCOUNT_ODT >90     |
      | 5504_PRD CD IN 07 && SUB PRD CD IN (11,12) && ACCOUNT_ODT >90                 |
      | 5504_PRD CD IN VGD  && SUB PRD CD IN (NF) && ACCOUNT_ODT >90                  |
      | 5504_PRD CD IN VCL  && SUB PRD CD IN (DM) && ACCOUNT_ODT < 90 && inactive     |
      | 5504_PRD CD IN VLR  && SUB PRD CD IN (RC) && ACCOUNT_ODT >90                  |
      | 5504_PRD CD IN VCL  && SUB PRD CD IN (NF) && ACCOUNT_ODT >90                  |
      | 5504_PRD CD IN VFA  && SUB PRD CD IN (A1) && ACCOUNT_ODT >90                  |

  @MPSAContributionEmail @MPSAContributionEmail_IH_Positive_Creatives_Validation @5504 @EMAIL @RS21098 @AUTOTESTTOTAL#15
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for Positive test cases for creatives
    Given load data from "MPSAContributionFunds" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details against IH
    Examples:
      | Test cases                                                                                      |
      | 5504_5504032201_Ultimate Account holders with MPSA PAC                                          |
      | 5504_5504032202_Ultimate Account holders without MPSA PAC                                       |
      | 5504_5504032203_Preferred Account holders with MPSA PAC                                         |
      | 5504_5504032204_Preferred Account holders without MPSA PAC                                      |
      | 5504_5504032205_Other (no Ultimate/Preferred) with MPSA PAC                                     |
      | 5504_5504032206_Other (no Ultimate/Preferred) without MPSA PAC                                  |
      | 5504032205_Other Accounts with MPSA PAC_Preffered Account with SRC_ACCT_STAT_CD!= A             |
      | 5504032205_Other Accounts with MPSA PAC_Ultimate Account with SRC_ACCT_STAT_CD!= A              |
      | 5504032205_Other Accounts with MPSA PAC_Preffered Account with PRIMARY_ACCT_HOLDER_FLAG != Y    |
      | 5504032205_Other Accounts with MPSA PAC_Ultimate Account with PRIMARY_ACCT_HOLDER_FLAG != Y     |
      | 5504032206_Other Accounts with No MPSA PAC_Preffered Account with SRC_ACCT_STAT_CD!= A          |
      | 5504032206_Other Accounts with No MPSA PAC_Ultimate Account with SRC_ACCT_STAT_CD!= A           |
      | 5504032206_Other Accounts with No MPSA PAC_Preffered Account with PRIMARY_ACCT_HOLDER_FLAG != Y |
      | 5504032206_Other Accounts with No MPSA PAC_Ultimate Account with PRIMARY_ACCT_HOLDER_FLAG != Y  |

  @MPSAContributionEmail @MPSAContributionEmail_IH_Positive_NegCreatives_Validation @5504 @EMAIL @RS21098 @AUTOTESTTOTAL#19
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for Positive test cases for neg eligibility of creatives
    Given load data from "MPSAContributionFunds" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details against IH
    Examples:
      | Test cases                                                                            |
      | N_5504032201_Ultimate Account holders with MPSA PAC_No Ultimate Account               |
      | N_5504032201_Ultimate Account holders with MPSA PAC_ACCT_SUBSYS_ID! = BB              |
      | N_5504032201_Ultimate Account holders with MPSA PAC_SRC_SYS_PRD_CD! = 23              |
      | N_5504032201_Ultimate Account holders with MPSA PAC_SRC_ACCT_STAT_CD! = A             |
      | N_5504032201_Ultimate Account holders with MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y     |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_No Ultimate Account            |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_ACCT_SUBSYS_ID! = BB           |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_SRC_SYS_PRD_CD! = 23           |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_SRC_ACCT_STAT_CD! = A          |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y  |
      | N_5504032203_Preffered Account holders with MPSA PAC_No Preferred Account             |
      | N_5504032203_Preffered Account holders with MPSA PAC_ACCT_SUBSYS_ID! = BB             |
      | N_5504032203_Preffered Account holders with MPSA PAC_SRC_SYS_PRD_CD! = 23             |
      | N_5504032203_Preffered Account holders with MPSA PAC_SRC_ACCT_STAT_CD! = A            |
      | N_5504032203_Preffered Account holders with MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y    |
      | N_5504032204_Preffered Account holders with No MPSA PAC_No Preferred Account          |
      | N_5504032204_Preffered Account holders with No MPSA PAC_ACCT_SUBSYS_ID! = BB          |
      | N_5504032204_Preffered Account holders with No MPSA PAC_SRC_SYS_PRD_CD! = 23          |
      | N_5504032204_Preffered Account holders with No MPSA PAC_SRC_ACCT_STAT_CD! = A         |
      | N_5504032204_Preffered Account holders with No MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y |

  @MPSAContributionEmail @MPSAContributionEmail_Negative_Validation @5504 @EMAIL @RS21098 @AUT0TESTTOTAL#72
  Scenario Outline: MPSA Contribution Email_RS21098_5504_EMAIL Validate offer details against IH for Negative test cases
    Given load data from "MPSAContributionFunds" excel sheet
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
      | Test cases                                                                                                                              |
      | N-5504_SRC_ACCT_STAT_CD = NULL                                                                                                          |
      | N-5504_CUST_TP_CD != PSNL                                                                                                               |
      | N-5504_Primary Country Cd != CA                                                                                                         |
      | N-5504_Primary Country Cd = NULL                                                                                                        |
      | N-5504_CUST_AGE < 18                                                                                                                    |
      | N-5504_CUST_AGE = NULL                                                                                                                  |
      | N-5504_LANG_CD NOT in (EN, E, FR, F)                                                                                                    |
      | N-5504_LANG_CD = NULL                                                                                                                   |
      | N-5504_DO_NOT_SOLICIT_F = Y                                                                                                             |
      | N-5504_MRKTBLE_F = N                                                                                                                    |
      | N-5504_MRKTBLE_F = NULL                                                                                                                 |
      | N-5504_NOT_AML_KYC = Y                                                                                                                  |
      | N-5504_Customer Decease - Y                                                                                                             |
      | N-5504_Customer Decease - NULL                                                                                                          |
      | N-5504_PRIMARY_ACCT_HOLDER_FLAG = N                                                                                                     |
      | N-5504_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                                                                  |
      | N-5504_BUSINESS_SEGMENT != Retail                                                                                                       |
      | N-5504_BUSINESS_SEGMENT = NULL                                                                                                          |
      | N-5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 1                                                  |
      | N-5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1                                                  |
      | N-5504_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                  |
      | N-5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL                                                |
      | N-5504_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL => 1                                                   |
      | N-5504_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL < 1                                                     |
      | N-5504_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = NULL                                                  |
      | N-5504_SRC_SYS_PRD_CD != BSAMP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active                                                   |
      | N-5504_SRC_SYS_PRD_CD = BSAMP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active                                                   |
      | N-5504_SRC_SYS_PRD_CD = BSAMP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active                                                    |
      | N-5504_DO_NOT_EMAIL_F=Y                                                                                                                 |
      | N-5504_DO_NOT_EMAIL_F=NULL                                                                                                              |
      | N-5504_Valid Email Flag = N                                                                                                             |
      | N-5504_Valid Email Flag = NULL                                                                                                          |
      | N-5504_EMAIL Address = NULL                                                                                                             |
      | N-5504_First Name = NULL                                                                                                                |
      | N_5504_PHYSICIANS_F = Y                                                                                                                 |
      | N_5504_MD_FINANCIAL_F = Y                                                                                                               |
      | N_5504_ITRADE_MCLEOD_F = Y                                                                                                              |
      | N_5504_DEDICATED_INVSTMNT_ADVISOR_F = Y                                                                                                 |
      | N_5504_CellGroup.TXR_N_INSIGHT_CD! = FLG_TAX_REFUND_DEPOSIT and CURR_VAL = 1 and EVENT_DATE < 30 days                                   |
      | N_5504_CellGroup.TXR_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CURR_VAL! = 1 and EVENT_DATE < 30 days                                     |
      | N_5504_CellGroup.TXR_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CURR_VAL = 1 and EVENT_DATE > 30 days                                      |
      | N_5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT < 20 days                                                            |
      | N_5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT > 30 days                                                            |
      | N_5504_CellGroup.NEW_New MPSA account with balance! = 0 && ACCT_ODT < 30 days                                                           |
      | N_5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 1 and Current date - CUST_INSIGHTS.EVENT_DATE < 60 |
      | N_5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 1 and Current date - CUST_INSIGHTS.EVENT_DATE = 60 |
      | N_5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_ENG_RS22022_TARGET_CONTROL && CUST_INSIGHT.CURR_VAL = 1                                      |
      | N_5504_PRD CD IN 01  &&  SUB PRD CD IN (01,02,03,04) && ACCOUNT_ODT  < 90                                                               |
      | N_5504_PRD CD IN 02  &&  SUB PRD CD IN (01,02,03) && ACCOUNT_ODT  = 90                                                                  |
      | N_5504_PRD CD IN 19  &&  SUB PRD CD IN (01,02,03,04,07,08) && ACCOUNT_ODT = 90                                                          |
      | N_5504_PRD CD IN 07  &&  SUB PRD CD IN (11,12) && ACCOUNT_ODT <90                                                                       |
      | N_5504_PRD CD IN 13  &&  SUB PRD CD IN (01,03,07,08) && ACCOUNT_ODT <90                                                                 |
      | N_5504_PRD CD IN 23  &&  SUB PRD CD IN (01,03) && ACCOUNT_ODT <90                                                                       |
      | N_5504_PRD CD IN VGD && SUB PRD CD IN (NF) && ACCOUNT_ODT = 90                                                                          |
      | N_5504_PRD CD IN VCL  && SUB PRD CD IN (DM) && ACCOUNT_ODT = 90                                                                         |
      | N_5504_PRD CD IN VLR  && SUB PRD CD IN (RC) && ACCOUNT_ODT = 90                                                                         |
      | N_5504_PRD CD IN VCL  && SUB PRD CD IN (NF) && ACCOUNT_ODT < 90                                                                         |
      | N_5504_PRD CD IN VFA  && SUB PRD CD IN (A1) && ACCOUNT_ODT < 90                                                                         |
      | N_5504032206_Other Accounts with No MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y                                                              |
      | N_5504032206_Other Accounts with No MPSA PAC_SRC_ACCT_STAT_CD!= A                                                                       |
      | N_5504_PRD CD IN VCL && SUB PRD CD IN ZZ  && ACCOUNT_ODT = 90                                                                           |
      | N_5504_PRD CD IN VCL && SUB PRD CD IN SS  && ACCOUNT_ODT = 90                                                                           |
      | N_5504_PRD CD IN VLR && SUB PRD CD IN RG  && ACCOUNT_ODT < 90                                                                           |
      | N_5504_PRD CD IN VLR && SUB PRD CD IN NF  && ACCOUNT_ODT < 90                                                                           |
      | N_5504_PRD CD IN VCL && SUB PRD CD IN RG  && ACCOUNT_ODT < 90                                                                           |
      | N_5504_PRD CD IN VCL && SUB PRD CD IN SV  && ACCOUNT_ODT = 90                                                                           |
      | N_5504_PRD CD IN VFF && SUB PRD CD IN F1  && ACCOUNT_ODT = 90                                                                           |
      | N_5504_PRD CD IN AXG && SUB PRD CD IN GC  && ACCOUNT_ODT = 90                                                                           |
      | N_5504_PRD CD IN AXS && SUB PRD CD IN SC  && ACCOUNT_ODT < 90                                                                           |
      | N_5504_PRD CD IN AXP && SUB PRD CD IN PC  && ACCOUNT_ODT < 90                                                                           |
      | N_5504_PRD CD IN VFF && SUB PRD CD IN TR  && ACCOUNT_ODT < 90                                                                           |
      | N_5504_PRD CD IN VGD && SUB PRD CD IN RG  && ACCOUNT_ODT = 90                                                                           |
      | N_5504032205_Other Accounts with MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y                                                                 |
      | N_5504032205_Other Accounts with MPSA PAC_SRC_ACCT_STAT_CD!= A                                                                          |
