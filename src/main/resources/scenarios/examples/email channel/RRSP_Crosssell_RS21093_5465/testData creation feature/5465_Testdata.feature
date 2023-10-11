@RRSPCrossSell_5465_EMAIL
Feature: Test data creation for EMAIL RRSP Cross Sell


  @RRSPCrossSell_Email @RRSPCrossSell_Positive_TestData_1 @5465 @RRSPCrossSellEMAIL @RS21091 @1111_RRSP
  Scenario Outline: RRSP Cross Sell_RS21091_5465_EMAIL Create test data for 1111
    Given load data from "RRSPCrossSell" excel sheet
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
      | Test cases                                                                                                                                                      | CUST_OPND_DT | Acct_Odt |
      | 5465_CUST_TP_CD=PSNL,5465_Primary Country Cd = CA,5465_CUST_AGE >18,5465_DO_NOT_SOLICIT_F = N,5465_MRKTBLE_F = Y,5465_NOT_AML_KYC = N,5465_Customer Not Decease | 100          | 100      |
      | 5465_CUST_AGE=18                                                                                                                                                | 100          | 100      |
      | 5465_CUST_AGE = 70                                                                                                                                              | 100          | 100      |
      | 5465_LANG_CD in E                                                                                                                                               | 100          | 100      |
      | 5465_LANG_CD in EN                                                                                                                                              | 100          | 100      |
      | 5465_LANG_CD in F                                                                                                                                               | 100          | 100      |
      | 5465_LANG_CD in FR                                                                                                                                              | 100          | 100      |
      | 5465_LANG_CD in small case_e                                                                                                                                    | 100          | 100      |
      | 5465_LANG_CD in small case_en                                                                                                                                   | 100          | 100      |
      | 5465_LANG_CD in small case_f                                                                                                                                    | 100          | 100      |
      | 5465_LANG_CD in small case_fr                                                                                                                                   | 100          | 100      |
      | 5465_DO_NOT_SOLICIT_F = NULL                                                                                                                                    | 100          | 100      |
      | 5465_DO_NOT_EMAIL_F=N                                                                                                                                           | 100          | 100      |
      | 5465_VLD_EML_F=Y                                                                                                                                                | 100          | 100      |
      | 5465_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                   | 100          | 100      |
      | 5465_INDV_FRST_NM!=NULL/BLANK                                                                                                                                   | 100          | 100      |
      | 5465_NOT_AML_KYC = NULL                                                                                                                                         | 100          | 100      |
      | 5465_CUST_OPND_DT > 90 days                                                                                                                                     | 92           | 100      |
      | 5465_ACCT_ODT > 90 days                                                                                                                                         | 100          | 92       |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                             | 100          | 100      |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                             | 100          | 100      |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP   and CUST_INSIGHTS.CURR_VAL > 1                                                                             | 100          | 100      |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP   and CUST_INSIGHTS.CURR_VAL = 1                                                                             | 100          | 100      |
      | 5465_PRD CODE=01  SUB PRD CD=01                                                                                                                                 | 100          | 100      |
      | 5465_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                 | 100          | 100      |
      | N-5465_CUST_TP_CD != PSNL                                                                                                                                       | 100          | 100      |
      | N-5465_Primary Country Cd != CA                                                                                                                                 | 100          | 100      |
      | N-5465_Primary Country Cd = NULL                                                                                                                                | 100          | 100      |
      | N-5465_CUST_AGE < 18                                                                                                                                            | 100          | 100      |
      | N-5465_CUST_AGE > 70                                                                                                                                            | 100          | 100      |
      | N-5465_CUST_AGE = NULL                                                                                                                                          | 100          | 100      |
      | N-5465_LANG_CD NOT in (EN, E, FR, F)                                                                                                                            | 100          | 100      |
      | N-5465_LANG_CD = NULL                                                                                                                                           | 100          | 100      |
      | N-5465_DO_NOT_SOLICIT_F = Y                                                                                                                                     | 100          | 100      |
      | N-5465_MRKTBLE_F = N                                                                                                                                            | 100          | 100      |
      | N-5465_MRKTBLE_F = NULL                                                                                                                                         | 100          | 100      |
      | N-5465_NOT_AML_KYC = Y                                                                                                                                          | 100          | 100      |
      | N-5465_CUST_OPNT_DT < 90 days                                                                                                                                   | 90           | 100      |
      | N-5465_CUST_OPNT_DT = 90 days                                                                                                                                   | 91           | 100      |
      | N-5465_CUST_OPNT_DT = NULL                                                                                                                                      | NULL         | 100      |
      | N-5465_Customer Decease - Y                                                                                                                                     | 100          | 100      |
      | N-5465_Customer Decease - NULL                                                                                                                                  | 100          | 100      |
      | N-5465_ACCT_ODT < 90 Days                                                                                                                                       | 100          | 90       |
      | N-5465_ACCT_ODT = 90 Days                                                                                                                                       | 100          | 91       |
      | 5465_PRD CD = 02 SUB PRD CD = 05                                                                                                                                | 100          | 100      |
      | 5465_PRD CD = 19 SUB PRD CD = 05                                                                                                                                | 100          | 100      |
      | 5465_PRD CD = 13 SUB PRD CD = 05                                                                                                                                | 100          | 100      |
      | 5465_PRD CD = 07 SUB PRD CD = 01                                                                                                                                | 100          | 100      |
      | 5465_PRD CD = 23 SUB PRD CD = 02                                                                                                                                | 100          | 100      |
      | 5465_PRD CD = VGD SUB PRD CD= AB                                                                                                                                | 100          | 100      |
      | 5465_PRD CD = VCL SUB PRD CD= BC                                                                                                                                | 100          | 100      |
      | 5465_PRD CD = VLR SUB PRD CD= CD                                                                                                                                | 100          | 100      |
      | 5465_SRC_ACCT_STAT_CD! =  A                                                                                                                                     | 100          | 100      |
      | 5465_SRC_ACCT_STAT_CD! = Open                                                                                                                                   | 100          | 100      |
      | 5465_SRC_ACCT_STAT_CD = NULL                                                                                                                                    | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1                                                                          | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                          | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL                                                                        | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1                                                                          | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD != FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                          | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL                                                                        | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1                                                                           | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL < 1                                                                             | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL = NULL                                                                          | 100          | 100      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL                                                                                        | 100          | 100      |
      | N-5465_DO_NOT_EMAIL_F=Y                                                                                                                                         | 100          | 100      |
      | N-5465_DO_NOT_EMAIL_F=NULL                                                                                                                                      | 100          | 100      |
      | N-5465_Valid Email Flag = N                                                                                                                                     | 100          | 100      |
      | N-5465_Valid Email Flag = NULL                                                                                                                                  | 100          | 100      |
      | N-5465_EMAIL Address = NULL                                                                                                                                     | 100          | 100      |
      | N-5465_First Name = NULL                                                                                                                                        | 100          | 100      |
      | 5465_Validate Rest period for the offer                                                                                                                         | 100          | 100      |
      | 5465_Validate Persistence period for the offer                                                                                                                  | 100          | 100      |


  @RRSPCrossSell_Email @RRSPCrossSell_Positive_TestData @5465 @RRSPCrossSellEMAIL @RS21091 @1221_RRSP
  Scenario Outline: RRSP Cross Sell_RS21091_5465_EMAIL Create test data for 1221
    Given load data from "RRSPCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                             | CUST_OPND_DT | Acct_Odt |
      | 5465_PLN_ACCT_CD_MASTER != RRSP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active | 100          | 100      |
      | 5465_PLN_ACCT_CD_MASTER = RRSP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active | 100          | 100      |
      | 5465_PLN_ACCT_CD_MASTER = RRSP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active  | 100          | 100      |
      | N-5465_PLN_ACCT_CD_MASTER = RRSP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active | 100          | 100      |


  @RRSPCrossSell_Email @RRSPCrossSell_Positive_TestData @5465 @RRSPCrossSellEMAIL @RS21091 @1112_RRSP
  Scenario Outline: RRSP Cross Sell_RS21091_5465_EMAIL Create test data for 1112
    Given load data from "RRSPCrossSell" excel sheet
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
      | Test cases                                                                                                                                                             | CUST_OPND_DT | Acct_Odt |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT  and CUST_INSIGHTS.CURR_VAL = 1 | 100          | 100      |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1   | 100          | 100      |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1   | 100          | 100      |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1 | 100          | 100      |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1) OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL < 1   | 100          | 100      |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1  | 100          | 100      |


  @RRSPCrossSell_Email @RRSPCrossSell_Positive_TestData @5465 @RRSPCrossSellEMAIL @RS21091 @1113_RRSP
  Scenario Outline: RRSP Cross Sell_RS21091_5465_EMAIL Create test data for 1113
    Given load data from "RRSPCrossSell" excel sheet
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
      | Test cases                                                                                                                                                                                                                                             | CUST_OPND_DT | Acct_Odt |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1 | 100          | 100      |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT  and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL < 1 | 100          | 100      |


  @RRSPCrossSell_Email_ExternalTable_Positive
  Scenario Outline: RRSP Cross Sell_RS21093_5465_EMAIL Create test data for Adding External Table Logic for Positive
    Given load data from "RRSPCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    And write Different Generic Dates in "Acct_Odt" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then insert customer account details in "ACCT_DIM" table
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#      # CUST_INSIGHTS
#    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_cnt>" accounts
##    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
##    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
#    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
##    Then insert customer details in "CUST_INSIGHTS" table
#    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write current CID into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_START_DATE" field with "<V_VALID_START_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<V_VALID_END_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
#    Then insert customer and account details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<Ext_Inp_File_Cnt>" records


    Examples:
      | Test cases                            | CUST_OPND_DT | Acct_Cnt | Acct_Odt_Val | Ext_Inp_File_Cnt | V_VALID_START_DATE | V_VALID_END_DATE |
      | 5465_EML_VALID_START_DATE_lt_Curr_Dt  | 100          | 1        | 100          | 1                | 1                  | -5               |
      | 5465_EML_VALID_START_DATE_eq_Curr_Dt  | 100          | 1        | 100          | 1                | 0                  | -5               |
      | 5465_EML_VALID_END_DATE_gt_Curr_Dt    | 100          | 1        | 100          | 1                | 5                  | -1               |
      | 5465_EML_VALID_END_DATE_eq_Curr_Dt    | 100          | 1        | 100          | 1                | 5                  | 0                |

    #Multiple Accounts,Insights,External Records

      | 5465_EML_Multiple_Externaltbl_Records | 100          | 2        | 100          | 2                | 1,4                | -5,-5            |


  @RRSPCrossSell_Email_ExternalTable_Negative
  Scenario Outline: RRSP Cross Sell_RS21093_5465_EMAIL Create test data for Adding External Table Logic for Negative cases
    Given load data from "RRSPCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    #CUST_ACCT_RLTNP_DIM
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

