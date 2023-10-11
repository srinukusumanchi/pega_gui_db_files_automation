@TFSAFund_5501_Email
Feature: Test data creation for EMail TFSA Fund


  @TFSAFund_Email_1111
  Scenario Outline: TFSA Fund_RS210912_5501_EMAIL Create test data for 1111
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
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
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                               | CUST_OPND_DT | Acct_Odt |
      | N-5501_INSIGHT_CD!=FLG_TFSA_CONTRIBUTION and CURR_VAL!=0 | 100          | 100      |

  @TFSAFund_Email_1112
  Scenario Outline: TFSA Fund_RS21092_5501_EMAIL Create test data for 1112
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
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
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts

    Examples:
      | Test cases                   | Acct_Odt | CUST_OPND_DT |
      | 5501_CUST_TP_CD=PSNL,5501_Primary Country Cd = CA,5501_CUST_AGE >18,5501_DO_NOT_SOLICIT_F = N,5501_MRKTBLE_F = Y,5501_NOT_AML_KYC = N,CUST_OPNT_DT > 90 days,5501_Customer Not Decease,5501_ACCT_ODT>90 | 100      | 92           |
      | 5501_CUST_AGE=18                                                                                                                                                                                        | 100      | 100          |
      | 5501_LANG_CD in E                                                                                                                                                                                       | 100      | 100          |
      | 5501_LANG_CD in EN                                                                                                                                                                                      | 100      | 100          |
      | 5501_LANG_CD in F                                                                                                                                                                                       | 100      | 100          |
      | 5501_LANG_CD in FR                                                                                                                                                                                      | 100      | 100          |
      | 5501_LANG_CD in small case_e                                                                                                                                                                            | 100      | 100          |
      | 5501_LANG_CD in small case_en                                                                                                                                                                           | 100      | 100          |
      | 5501_LANG_CD in small case_f                                                                                                                                                                            | 100      | 100          |
      | 5501_LANG_CD in small case_fr                                                                                                                                                                           | 100      | 100          |
      | 5501_DO_NOT_SOLICIT_F = NULL | 100      | 100          |
      | 5501_NOT_AML_KYC = NULL                                                                                                                                                                                 | 100      | 100          |
      | 5501_DO_NOT_EMAIL_F=N                                                                                                                                                                                   | 100      | 100          |
      | 5501_VLD_EML_F=Y                                                                                                                                                                                        | 100      | 100          |
      | 5501_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                           | 100      | 100          |
      | 5501_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                           | 100      | 100          |
      | 5501_Validate Rest period for the offer                                                                                                                                                                 | 100      | 100          |
      | 5501_Validate Persistence period for the offer                                                                                                                                                          | 100      | 100          |
      | 5501_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                                                                                                                       | 100      | 100          |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                     | 100      | 100          |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                     | 100      | 100          |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA   and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                     | 100      | 100          |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA   and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                     | 100      | 100          |
      | 5501_PLN_ACCT_CD_MASTER = TFSA and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active                                                                                                                    | 100      | 100          |
      | N-5501_CUST_TP_CD != PSNL                                                                                                                                                                               | 100      | 100          |
      | N-5501_Primary Country Cd != CA                                                                                                                                                                         | 100      | 100          |
      | N-5501_Primary Country Cd = NULL                                                                                                                                                                        | 100      | 100          |
      | N-5501_CUST_AGE < 18                                                                                                                                                                                    | 100      | 100          |
      | N-5501_CUST_AGE = NULL                                                                                                                                                                                  | 100      | 100          |
      | N-5501_LANG_CD NOT in (EN, E, FR, F)                                                                                                                                                                    | 100      | 100          |
      | N-5501_LANG_CD = NULL                                                                                                                                                                                   | 100      | 100          |
      | N-5501_DO_NOT_SOLICIT_F = Y  | 100      | 100          |
      | N-5501_MRKTBLE_F = N                                                                                                                                                                                    | 100      | 100          |
      | N-5501_MRKTBLE_F = NULL                                                                                                                                                                                 | 100      | 100          |
      | N-5501_NOT_AML_KYC = Y                                                                                                                                                                                  | 100      | 100          |
      | N-5501_CUST_OPNT_DT < 90 days                                                                                                                                                                           | 100      | 90           |
      | N-5501_CUST_OPNT_DT = 90 days                                                                                                                                                                           | 100      | 91           |
      | N-5501_CUST_OPNT_DT = NULL                                                                                                                                                                              | 100      | NULL         |
      | N-5501_Customer Decease - Y                                                                                                                                                                             | 100      | 100          |
      | N-5501_Customer Decease - NULL                                                                                                                                                                          | 100      | 100          |
      | N-5501_ACCT_ODT < 90 Days                                                                                                                                                                               | 90       | 100          |
      | N-5501_ACCT_ODT = 90 Days                                                                                                                                                                               | 91       | 100          |
      | N-5501_DO_NOT_EMAIL_F=Y                                                                                                                                                                                 | 100      | 100          |
      | N-5501_DO_NOT_EMAIL_F=NULL                                                                                                                                                                              | 100      | 100          |
      | N-5501_Valid Email Flag = N                                                                                                                                                                             | 100      | 100          |
      | N-5501_Valid Email Flag = NULL                                                                                                                                                                          | 100      | 100          |
      | N-5501_EMAIL Address = NULL                                                                                                                                                                             | 100      | 100          |
      | N-5501_First Name = NULL                                                                                                                                                                                | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1                                                                                                                  | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                  | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1                                                                                                                  | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD != FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                  | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1                                                                                                                   | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1                                                                                                                     | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                  | 100      | 100          |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                                | 100      | 100          |
      | N-5501_INSIGHT_CD!=FLG_TFSA_CONTRIBUTION and CURR_VAL=0                                                                                                                                                 | 100      | 100          |
      | N-5501_INSIGHT_CD=FLG_TFSA_CONTRIBUTION and CURR_VAL!=0                                                                                                                                                 | 100      | 100          |
