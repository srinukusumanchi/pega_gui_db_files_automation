@MPSACrossSell_5467_EMAIL
Feature: Test data creation for EMail MPSA Cross Sell


  @MPSACrossSell_Email_1111_WithOut_Event_Date_PosNeg @MPSACrossSell_Positive_TestData @5467 @MPSACrossSellEMAIL @RS21091 @1111_WithOut_Event_Date
  Scenario Outline: MPSA Cross Sell_RS21091_5467_EMAIL Create test data for 1111 With Out Event Date
    Given load data from "MPSACrossSell" excel sheet
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
      | 5467_CUST_TP_CD=PSNL,5467_Primary Country Cd = CA,5467_MRKTBLE_F = Y,5467_Customer Not Decease | 95       |
#      | 5467_CUST_AGE >18                                                                                           | 92       |
#      | 5467_CUST_AGE=18                                                                                            | 93       |
#      | 5467_LANG_CD in small case_en                                                                               | 94       |
#      | 5467_LANG_CD in small case_fr                                                                               | 93       |
      | 5467_DO_NOT_SOLICIT_F = NULL                                                                   | 93       |
#      | 5467_DO_NOT_EMAIL_F=N                                                                                       | 93       |
#      | 5467_VLD_EML_F=Y                                                                                            | 93       |
#      | 5467_PRIM_EMAIL_ADDRESS!=NULL                                                                               | 93       |
#      | 5467_INDV_FRST_NM!=NULL/BLANK                                                                               | 93       |
#      | 5467_NOT_AML_KYC = N                                                                                        | 93       |
#      | 5467_NOT_AML_KYC = NULL                                                                                     | 93       |
#      | 5467_ACCT_ODT>90                                                                                            | 91       |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                         | 93       |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA   and CUST_INSIGHTS.CURR_VAL > 1                         | 93       |
#      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA   and CUST_INSIGHTS.CURR_VAL = 1                         | 93       |
#      | 5467_PRD CODE=01  SUB PRD CD=01                                                                             | 93       |
#      | 5467_PRD CODE=VGD SUB PRD CD=NF                                                                             | 93       |
#      | 5467_PRD CODE=AXP SUB PRD CD=PC                                                                             | 93       |
#      | 5467_PRD CODE=VLR SUB PRD CD=RC                                                                             | 93       |
#      | 5467_PRD CODE=VFF SUB PRD CD=TR                                                                             | 93       |
#      | 5467_PRD CODE=VGD SUB PRD CD=RG                                                                             | 93       |
#      | N-5467_CUST_TP_CD != PSNL                                                                                   | 93       |
#      | N-5467_Primary Country Cd != CA                                                                             | 93       |
#      | N-5467_Primary Country Cd = NULL                                                                            | 93       |
#      | N-5467_CUST_AGE < 18                                                                                        | 93       |
#      | N-5467_CUST_AGE = NULL                                                                                      | 93       |
#      | N-5467_LANG_CD NOT in (EN, E, FR, F)                                                                        | 93       |
#      | N-5467_LANG_CD = NULL                                                                                       | 93       |
      | N-5467_DO_NOT_SOLICIT_F = Y                                                                    | 93       |