#      # CUST_INSIGHTS
#    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
#    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
#    Then insert customer details in "CUST_INSIGHTS" table

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write current CID into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_START_DATE" field with "<V_VALID_START_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<V_VALID_END_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
#    Then insert customer and account details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<Ext_Inp_File_Cnt>" records


    Examples:
      | Test cases                                 | CUST_OPND_DT | Acct_Odt | Ext_Inp_File_Cnt | V_VALID_START_DATE | V_VALID_END_DATE |
      | N_5465_EML_VALID_START_DATE_gt_Curr_Dt     | 100          | 100      | 1                | -1                 | -5               |
      | N_5465_EML_VALID_END_DATE_lt_Curr_Dt       | 92           | 93       | 1                | 5                  | 1                |
      | N_5465_EML_CAMPAIGN_CODE_ne_RS21093        | 92           | 93       | 1                | 5                  | -5               |
      | N_5465_EML_CAMPAIGN_CELL_CODE_ne_CIE5465   | 92           | 92       | 1                | 5                  | -5               |
      | N_5465_EML_CAMPAIGN_CELL_CODE_eq_NULL      | 92           | 93       | 1                | 5                  | -5               |
      | N_5465_EML_CAMPAIGN_CELL_CODE_FLAG_ne_Y    | 92           | 93       | 1                | 5                  | -5               |
      | N_5465_EML_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 92           | 93       | 1                | 5                  | -5               |
      | N_5465_EML_EMAIL_CHANNEL_ne_Y              | 92           | 92       | 1                | 5                  | -5               |
      | N_5465_EML_EMAIL_CHANNEL_eq_NULL           | 92           | 93       | 1                | 5                  | -5               |
