@TFSACrossSell_5464_Email
Feature: Test data creation for EMail TFSA Cross Sell


  @TFSACrossSell_Email_1111
  Scenario Outline: TFSA Cross Sell_RS21091_5464_EMAIL Create test data for 1111
    Given load data from "TFSACrossSell" excel sheet
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
      | Test cases                                                                                                                                                                                              | CUST_OPND_DT | Acct_Odt |
      | 5464_CUST_TP_CD=PSNL,5464_Primary Country Cd = CA,5464_CUST_AGE >18,5464_DO_NOT_SOLICIT_F = N,5464_MRKTBLE_F = Y,5464_NOT_AML_KYC = N,CUST_OPNT_DT > 90 days,5464_Customer Not Decease,5464_ACCT_ODT>90 | 92           | 92       |
      | 5464_CUST_AGE=18                                                                                                                                                                                        | 92           | 93       |
      | 5464_LANG_CD in E                                                                                                                                                                                       | 92           | 92       |
      | 5464_LANG_CD in EN                                                                                                                                                                                      | 93           | 93       |
      | 5464_LANG_CD in F                                                                                                                                                                                       | 94           | 94       |
      | 5464_LANG_CD in FR                                                                                                                                                                                      | 95           | 95       |
      | 5464_LANG_CD in small case_e                                                                                                                                                                            | 96           | 96       |
      | 5464_LANG_CD in small case_en                                                                                                                                                                           | 97           | 97       |
      | 5464_LANG_CD in small case_f                                                                                                                                                                            | 98           | 98       |
      | 5464_LANG_CD in small case_fr                                                                                                                                                                           | 99           | 99       |
      | 5464_DO_NOT_SOLICIT_F = NULL                                                                                                                                                                            | 100          | 100      |
      | 5464_DO_NOT_EMAIL_F=N                                                                                                                                                                                   | 101          | 101      |
      | 5464_VLD_EML_F=Y                                                                                                                                                                                        | 102          | 102      |
      | 5464_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                           | 103          | 103      |
      | 5464_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                           | 104          | 104      |
      | 5464_NOT_AML_KYC = NULL                                                                                                                                                                                 | 105          | 105      |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                     | 106          | 106      |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                     | 107          | 107      |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA   and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                     | 108          | 108      |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA   and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                     | 108          | 108      |
      | 5464_PRD CODE=01  SUB PRD CD=01                                                                                                                                                                         | 109          | 109      |
      | 5464_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                                                         | 110          | 110      |
      | N-5464_CUST_TP_CD != PSNL                                                                                                                                                                               | 111          | 111      |
      | N-5464_Primary Country Cd != CA                                                                                                                                                                         | 112          | 112      |
      | N-5464_Primary Country Cd = NULL                                                                                                                                                                        | 113          | 113      |
      | N-5464_CUST_AGE < 18                                                                                                                                                                                    | 114          | 114      |
      | N-5464_CUST_AGE = NULL                                                                                                                                                                                  | 115          | 115      |
      | N-5464_LANG_CD NOT in (EN, E, FR, F)                                                                                                                                                                    | 116          | 116      |
      | N-5464_LANG_CD = NULL                                                                                                                                                                                   | 117          | 117      |
      | N-5464_DO_NOT_SOLICIT_F = Y                                                                                                                                                                             | 118          | 118      |
      | N-5464_MRKTBLE_F = N                                                                                                                                                                                    | 119          | 119      |
      | N-5464_MRKTBLE_F = NULL                                                                                                                                                                                 | 120          | 120      |
      | N-5464_NOT_AML_KYC = Y                                                                                                                                                                                  | 121          | 121      |
      | N-5464_CUST_OPNT_DT < 90 days                                                                                                                                                                           | 90           | 122      |
      | N-5464_CUST_OPNT_DT = 90 days                                                                                                                                                                           | 91           | 123      |
      | N-5464_CUST_OPNT_DT = NULL                                                                                                                                                                              | NULL         | 124      |
      | N-5464_Customer Decease - Y                                                                                                                                                                             | 122          | 122      |
      | N-5464_Customer Decease - NULL                                                                                                                                                                          | 123          | 123      |
      | N-5464_ACCT_ODT < 90 Days                                                                                                                                                                               | 124          | 90       |
      | N-5464_ACCT_ODT = 90 Days                                                                                                                                                                               | 125          | 91       |
      | 5464_PRD CD = 02 SUB PRD CD = 05                                                                                                                                                                        | 126          | 126      |
      | 5464_PRD CD = 19 SUB PRD CD = 05                                                                                                                                                                        | 127          | 127      |
      | 5464_PRD CD = 13 SUB PRD CD = 05                                                                                                                                                                        | 128          | 128      |
      | 5464_PRD CD = 07 SUB PRD CD = 01                                                                                                                                                                        | 129          | 129      |
      | 5464_PRD CD = 23 SUB PRD CD = 02                                                                                                                                                                        | 130          | 130      |
      | 5464_PRD CD = VGD SUB PRD CD= AB                                                                                                                                                                        | 131          | 131      |
      | 5464_PRD CD = VCL SUB PRD CD= BC                                                                                                                                                                        | 132          | 132      |
      | 5464_PRD CD = VLR SUB PRD CD= CD                                                                                                                                                                        | 133          | 133      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1                                                                                                                  | 134          | 134      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                  | 135          | 135      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                | 136          | 136      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1                                                                                                                  | 137          | 137      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD != FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                  | 138          | 138      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                | 139          | 139      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1                                                                                                                   | 140          | 140      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1                                                                                                                     | 141          | 141      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                  | 142          | 142      |
      | N-5464_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL                                                                                                                                | 143          | 143      |
      | N-5464_DO_NOT_EMAIL_F=Y                                                                                                                                                                                 | 144          | 144      |
      | N-5464_DO_NOT_EMAIL_F=NULL                                                                                                                                                                              | 145          | 145      |
      | N-5464_Valid Email Flag = N                                                                                                                                                                             | 146          | 146      |
      | N-5464_Valid Email Flag = NULL                                                                                                                                                                          | 147          | 147      |
      | N-5464_EMAIL Address = NULL                                                                                                                                                                             | 148          | 148      |
      | N-5464_First Name = NULL                                                                                                                                                                                | 149          | 149      |
      | 5464_Validate Rest period for the offer                                                                                                                                                                 | 153          | 153      |
      | 5464_Validate Persistence period for the offer                                                                                                                                                          | 154          | 154      |
      | 5464_SRC_ACCT_STAT_CD! =  A                                                                                                                                                                             | 92           | 92       |
      | 5464_SRC_ACCT_STAT_CD!  Open                                                                                                                                                                            | 92           | 92       |
      | 5464_SRC_ACCT_STAT_CD = NULL                                                                                                                                                                            | 93           | 93       |

  @TFSACrossSell_Email_1221
  Scenario Outline: TFSA Cross Sell_RS21091_5464_EMAIL Create test data for 1221
    Given load data from "TFSACrossSell" excel sheet
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
      | 5464_PLN_ACCT_CD_MASTER != TFSA and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active | 95           | 95       |
      | 5464_PLN_ACCT_CD_MASTER = TFSA  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active | 92           | 92       |
      | 5464_PLN_ACCT_CD_MASTER = TFSA and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active  | 93           | 93       |
      | N-5464_PLN_ACCT_CD_MASTER = TFSA and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active | 94           | 94       |

  @TFSACrossSell_Email_1112
  Scenario Outline: TFSA Cross Sell_RS21091_5464_EMAIL Create test data for 1112
    Given load data from "TFSACrossSell" excel sheet
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
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1  | 95           | 95       |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1   | 92           | 92       |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1   | 93           | 93       |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL! = 1 | 94           | 94       |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1    | 95           | 95       |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL ! = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1 | 96           | 96       |

  @TFSACrossSell_Email_1113
  Scenario Outline: TFSA Cross Sell_RS21091_5464_EMAIL Create test data for 1113
    Given load data from "TFSACrossSell" excel sheet
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
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1 | 95           | 95       |
      | 5464_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1  | 92           | 92       |

  @TFSACrossSell_Email_ExternalTable_Positive
  Scenario Outline: TFSA Cross Sell_RS21091_5464_EMAIL Create test data for Adding External Table Logic for Positive
    Given load data from "TFSACrossSell" excel sheet
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
      | 5464_EML_VALID_START_DATE_lt_Curr_Dt  | 100          | 1        | 100          | 1                | 1                  | -5               |
      | 5464_EML_VALID_START_DATE_eq_Curr_Dt  | 100          | 1        | 100          | 1                | 0                  | -5               |
      | 5464_EML_VALID_END_DATE_gt_Curr_Dt    | 100          | 1        | 100          | 1                | 5                  | -1               |
      | 5464_EML_VALID_END_DATE_eq_Curr_Dt    | 100          | 1        | 100          | 1                | 5                  | 0                |

    #Multiple Accounts,External Records

      | 5464_EML_Multiple_Externaltbl_Records | 100          | 2        | 100          | 2                | 1,4                | -5,-5            |


  @TFSACrossSell_Email_ExternalTable_Negative
  Scenario Outline: TFSA Cross Sell_RS21091_5464_EMAIL Create test data for Adding External Table Logic for Negative cases
    Given load data from "TFSACrossSell" excel sheet
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
      | N_5464_EML_VALID_START_DATE_gt_Curr_Dt     | 100          | 100      | 1                | -1                 | -5               |
      | N_5464_EML_VALID_END_DATE_lt_Curr_Dt       | 92           | 93       | 1                | 5                  | 1                |
      | N_5464_EML_CAMPAIGN_CODE_ne_RS21091        | 92           | 93       | 1                | 5                  | -5               |
      | N_5464_EML_CAMPAIGN_CELL_CODE_ne_CIE5464   | 92           | 92       | 1                | 5                  | -5               |
      | N_5464_EML_CAMPAIGN_CELL_CODE_eq_NULL      | 92           | 93       | 1                | 5                  | -5               |
      | N_5464_EML_CAMPAIGN_CELL_CODE_FLAG_ne_Y    | 92           | 93       | 1                | 5                  | -5               |
      | N_5464_EML_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 92           | 93       | 1                | 5                  | -5               |
      | N_5464_EML_EMAIL_CHANNEL_ne_Y              | 92           | 92       | 1                | 5                  | -5               |
      | N_5464_EML_EMAIL_CHANNEL_eq_NULL           | 92           | 93       | 1                | 5                  | -5               |

## Added for july 06th 2023 REL
  @TFSACrossSell_Email_CUST_EV_EB_Table_Positive
  Scenario Outline: TFSA Cross Sell_RS21091_5464_EMAIL Create test data for cust_ev_eb Table Logic for Positive cases
    Given load data from "TFSACrossSell" excel sheet
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
      | 5464_EML_Trigger4                                                               | 92           | 92           | 1              | 1        |
      | 5464_EML_Trigger4_EV_RT_TFSA_XSELL _eq_DSS_Name_TFSA_Xsell_RS21091_EV_Threshold | 92           | 92           | 1              | 1        |
      | N_5464_EML_Trigger4_EV_RT_TFSA_XSELL _lt_DSS_TFSA_Xsell_RS21091_EV_Threshold    | 92           | 92           | 1              | 1        |
      | N_5464_EML_Trigger4_EV_RT_TFSA_XSELL_eq_NULL                                    | 92           | 92           | 1              | 1        |










