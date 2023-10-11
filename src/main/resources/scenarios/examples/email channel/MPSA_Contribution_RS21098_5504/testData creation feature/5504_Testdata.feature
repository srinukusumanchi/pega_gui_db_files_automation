@MPSAContribution_PosNeg_5504_EMAIL_TestDataLoad
  Feature: Test data creation for EMail MPSA Contribution


  @MPSAContribution_Email_1111 @MPSAContribution_Positive_TestData_5504_1111 @5504 @MPSAContributionEMAIL @RS21098 @1111
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for 1111
    Given load data from "MPSAContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                                     | Acct_Odt |
      | 5504_CUST_TP_CD=PSNL,5504_Primary Country Cd = CA,5504_MRKTBLE_F = Y,5504_Customer Not Decease | 94       |
#      | 5504_CUST_AGE >18                                                                              | 94       |
#      | 5504_CUST_AGE=18                                                                               | 94       |
#      | 5504_LANG_CD in E                                                                              | 94       |
#      | 5504_LANG_CD in EN                                                                             | 94       |
#      | 5504_LANG_CD in F                                                                              | 94       |
#      | 5504_LANG_CD in FR                                                                             | 94       |
#      | 5504_LANG_CD in small case_e                                                                   | 94       |
#      | 5504_LANG_CD in small case_en                                                                  | 94       |
#      | 5504_LANG_CD in small case_f                                                                   | 94       |
#      | 5504_LANG_CD in small case_fr                                                                  | 94       |
#      | 5504_DO_NOT_SOLICIT_F = N                                                                      | 94       |
#      | 5504_DO_NOT_SOLICIT_F = NULL                                                                   | 94       |
#      | 5504_NOT_AML_KYC = N                                                                           | 94       |
#      | 5504_NOT_AML_KYC = NULL                                                                        | 94       |
#      | 5504_ACCT_ODT>90                                                                               | 92       |
#      | 5504_ACCT_ODT = NULL                                                                           | NULL     |
#      | 5504_PRIMARY_ACCT_HOLDER_FLAG = Y                                                              | 94       |
#      | 5504_BUSINESS_SEGMENT = Retail                                                                 | 94       |
#      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1            | 94       |
#      | 5504_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA   and CUST_INSIGHTS.CURR_VAL > 1            | 94       |
#      | 5504_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA   and CUST_INSIGHTS.CURR_VAL = 1            | 94       |
#      | 5504_SRC_SYS_PRD_CD = BSAMP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active              | 94       |
#      | N-5504_SRC_ACCT_STAT_CD = NULL                                                                 | 94       |
#      | N-5504_CUST_TP_CD != PSNL                                                                      | 94       |
#      | N-5504_Primary Country Cd != CA                                                                | 94       |
#      | N-5504_Primary Country Cd = NULL                                                               | 94       |
#      | N-5504_CUST_AGE < 18                                                                           | 94       |
#      | N-5504_CUST_AGE = NULL                                                                         | 94       |
#      | N-5504_LANG_CD NOT in (EN, E, FR, F)                                                           | 94       |
#      | N-5504_LANG_CD = NULL                                                                          | 94       |
#      | N-5504_DO_NOT_SOLICIT_F = Y                                                                    | 94       |
#      | N-5504_MRKTBLE_F = N                                                                           | 94       |
#      | N-5504_MRKTBLE_F = NULL                                                                        | 94       |
#      | N-5504_NOT_AML_KYC = Y                                                                         | 94       |
#      | N-5504_Customer Decease - Y                                                                    | 94       |
#      | N-5504_Customer Decease - NULL                                                                 | 94       |
#      | N-5504_ACCT_ODT < 90 Days                                                                      | 89       |
#      | N-5504_ACCT_ODT = 90 Days                                                                      | 90       |
#      | N-5504_PRIMARY_ACCT_HOLDER_FLAG = N                                                            | 94       |
#      | N-5504_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                         | 94       |
#      | N-5504_BUSINESS_SEGMENT != Retail                                                              | 94       |
#      | N-5504_BUSINESS_SEGMENT = NULL                                                                 | 94       |
#      | N-5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 1         | 94       |
#      | N-5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1         | 94       |
#      | N-5504_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1         | 94       |
#      | N-5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL       | 94       |
#      | N-5504_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL => 1          | 94       |
#      | N-5504_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL < 1            | 94       |
#      | N-5504_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = NULL         | 94       |
##      | N-5504_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL                       | 94       |
#      | N-5504_SRC_SYS_PRD_CD != BSAMP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active          | 94       |
#      | N-5504_SRC_SYS_PRD_CD = BSAMP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active          | 94       |
#      | N-5504_SRC_SYS_PRD_CD = BSAMP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active           | 94       |
#      | 5504_Validate Rest period for the offer                                                        | 94       |
#      | 5504_Validate Persistence period for the offer                                                 | 94       |
#      | 5504_DO_NOT_EMAIL_F=N                                                                          | 94       |
#      | 5504_VLD_EML_F=Y                                                                               | 94       |
#      | 5504_PRIM_EMAIL_ADDRESS!=NULL                                                                  | 94       |
#      | 5504_INDV_FRST_NM!=NULL/BLANK                                                                  | 94       |
#      | N-5504_DO_NOT_EMAIL_F=Y                                                                        | 94       |
#      | N-5504_DO_NOT_EMAIL_F=NULL                                                                     | 94       |
#      | N-5504_Valid Email Flag = N                                                                    | 94       |
#      | N-5504_Valid Email Flag = NULL                                                                 | 94       |
#      | N-5504_EMAIL Address = NULL                                                                    | 94       |
#      | N-5504_First Name = NULL                                                                       | 94       |
#      | N_5504_PHYSICIANS_F = Y                                                                        | 95       |
#      | N_5504_MD_FINANCIAL_F = Y                                                                      | 95       |
#      | N_5504_ITRADE_MCLEOD_F = Y                                                                     | 95       |
#      | N_5504_DEDICATED_INVSTMNT_ADVISOR_F = Y                                                        | 95       |
#      | 5504_5504032205_Other (no Ultimate/Preferred) with MPSA PAC                                    | 80       |
#      | 5504_5504032206_Other (no Ultimate/Preferred) without MPSA PAC                                 | 80       |
#      | 5504_5504032205_Other (no Ultimate/Preferred) with MPSA PAC_FR                                 | 80       |
#      | 5504_5504032206_Other (no Ultimate/Preferred) without MPSA PAC_FR                              | 80       |


  @MPSAContribution_Email_1221 @MPSAContribution_Positive_TestData @5504 @MPSAContributionEMAIL @RS21098 @1221
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for 1221
    Given load data from "MPSAContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                                      | Acct_Odt |
      | 5504_PRD CODE=01  SUB PRD CD=01                                                                 | 93       |
      | 5504_PRD CODE=VGD SUB PRD CD=NF                                                                 | 93       |
      | 5504_PRD CD = 01 SUB PRD CD = 07                                                                | 93       |
      | 5504_PRD CD = 02 SUB PRD CD = 05                                                                | 93       |
      | 5504_PRD CD = 19 SUB PRD CD = 05                                                                | 93       |
      | 5504_PRD CD = 13 SUB PRD CD = 05                                                                | 93       |
      | 5504_PRD CD = 07 SUB PRD CD = 01                                                                | 93       |
      | 5504_PRD CD = 23 SUB PRD CD = 02                                                                | 93       |
      | 5504_PRD CD = VGD SUB PRD CD= AB                                                                | 93       |
      | 5504_PRD CD = VCL SUB PRD CD= BC                                                                | 93       |
      | 5504_PRD CD = VLR SUB PRD CD= CD                                                                | 93       |
      | 5504_SRC_ACCT_STAT_CD! =  A                                                                     | 93       |
      | 5504_SRC_ACCT_STAT_CD! = Open                                                                   | 93       |
      | 5504_5504032201_Ultimate Account holders with MPSA PAC                                          | 95       |
      | 5504_5504032202_Ultimate Account holders without MPSA PAC                                       | 95       |
      | 5504_5504032203_Preferred Account holders with MPSA PAC                                         | 95       |
      | 5504_5504032204_Preferred Account holders without MPSA PAC                                      | 95       |
      | 5504_5504032201_Ultimate Account holders with MPSA PAC_FR                                       | 95       |
      | 5504_5504032202_Ultimate Account holders without MPSA PAC_FR                                    | 95       |
      | 5504_5504032203_Preferred Account holders with MPSA PAC_FR                                      | 95       |
      | 5504_5504032204_Preferred Account holders without MPSA PAC_FR                                   | 95       |
      | 5504_PRD CD IN 01 && SUB PRD CD IN (01,02,03,04) && ACCOUNT_ODT >90                             | 95       |
      | 5504_PRD CD IN 02 && SUB PRD CD IN (01,02,03) && ACCOUNT_ODT < 90 && inactive                   | 89       |
      | 5504_PRD CD IN 19 && SUB PRD CD IN (01,02,03,04,07,08) && ACCOUNT_ODT >90                       | 95       |
      | 5504_PRD CD IN 07 && SUB PRD CD IN (11,12) && ACCOUNT_ODT >90                                   | 91       |
      | 5504_PRD CD IN VGD  && SUB PRD CD IN (NF) && ACCOUNT_ODT >90                                    | 91       |
      | 5504_PRD CD IN VCL  && SUB PRD CD IN (DM) && ACCOUNT_ODT < 90 && inactive                       | 85       |
      | 5504_PRD CD IN VLR  && SUB PRD CD IN (RC) && ACCOUNT_ODT >90                                    | 95       |
      | 5504_PRD CD IN VCL  && SUB PRD CD IN (NF) && ACCOUNT_ODT >90                                    | 95       |
      | 5504_PRD CD IN VFA  && SUB PRD CD IN (A1) && ACCOUNT_ODT >90                                    | 95       |
      | N_5504_PRD CD IN 01  &&  SUB PRD CD IN (01,02,03,04) && ACCOUNT_ODT  < 90                       | 89       |
      | N_5504_PRD CD IN 02  &&  SUB PRD CD IN (01,02,03) && ACCOUNT_ODT  = 90                          | 90       |
      | N_5504_PRD CD IN 19  &&  SUB PRD CD IN (01,02,03,04,07,08) && ACCOUNT_ODT = 90                  | 90       |
      | N_5504_PRD CD IN 07  &&  SUB PRD CD IN (11,12) && ACCOUNT_ODT <90                               | 80       |
      | N_5504_PRD CD IN 13  &&  SUB PRD CD IN (01,03,07,08) && ACCOUNT_ODT <90                         | 80       |
      | N_5504_PRD CD IN 23  &&  SUB PRD CD IN (01,03) && ACCOUNT_ODT <90                               | 80       |
      | N_5504_PRD CD IN VGD && SUB PRD CD IN (NF) && ACCOUNT_ODT = 90                                  | 90       |
      | N_5504_PRD CD IN VCL  && SUB PRD CD IN (DM) && ACCOUNT_ODT = 90                                 | 90       |
      | N_5504_PRD CD IN VLR  && SUB PRD CD IN (RC) && ACCOUNT_ODT = 90                                 | 90       |
      | N_5504_PRD CD IN VCL  && SUB PRD CD IN (NF) && ACCOUNT_ODT < 90                                 | 80       |
      | N_5504_PRD CD IN VFA  && SUB PRD CD IN (A1) && ACCOUNT_ODT < 90                                 | 80       |
      | N_5504032201_Ultimate Account holders with MPSA PAC_No Ultimate Account                         | 95       |
      | N_5504032201_Ultimate Account holders with MPSA PAC_ACCT_SUBSYS_ID! = BB                        | 95       |
      | N_5504032201_Ultimate Account holders with MPSA PAC_SRC_SYS_PRD_CD! = 23                        | 95       |
      | N_5504032201_Ultimate Account holders with MPSA PAC_SRC_ACCT_STAT_CD! = A                       | 95       |
      | N_5504032201_Ultimate Account holders with MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y               | 95       |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_No Ultimate Account                      | 95       |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_ACCT_SUBSYS_ID! = BB                     | 95       |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_SRC_SYS_PRD_CD! = 23                     | 95       |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_SRC_ACCT_STAT_CD! = A                    | 95       |
      | N_5504032202_Ultimate Account holders with No MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y            | 95       |
      | N_5504032203_Preffered Account holders with MPSA PAC_No Preferred Account                       | 95       |
      | N_5504032203_Preffered Account holders with MPSA PAC_ACCT_SUBSYS_ID! = BB                       | 95       |
      | N_5504032203_Preffered Account holders with MPSA PAC_SRC_SYS_PRD_CD! = 23                       | 95       |
      | N_5504032203_Preffered Account holders with MPSA PAC_SRC_ACCT_STAT_CD! = A                      | 95       |
      | N_5504032203_Preffered Account holders with MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y              | 95       |
      | N_5504032204_Preffered Account holders with No MPSA PAC_No Preferred Account                    | 95       |
      | N_5504032204_Preffered Account holders with No MPSA PAC_ACCT_SUBSYS_ID! = BB                    | 95       |
      | N_5504032204_Preffered Account holders with No MPSA PAC_SRC_SYS_PRD_CD! = 23                    | 95       |
      | N_5504032204_Preffered Account holders with No MPSA PAC_SRC_ACCT_STAT_CD! = A                   | 95       |
      | N_5504032204_Preffered Account holders with No MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y           | 95       |
      | 5504032205_Other Accounts with MPSA PAC_Preffered Account with SRC_ACCT_STAT_CD!= A             | 95       |
      | 5504032205_Other Accounts with MPSA PAC_Ultimate Account with SRC_ACCT_STAT_CD!= A              | 95       |
      | 5504032205_Other Accounts with MPSA PAC_Preffered Account with PRIMARY_ACCT_HOLDER_FLAG != Y    | 95       |
      | 5504032205_Other Accounts with MPSA PAC_Ultimate Account with PRIMARY_ACCT_HOLDER_FLAG != Y     | 95       |
      | N_5504032205_Other Accounts with MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y                         | 95       |
      | N_5504032205_Other Accounts with MPSA PAC_SRC_ACCT_STAT_CD!= A                                  | 95       |
      | 5504032206_Other Accounts with No MPSA PAC_Preffered Account with SRC_ACCT_STAT_CD!= A          | 95       |
      | 5504032206_Other Accounts with No MPSA PAC_Ultimate Account with SRC_ACCT_STAT_CD!= A           | 95       |
      | 5504032206_Other Accounts with No MPSA PAC_Preffered Account with PRIMARY_ACCT_HOLDER_FLAG != Y | 95       |
      | 5504032206_Other Accounts with No MPSA PAC_Ultimate Account with PRIMARY_ACCT_HOLDER_FLAG != Y  | 95       |
      | N_5504032206_Other Accounts with No MPSA PAC_PRIMARY_ACCT_HOLDER_FLAG != Y                      | 95       |
      | N_5504032206_Other Accounts with No MPSA PAC_SRC_ACCT_STAT_CD!= A                               | 95       |
      | N_5504_PRD CD IN VCL && SUB PRD CD IN ZZ  && ACCOUNT_ODT = 90                                   | 90       |
      | N_5504_PRD CD IN VCL && SUB PRD CD IN SS  && ACCOUNT_ODT = 90                                   | 90       |
      | N_5504_PRD CD IN VLR && SUB PRD CD IN RG  && ACCOUNT_ODT < 90                                   | 89       |
      | N_5504_PRD CD IN VLR && SUB PRD CD IN NF  && ACCOUNT_ODT < 90                                   | 89       |
      | N_5504_PRD CD IN VCL && SUB PRD CD IN RG  && ACCOUNT_ODT < 90                                   | 89       |
      | N_5504_PRD CD IN VCL && SUB PRD CD IN SV  && ACCOUNT_ODT = 90                                   | 90       |
      | N_5504_PRD CD IN VFF && SUB PRD CD IN F1  && ACCOUNT_ODT = 90                                   | 90       |
      | N_5504_PRD CD IN AXG && SUB PRD CD IN GC  && ACCOUNT_ODT = 90                                   | 90       |
      | N_5504_PRD CD IN AXS && SUB PRD CD IN SC  && ACCOUNT_ODT < 90                                   | 80       |
      | N_5504_PRD CD IN AXP && SUB PRD CD IN PC  && ACCOUNT_ODT < 90                                   | 80       |
      | N_5504_PRD CD IN VFF && SUB PRD CD IN TR  && ACCOUNT_ODT < 90                                   | 80       |
      | N_5504_PRD CD IN VGD && SUB PRD CD IN RG  && ACCOUNT_ODT = 90                                   | 90       |


  @MPSAContribution_Email_1112 @MPSAContribution_Positive_TestData @5504 @MPSAContributionEMAIL @RS21098 @1112
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for 1112
    Given load data from "MPSAContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" accounts
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases                                                                                                                                                              | Acct_Odt | Event_Date |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1    | 93       | NULL       |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1    | 93       | NULL       |
      | 5504_CUST_INSIGHTS.INSIGHT_CD =FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1)  AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL < 1   | 93       | NULL       |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL! = 1)  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1) | 93       | NULL       |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL! = 1 and Current date - CUST_INSIGHTS.EVENT_DATE < 60                                  | 95       | 59         |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 1 and Current date - CUST_INSIGHTS.EVENT_DATE > 60                                   | 95       | 61         |
      | N_5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 1 and Current date - CUST_INSIGHTS.EVENT_DATE < 60                                 | 95       | 59         |
      | N_5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 1 and Current date - CUST_INSIGHTS.EVENT_DATE = 60                                 | 95       | 60         |
      | 5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_ENG_RS22022_TARGET_CONTROL && CUST_INSIGHT.CURR_VAL! = 1                                                                       | 95       | NULL       |
      | N_5504_CUST_INSIGHTS.INSIGHT_CD = FLG_MPSA_ENG_RS22022_TARGET_CONTROL && CUST_INSIGHT.CURR_VAL = 1                                                                      | 95       | NULL       |


  @MPSAContribution_Email_111 @MPSAContribution_Positive_TestData_5504_111 @5504 @MPSAContributionEMAIL @RS21098 @1111
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for 1111
    Given load data from "MPSAContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                           | Acct_Odt |
      | 5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT = 20 days          | 20       |
      | 5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT = 30 days          | 30       |
      | 5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT > 20 and < 30 days | 25       |
      | N_5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT < 20 days        | 19       |
      | N_5504_CellGroup.NEW_New MPSA account with balance = 0 && ACCT_ODT > 30 days        | 31       |
      | N_5504_CellGroup.NEW_New MPSA account with balance! = 0 && ACCT_ODT < 30 days       | 25       |

  @MPSAContribution_Email_1111 @MPSAContribution_Positive_TestData_5504_EventDate_1111 @5504 @MPSAContributionEMAIL @RS21098 @1111
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for 1111
    Given load data from "MPSAContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                                            | Acct_Odt | Event_Date |
      | 5504_CellGroup.TXR_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CURR_VAL = 1 and EVENT_DATE < 30 days      | 95       | 29         |
      | 5504_CellGroup.TXR_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CURR_VAL = 1 and EVENT_DATE = 30 days      | 95       | 30         |
      | N_5504_CellGroup.TXR_N_INSIGHT_CD! = FLG_TAX_REFUND_DEPOSIT and CURR_VAL = 1 and EVENT_DATE < 30 days | 95       | 25         |
      | N_5504_CellGroup.TXR_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CURR_VAL! = 1 and EVENT_DATE < 30 days   | 95       | 29         |
      | N_5504_CellGroup.TXR_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CURR_VAL = 1 and EVENT_DATE > 30 days    | 95       | 31         |


  @MPSAContribution_Email_1331 @MPSAContribution_Positive_TestData_Ultimate_Preferred_1331 @5504 @MPSAContributionEMAIL @RS21098 @1221
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for 1331
    Given load data from "MPSAContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                  | Acct_Odt |
      | 5504_MPSA with PAC && ULTIMATE && PREFERRED - Ultimate and Preferred        | 95       |
      | 5504_MPSA without PAC PAC && ULTIMATE && PREFERRED - Ultimate and Preferred | 95       |

  @MPSAContribution_Email_1112 @MPSAContribution_Positive_TestData_AcctODT @5504 @MPSAContributionEMAIL @RS21098 @1112
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for 1112
    Given load data from "MPSAContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" accounts
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases                                           | Acct_Odt |Event_Date|
      | 5504_CellGroup.PRI && CellGroup.TXR                  | 95       |1         |
      | 5504_CellGroup.MPC && CellGroup.TXR                  | 95       |1         |

  @MPSAContribution_Email_1113 @MPSAContribution_Positive_TestData_AcctODT @5504 @MPSAContributionEMAIL @RS21098 @1113
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for 1113
    Given load data from "MPSAContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "3" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "3" accounts
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "3" accounts
    Examples:
      | Test cases                                                            | Acct_Odt |Event_Date|
      | 5504_CellGroup.MPC && CellGroup.TXR && CellGroup.PRI                  | 95       |1         |