#     Added for Jan 5th 2023 release
      | 5501_MD_FINANCIAL_F_ne_Y | 100      | 100          |
      | 5501_ITRADE_MCLEOD_F_ne_Y                                                                                                                                                                               | 100      | 100          |
      | 5501_DEDICATED_INVSTMNT_ADVISOR_F_ne_Y                                                                                                                                                                  | 100      | 100          |
      | 5501_MD_FINANCIAL_F_eq_NULL                                                                                                                                                                             | 100      | 100          |
      | 5501_ITRADE_MCLEOD_F_eq_NULL                                                                                                                                                                            | 100      | 100          |
      | 5501_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                                                                                                                               | 100      | 100          |
      | N-5501_MD_FINANCIAL_F_eq_Y                                                                                                                                                                              | 100      | 100          |
      | N-5501_ITRADE_MCLEOD_F_eq_Y                                                                                                                                                                             | 100      | 100          |
      | N-5501_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                                                                                                                                | 100      | 100          |


  @TFSAFund_Email_1113
  Scenario Outline: TFSA Fund_RS21092_5501_EMAIL Create test data for 1113
    Given load data from "TFSAFund" excel sheet
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
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
    Then insert customer details in "CUST_INSIGHTS" table having "3" accounts

    Examples:
      | Test cases                                                                                                                                                             | CUST_OPND_DT | Acct_Odt |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1  | 100          | 100      |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1   | 100          | 100      |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1   | 100          | 100      |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL! = 1 | 100          | 100      |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1    | 100          | 100      |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL ! = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1 | 100          | 100      |
#     Added for Jan 5th 2023 release
      | 5501_INSIGHT_CD_eq_FLG_WINTERINV_RS22124_CONTROL_CURR_VAL_ne_1                                                                                                         | 100          | 100      |
      | 5501_INSIGHT_CD_eq_FLG_WINTERINV_RS22124_CONTROL_CURR_VAL_eq_NULL                                                                                                      | 100          | 100      |
      | N-5501_INSIGHT_CD_eq_FLG_WINTERINV_RS22124_CONTROL_CURR_VAL_eq_1                                                                                                       | 100          | 100      |


  @TFSAFund_Email_1114
  Scenario Outline: TFSA Cross Sell_RS21091_5501_EMAIL Create test data for 1114
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
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
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "4" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "4" accounts

    Examples:
      | Test cases                                                                                                                                                                                                                                             | CUST_OPND_DT | Acct_Odt |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1 | 100          | 100      |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1  | 100          | 100      |

  @TFSAFund_Email_1222
  Scenario Outline: TFSA Cross Sell_RS21091_5501_EMAIL Create test data for 1222
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts

    Examples:
      | Test cases                                                                               | CUST_OPND_DT | Acct_Odt |
      | N-5501_PLN_ACCT_CD_MASTER != TFSA and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active | 100          | 100      |
      | N-5501_PLN_ACCT_CD_MASTER = TFSA  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active | 100          | 100      |
      | N-5501_PLN_ACCT_CD_MASTER = TFSA and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active  | 100          | 100      |
      | 5501_PRD CODE=01  SUB PRD CD=01                                                          | 100          | 100      |
      | 5501_PRD CODE=VGD SUB PRD CD=NF                                                          | 100          | 100      |
      | 5501_PRD CD = 02 SUB PRD CD = 05                                                         | 100          | 100      |
      | 5501_PRD CD = 19 SUB PRD CD = 05                                                         | 100          | 100      |
      | 5501_PRD CD = 13 SUB PRD CD = 05                                                         | 100          | 100      |
      | 5501_PRD CD = 07 SUB PRD CD = 01                                                         | 100          | 100      |
      | 5501_PRD CD = 23 SUB PRD CD = 02                                                         | 100          | 100      |
      | 5501_PRD CD = VGD SUB PRD CD= AB                                                         | 100          | 100      |
      | 5501_PRD CD = VCL SUB PRD CD= BC                                                         | 100          | 100      |
      | 5501_PRD CD = VLR SUB PRD CD= CD                                                         | 100          | 100      |
      | 5501_SRC_ACCT_STAT_CD! =  A                                                              | 100          | 100      |
      | 5501_SRC_ACCT_STAT_CD!  Open                                                             | 100          | 100      |
      | 5501_SRC_ACCT_STAT_CD = NULL                                                             | 100          | 100      |
      | N-5501_PRIMARY_ACCT_HOLDER_FLAG = N                                                      | 100          | 100      |
      | N-5501_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                   | 100          | 100      |