#      | N-5467_MRKTBLE_F = N                                                                                        | 93       |
#      | N-5467_MRKTBLE_F = NULL                                                                                     | 93       |
#      | N-5467_NOT_AML_KYC = Y                                                                                      | 93       |
#      | N-5467_Customer Decease - Y                                                                                 | 93       |
#      | N-5467_Customer Decease - NULL                                                                              | 93       |
#      | N-5467_ACCT_ODT < 90 Days                                                                                   | 89       |
#      | N-5467_ACCT_ODT = 90 Days                                                                                   | 90       |
#      | 5467_ACCT_ODT = NULL                                                                                        | NULL     |
#      | 5467_PRD CD = 01 SUB PRD CD = 07                                                                            | 93       |
#      | 5467_PRD CD = 02 SUB PRD CD = 05                                                                            | 93       |
#      | 5467_PRD CD = 19 SUB PRD CD = 05                                                                            | 93       |
#      | 5467_PRD CD = 13 SUB PRD CD = 05                                                                            | 93       |
#      | 5467_PRD CD = 07 SUB PRD CD = 01                                                                            | 93       |
#      | 5467_PRD CD = 23 SUB PRD CD = 02                                                                            | 93       |
#      | 5467_PRD CD = VGD SUB PRD CD= AB                                                                            | 93       |
#      | 5467_PRD CD = VCL SUB PRD CD= BC                                                                            | 93       |
#      | 5467_PRD CD = VLR SUB PRD CD= CD                                                                            | 93       |
#      | 5467_SRC_ACCT_STAT_CD! =  A                                                                                 | 93       |
#      | 5467_SRC_ACCT_STAT_CD! = Open                                                                               | 93       |
#      | 5467_SRC_ACCT_STAT_CD = NULL                                                                                | 93       |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1                      | 93       |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                      | 93       |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL                    | 93       |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL => 1                       | 93       |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL < 1                         | 93       |
#      | N-5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = NULL                      | 93       |
#      | N-5467_DO_NOT_EMAIL_F=Y                                                                                     | 93       |
#      | N-5467_DO_NOT_EMAIL_F=NULL                                                                                  | 93       |
#      | N-5467_Valid Email Flag = N                                                                                 | 93       |
#      | N-5467_Valid Email Flag = NULL                                                                              | 93       |
#      | N-5467_EMAIL Address = NULL                                                                                 | 93       |
#      | N-5467_First Name = NULL                                                                                    | 93       |
#      | 5467_PHYSICIANS_F = NULL                                                                                    | 93       |
#      | 5467_MD_FINANCIAL_F = NULL                                                                                  | 93       |
#      | 5467_ITRADE_MCLEOD_F = NULL                                                                                 | 93       |
#      | 5467_DEDICATED_INVSTMNT_ADVISOR_F = NULL                                                                    | 93       |
#      | N-5467_PHYSICIANS_F = Y                                                                                     | 93       |
#      | N-5467_MD_FINANCIAL_F = Y                                                                                   | 93       |
#      | N-5467_ITRADE_MCLEOD_F = Y                                                                                  | 93       |
#      | N-5467_DEDICATED_INVSTMNT_ADVISOR_F = Y                                                                     | 93       |
#      | 5467_MK_BK_OFFERS_EMAIL_F = Y                                                                               | 93       |
#      | 5467_MK_BK_OFFERS_EMAIL_F = NULL                                                                            | 93       |
#      | N-5467_MK_BK_OFFERS_EMAIL_F = N                                                                             | 93       |
#      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account                                              | 93       |
#      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account                                         | 93       |
#      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account                                             | 93       |
#      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred                                   | 93       |
#      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account And ACCT_SUBSYS_ID != BB                     | 93       |
#      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account And SRC_ACCT_STAT_CD != A                    | 93       |
#      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account And PRIMARY_ACCT_HOLDER_FLAG != Y            | 93       |
#      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account And ACCT_SUBSYS_ID != BB                | 93       |
#      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account And SRC_ACCT_STAT_CD != A               | 93       |
#      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account And PRIMARY_ACCT_HOLDER_FLAG != Y       | 93       |
#      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account And ACCT_SUBSYS_ID != BB                    | 93       |
#      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account And SRC_ACCT_STAT_CD != A                   | 93       |
#      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account And PRIMARY_ACCT_HOLDER_FLAG != Y           | 93       |
#      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred And ACCT_SUBSYS_ID != BB          | 93       |
#      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred And SRC_ACCT_STAT_CD != A         | 93       |
#      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred And PRIMARY_ACCT_HOLDER_FLAG != Y | 93       |
#      | N-5467_PRD CD = 01 SUB PRD CD = 04 And Acct_odt<=90                                                         | 89       |
#      | N-5467_PRD CD = 02 SUB PRD CD = 01 And Acct_odt<=90                                                         | 88       |
#      | N-5467_PRD CD = 19 SUB PRD CD = 01 And Acct_odt<=90                                                         | 87       |
#      | N-5467_PRD CD = 13 SUB PRD CD = 01 And Acct_odt<=90                                                         | 86       |
#      | N-5467_PRD CD = 07 SUB PRD CD = 11 And Acct_odt<=90                                                         | 85       |
#      | N-5467_PRD CD = 23 SUB PRD CD = 01 And Acct_odt<=90                                                         | 84       |
#      | N-5467_PRD CD = VGD SUB PRD CD = NF And Acct_odt<=90                                                        | 83       |
#      | N-5467_PRD CD = VCL SUB PRD CD = ZZ And Acct_odt<=90                                                        | 83       |
#      | N-5467_PRD CD = VCL SUB PRD CD = SS And Acct_odt<=90                                                        | 81       |
#      | N-5467_PRD CD = VLR SUB PRD CD = RG And Acct_odt<=90                                                        | 80       |
#      | N-5467_PRD CD = VLR SUB PRD CD = NF And Acct_odt<=90                                                        | 79       |
#      | N-5467_PRD CD = VCL SUB PRD CD = DM And Acct_odt<=90                                                        | 78       |
#      | N-5467_PRD CD = VCL SUB PRD CD = RG And Acct_odt<=90                                                        | 77       |
#      | N-5467_PRD CD = VCL SUB PRD CD = NF And Acct_odt<=90                                                        | 76       |
#      | N-5467_PRD CD = VCL SUB PRD CD = SV And Acct_odt<=90                                                        | 75       |
#      | N-5467_PRD CD = VFA SUB PRD CD = A1 And Acct_odt<=90                                                        | 74       |
#      | N-5467_PRD CD = VFF SUB PRD CD = F1 And Acct_odt<=90                                                        | 73       |
#      | N-5467_PRD CD = AXG SUB PRD CD = GC And Acct_odt<=90                                                        | 72       |
#      | N-5467_PRD CD = AXS SUB PRD CD = SC And Acct_odt<=90                                                        | 71       |
#      | N-5467_PRD CD = AXP SUB PRD CD = PC And Acct_odt<=90                                                        | 70       |
#      | N-5467_PRD CD = VLR SUB PRD CD = RC And Acct_odt<=90                                                        | 69       |
#      | N-5467_PRD CD = VFF SUB PRD CD = TR And Acct_odt<=90                                                        | 68       |
#      | N-5467_PRD CD = VGD SUB PRD CD = RG And Acct_odt<=90                                                        | 67       |
#      | N_5467_HAS_CLOSED_MPSA_F_ne_N                                                                               | 95       |
#      | N_5467_HAS_CLOSED_MPSA_F_eq_NULL                                                                            | 95       |


  @MPSACrossSell_Email_1111_With_Event_Date @MPSACrossSell_Positive_TestData @5467 @MPSACrossSellEMAIL @RS21091 @1111_With_Event_Date
  Scenario Outline: MPSA Cross Sell_RS21091_5467_EMAIL Create test data for 1111 With Event Date
    Given load data from "MPSACrossSell" excel sheet
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
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                                                         | Acct_Odt | Event_Date |
      | 5467_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days    | 93       | 29         |
      | 5467_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days    | 93       | 30         |
      | N-5467_INSIGHT_CD != FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days | 93       | 28         |
      | N-5467_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL != 1 and CURRENT_DATE - EVENT_DATE < 30 days | 93       | 4          |
      | N-5467_INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE > 30 days  | 93       | 31         |

  @MPSACrossSell_Email_1221_WithOut_Event_Date @MPSACrossSell_Positive_TestData @5467 @MPSACrossSellEMAIL @RS21091 @1221
  Scenario Outline: MPSA Cross Sell_RS21091_5467_EMAIL Create test data for 1221
    Given load data from "MPSACrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                          | Acct_Odt |
      | 5467_SRC_SYS_PRD_CD != BSAMP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active | 92       |
      | 5467_SRC_SYS_PRD_CD = BSAMP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active | 93       |
      | 5467_SRC_SYS_PRD_CD = BSAMP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active  | 92       |
      | N-5467_SRC_SYS_PRD_CD = BSAMP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active | 93       |
      | 5467_EMAIL_05_07_With Ultimate And Preferred Accounts_MCB_IND != Y                  | 94       |
      | 5467_EMAIL_05_07_With Ultimate And Preferred Accounts_MCB_IND = Y                   | 94       |


  @MPSACrossSell_Email_1222_WithOut_Event_Date @MPSACrossSell_Positive_TestData @5467 @MPSACrossSellEMAIL @RS21091 @1222
  Scenario Outline: MPSA Cross Sell_RS21091_5467_EMAIL Create test data for 1222
    Given load data from "MPSACrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts

    Examples:
      | Test cases                                                                                                                   | Acct_Odt |
      | 5467_EMAIL_01_03_With Ultimate And Preferred Accounts_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1              | 94       |
      | 5467_EMAIL_01_03_With Ultimate And Preferred Accounts_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1_MCB_IND != Y | 94       |


  @MPSACrossSell_Email_1112_With_Event_Date @MPSACrossSell_Positive_TestData @5467 @MPSACrossSellEMAIL @RS21091 @1112
  Scenario Outline: MPSA Cross Sell_RS21091_5467_EMAIL Create test data for 1112 With Event Date
    Given load data from "MPSACrossSell" excel sheet
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
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" accounts
    And write Event Date "<Event_Date>" value into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts

    Examples:
      | Test cases                                                                                                                                                                                         | Acct_Odt | Event_Date |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1                               | 92       | NULL       |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1                               | 92       | NULL       |
      | 5467_CUST_INSIGHTS.INSIGHT_CD =FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1)  AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL < 1                              | 92       | NULL       |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL! = 1)  OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1)                            | 92       | NULL       |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days | 92       | 29         |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days | 92       | 30         |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days   | 92       | 28         |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days   | 92       | 10         |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days   | 92       | 30         |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days   | 92       | 30         |
      | N-5467_EMAIL_03_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Preferred Account And ACCT_SUBSYS_ID != BB                                                                 | 93       | NULL       |
      | N-5467_EMAIL_03_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Preferred Account And SRC_ACCT_STAT_CD != A                                                                | 93       | NULL       |
      | N-5467_EMAIL_03_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Preferred Account And PRIMARY_ACCT_HOLDER_FLAG != Y                                                        | 93       | NULL       |
      | N-5467_EMAIL_04_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Other no Ultimate-Preferred And ACCT_SUBSYS_ID != BB                                                       | 93       | NULL       |
      | N-5467_EMAIL_04_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Other no Ultimate-Preferred And SRC_ACCT_STAT_CD != A                                                      | 93       | NULL       |
      | N-5467_EMAIL_04_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Other no Ultimate-Preferred And PRIMARY_ACCT_HOLDER_FLAG != Y                                              | 93       | NULL       |
      | N-5467_EMAIL_02_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With MCB Preferred Account And ACCT_SUBSYS_ID != BB                                                             | 93       | NULL       |
      | N-5467_EMAIL_02_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With MCB Preferred Account And SRC_ACCT_STAT_CD != A                                                            | 93       | NULL       |
      | N-5467_EMAIL_02_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With MCB Preferred Account And PRIMARY_ACCT_HOLDER_FLAG != Y                                                    | 93       | NULL       |
      | N-5467_EMAIL_01_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Ultimate Account                                                                                           | 93       | NULL       |
      | N-5467_EMAIL_01_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Ultimate Account And ACCT_SUBSYS_ID != BB                                                                  | 93       | NULL       |
      | N-5467_EMAIL_01_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Ultimate Account And SRC_ACCT_STAT_CD != A                                                                 | 93       | NULL       |
      | N-5467_EMAIL_01_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Ultimate Account And PRIMARY_ACCT_HOLDER_FLAG != Y                                                         | 93       | NULL       |
      | N-5467_EMAIL_02_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With MCB Preferred Account                                                                                      | 93       | NULL       |
      | N-5467_EMAIL_03_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Preferred Account                                                                                          | 93       | NULL       |
      | N-5467_EMAIL_04_Creative_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL = 1 With Other no Ultimate-Preferred                                                                                | 93       | NULL       |
      | 5467_EMAIL_05_Creative_Not Auto-Enrolled with Ultimate Account_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL != 1                                                                          | 93       | NULL       |
      | 5467_EMAIL_06_Creative_Not Auto-Enrolled with MCB Preferred Account_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL != 1                                                                     | 93       | NULL       |
      | 5467_EMAIL_07_Creative_Not Auto-Enrolled with Preferred Account_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL != 1                                                                         | 93       | NULL       |
      | 5467_EMAIL_08_Creative_Not Auto-Enrolled with Other no Ultimate-Preferred_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL != 1                                                               | 93       | NULL       |
      | N-5467_EMAIL_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_CONTROL and CURR_VAL=1                                                                                                                              | 93       | NULL       |
      | 5467_EMAIL_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_CONTROL and CURR_VAL!=1                                                                                                                               | 93       | NULL       |
      | N-5467_EMAIL_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL=1                                                                                                                               | 93       | NULL       |
      | 5467_EMAIL_INSIGHT_CD = FLG_MPSA_ACQ_RS22021_TARGET and CURR_VAL!=1                                                                                                                                | 93       | NULL       |

  @MPSACrossSell_Email_1113_With_Event_Date @MPSACrossSell_Positive_TestData @5467 @MPSACrossSellEMAIL @RS21091 @1113
  Scenario Outline: MPSA Cross Sell_RS21091_5467_EMAIL Create test data for 1113 with event Date
    Given load data from "MPSACrossSell" excel sheet
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
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "3" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "3" accounts
    And write Event Date "<Event_Date>" value into "CUST_INSIGHTS" sheet for "<Test cases>" having "3" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "3" accounts
    Examples:
      | Test cases                                                                                                                                                                                                                                                                          | Acct_Odt | Event_Date |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days | 93       | 29         |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE < 30 days | 93       | 28         |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL = 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days | 93       | 30         |
      | 5467_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 AND CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_HISA and CUST_INSIGHTS.CURR_VAL > 1 AND INSIGHT_CD = FLG_TAX_REFUND_DEPOSIT and CUST_INSIGHTS.CURR_VAL = 1 and CURRENT_DATE - EVENT_DATE = 30 days | 93       | 30         |