## Added for july 06th 2023 REL
  @RRSPCrossSell_Email_CUST_EV_EB_Table_Positive
  Scenario Outline: RRSP Cross Sell_RS21093_5465_EMAIL Create test data for cust_ev_eb Table Logic for Positive cases
    Given load data from "RRSPCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    And write Different Generic Dates in "Acct_Odt" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

        # CUST_EV_EB
    When write cid into "CUST_EV_EB" sheet for "<Test cases>"  having "<CUST_EV_EB_Cnt>" accounts
    Then write Timestamp in "INSRT_PROCESS_TMSTMP" field into "CUST_EV_EB" sheet for "<Test cases>" having "<CUST_EV_EB_Cnt>" accounts
    Then insert customer details in "CUST_EV_EB" table having "<CUST_EV_EB_Cnt>" accounts

    Examples:
      | Test cases                                                                      | CUST_OPND_DT | Acct_Odt_Val | CUST_EV_EB_Cnt | Acct_Cnt |
      | 5465_EML_Trigger4                                                               | 100          | 100          | 1              | 1        |
      | 5465_EML_Trigger4_EV_RT_RRSP_XSELL _eq_DSS_Name_RRSP_Xsell_RS21093_EV_Threshold | 100          | 100          | 1              | 1        |
      | N_5465_EML_Trigger4_EV_RT_RRSP_XSELL _lt_DSS_RRSP_Xsell_RS21093_EV_Threshold    | 100          | 100          | 1              | 1        |
      | N_5465_EML_Trigger4_EV_RT_RRSP_XSELL_eq_NULL                                    | 100          | 100          | 1              | 1        |