## June 8th 2023 Release
  @TFSA_Fund_EML @TFSA_Fund_EML_Positive_TestData_5501_June_8_2023 @5501 @EML @RS21092
  Scenario Outline: TFSA Contribution Fund 5501 RS21092 EML Create test data for Positive test cases for Jun 8th 2023 Release
    Given load data from "TFSAFund" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                                       | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 5501_EML_Seg_01_Trig_02_DO_NOT_SOLICIT_F_eq_NULL                 | 1        | 2           | 0             | NULL                 | NULL               |
      | 5501_Seg_01_Trig_04_ExtTable_VALID_START_DATE_lt_Curr_Dt         | 1        | 1           | 1             | 1                    | -2                 |
      | 5501_Seg_01_Trig_04_ExtTable_VALID_START_DATE_eq_Curr_Dt         | 1        | 1           | 1             | 0                    | -2                 |
      | 5501_Seg_01_Trig_04_ExtTable_VALID_END_DATE_gt_Curr_Dt           | 1        | 1           | 1             | 2                    | -1                 |
      | 5501_Seg_01_Trig_04_ExtTable_VALID_END_DATE_eq_Curr_Dt           | 1        | 1           | 1             | 2                    | 0                  |
      | 5501_Seg_01_Trig_04_ExtTable_2_Records                           | 1        | 1           | 2             | 2,3                  | -2,-3              |
#     Exclusion Scenarios
      | 5501_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    | 1        | 2           | 1             | 2                    | -2                 |
      | 5501_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 1        | 2           | 1             | 2                    | -2                 |
      | 5501_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       | 1        | 2           | 1             | 2                    | 1                  |
      | 5501_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     | 1        | 2           | 1             | -1                   | -2                 |


  @TFSA_Fund_EML @TFSA_Fund_EML_Negative_TestData_5501_June_8_2023 @5501 @EML @RS21092
  Scenario Outline: TFSA Contribution Fund 5501 RS21092 EML Create test data for Negative test cases for Jun 8th 2023 Release
    Given load data from "TFSAFund" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                                     | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | N-5501_EML_Seg_01_Trig_02_DO_NOT_SOLICIT_F_eq_Y                | 1        | 2           | 0             | NULL                 | NULL               |
      | N-5501_Seg_01_Trig_04_ExtTable_VALID_START_DATE_gt_Curr_Dt     | 1        | 1           | 1             | -1                   | -2                 |
      | N-5501_Seg_01_Trig_04_ExtTable_VALID_END_DATE_lt_Curr_Dt       | 1        | 1           | 1             | 2                    | 1                  |
      | N-5501_Seg_01_Trig_04_ExtTable_CAMPAIGN_CODE_ne_RS21092        | 1        | 1           | 1             | 2                    | -2                 |
      | N-5501_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_ne_CIE5501   | 1        | 1           | 1             | 2                    | -2                 |
      | N-5501_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_eq_NULL      | 1        | 1           | 1             | 2                    | -2                 |
      | N-5501_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_Y    | 1        | 1           | 1             | 2                    | -2                 |
      | N-5501_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 1        | 1           | 1             | 2                    | -2                 |
      | N-5501_Seg_01_Trig_04_ExtTable_EMAIL_CHANNEL_ne_Y              | 1        | 1           | 1             | 2                    | -2                 |
      | N-5501_Seg_01_Trig_04_ExtTable_EMAIL_CHANNEL_eq_NULL           | 1        | 1           | 1             | 2                    | -2                 |
#     Exclusion Scenarios
      | N-5501_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_gt_Curr_Dt   | 1        | 2           | 1             | 2                    | -1                 |
      | N-5501_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_eq_Curr_Dt   | 1        | 2           | 1             | 2                    | 0                  |
      | N-5501_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_lt_Curr_Dt | 1        | 2           | 1             | 1                    | -2                 |
      | N-5501_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_eq_Curr_Dt | 1        | 2           | 1             | 0                    | -2                 |