## Added for april 13 2023 REL Trigger4
  @MPSACrossSell_Email_1111_External_input_table_PosNeg @MPSACrossSell_Positive_TestData @5467 @MPSACrossSellEMAIL @RS21091 @1111_WithOut_Event_Date
  Scenario Outline: MPSA Cross Sell_RS21091_5467_EMAIL Create test data for 1111 With External input table
    Given load data from "MPSACrossSell" excel sheet
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
     # EXTERNAL_INPUT_FILE_LAYOUT
    When write current CID into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_START_DATE" field with "<V_VALID_START_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<V_VALID_END_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
#    Then insert customer and account details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<Ext_Inp_File_Cnt>" records

    Examples:
      | Test cases                                           | Acct_Odt | Ext_Inp_File_Cnt | V_VALID_START_DATE | V_VALID_END_DATE |
      | 5467_EML_Trigger4                                    | 95       | 1                | 5                  | -5               |
      | 5467_EML_Trigger4_Current Date_eq_VALID_START_DATE   | 95       | 1                | 0                  | -5               |
      | 5467_EML_Trigger4_Current Date_eq_VALID_END_DATE     | 95       | 1                | 5                  | 0                |
      | N_5467_EML_Trigger4_CAMPAIGN_CODE_ne_RS21097         | 95       | 1                | 5                  | -5               |
      | N_5467_EML_Trigger4_CAMPAIGN_CELL_CODE_ne_5467       | 95       | 1                | 5                  | -5               |
      | N_5467_EML_Trigger4_CAMPAIGN_CELL_CODE_eq_NULL       | 95       | 1                | 5                  | -5               |
      | N_5467_EML_Trigger4_CAMPAIGN_CELL_CODE_FLAG_eq_N     | 95       | 1                | 5                  | -5               |
      | N_5467_EML_Trigger4_CAMPAIGN_CELL_CODE_FLAG_eq_NULL  | 95       | 1                | 5                  | -5               |
      | N_5467_EML_Trigger4_Current Date_lt_VALID_START_DATE | 95       | 1                | -1                 | -5               |
      | N_5467_EML_Trigger4_VALID_END_DATE_lt_Current Date   | 95       | 1                | 5                  | 1                |
      | N_5467_EML_Trigger4_EMAIL_CHANNEL_eq_N               | 95       | 1                | 5                  | -5               |
      | N_5467_EML_Trigger4_EMAIL_CHANNEL_eq_NULL            | 95       | 1                | 5                  | -5               |
      | N_5467_EML_Trigger4_CAMPAIGN_CELL_DESC_eq_NULL       | 95       | 1                | 5                  | -5               |


    ## Added for april 13 2023 REL Trigger5 with CUST_EV_EB.EV_RT_HISA_XSELL >= DSS setting
  @MPSACrossSell_Email_1111_withoutCustInsights_PosNeg @MPSACrossSell_Positive_TestData @5467 @MPSACrossSellEMAIL @RS21091 @1111_WithOut_Event_Date
  Scenario Outline: MPSA Cross Sell_RS21091_5467_EMAIL Create test data for 1111 without CustInsights
    Given load data from "MPSACrossSell" excel sheet
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
      | Test cases                                                         | Acct_Odt |
      | 5467_EML_Trigger5                                                  | 95       |
      | 5467_EML_Trigger5_EV_RT_HISA_XSELL _eq_DSS_Name_MPSA_Xsell_RS21097 | 95       |
      | 5467_EML_Trigger5_EV_RT_HISA_XSELL_gt_DSS_Name_MPSA_Xsell_RS21097  | 95       |
      | N_5467_EML_Trigger5_EV_RT_HISA_XSELL _lt_DSS_MPSA_Xsell_RS21097    | 95       |
      | N_5467_EML_Trigger5_EV_RT_HISA_XSELL_eq_NULL                       | 95       |

          ## Added for JUNE 22 2023 REL Exclusion Scenarios

  @MPSACrossSell_Email_1111_External_input_table_Exclusion @MPSACrossSell_PosNeg_Exclusion_TestData @5467 @MPSACrossSellEMAIL @RS21091 @1111_WithOut_Event_Date
  Scenario Outline: MPSA Cross Sell_RS21091_5467_EMAIL Create test data for 1111 With External input table
    Given load data from "MPSACrossSell" excel sheet
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
       # EXTERNAL_INPUT_FILE_LAYOUT
    When write current CID into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_START_DATE" field with "<V_VALID_START_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<V_VALID_END_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
#    Then insert customer and account details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts

    Examples:
      | Test cases                                                                                | Acct_Odt | Ext_Inp_File_Cnt | V_VALID_START_DATE | V_VALID_END_DATE |
  ##Positive
#      | 5467_EML_Trigger4_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N                                   | 95       | 1                | 5                  | -5               |
#      | 5467_EML_Trigger4_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                | 95       | 1                | 5                  | -5               |
#      | 5467_EML_Trigger4_ExtTable_VALID_END_DATE_lt_Curr_Dt                                      | 95       | 1                | 2                  | 1                |
#      | 5467_EML_Trigger4_ExtTable_ExtTable_VALID_START_DATE_gt_Curr_Dt                           | 95       | 1                | -1                 | -2               |
#      | 5467_EML_Trigger4_ExtTable_ExtTable_CAMPAIGN_CODE_ne_RS21097                              | 95       | 1                | 5                  | -5               |
#  ##Negative
#      | N_5467_EML_Trigger4_ExtTable_VALID_END_DATE_gt_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y   | 95       | 1                | 2                  | -1               |
#      | N_5467_EML_Trigger4_ExtTable_VALID_END_DATE_eq_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y   | 95       | 1                | 2                  | 0                |
#      | N_5467_EML_Trigger4_ExtTable_VALID_START_DATE_lt_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y | 95       | 1                | 1                  | -2               |
#      | N_5467_EML_Trigger4_ExtTable_VALID_START_DATE_eq_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y | 95       | 1                | 0                  | -2               |
      | N_5467_EML_Trigger4_ExtTable_2_Records                                                    | 95       | 2                | 5,6                | -5,-5            |
