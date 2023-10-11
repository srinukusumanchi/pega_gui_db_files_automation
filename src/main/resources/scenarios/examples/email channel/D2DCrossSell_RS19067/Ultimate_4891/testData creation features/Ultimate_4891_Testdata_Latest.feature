@4891_4891111901_TestDataCreation
Feature: Test data creation for Cross Sell Ultimate - 4891_4891111901


  @CrossSell_Email_4891_4891111901_SingleAcc_PositiveTCs_TestData
  Scenario Outline: Cross Sell 4891_EMAIL Create test data For single account Positive Test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
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
      | Test cases                                    | Acct_Odt | CUST_OPND_DT |
      | 4891_ISSUE = CrossSell and Group = Investment | 28       | 125          |
#      | 4891_DO_NOT_SOLICIT_F= Null                   | 28       | 125          |
#      | 4891_INDV_BRTH_DT_Greater than 18             | 28       | 125          |
#      | 4891_INDV_BRTH_DT_Equal to 18                 | 28       | 125          |
#      | 4891_LANG_CD=E                                | 28       | 125          |
#      | 4891_LANG_CD=EN                               | 29       | 125          |
#      | 4891_LANG_CD=F                                | 29       | 125          |
#      | 4891_LANG_CD=FR                               | 29       | 125          |
#      | 4891_LANG_CD_LowerCase=e                      | 29       | 125          |
#      | 4891_LANG_CD_LowerCase=en                     | 29       | 125          |
#      | 4891_LANG_CD_LowerCase=f                      | 30       | 125          |
#      | 4891_LANG_CD_LowerCase=fr                     | 30       | 125          |
#      | 4891_PRD CD- 23, SUB PRD CD -01               | 30       | 125          |
#      | 4891_PRD CD- 23, SUB PRD CD -03               | 30       | 125          |
#      | 4891_Account Open Date equal to 28 days       | 28       | 125          |
#      | 4891_Account Open Date equal to 33 days       | 33       | 125          |
#      | 4891_NTC_MCB=Y_Arrival Date within 3 years    | 28       | 125          |
#      | 4891_NTP_CUST_OPND_DT >120                    | 28       | 121          |
#      | 4891_NTP_CASL_CONSENT_F = Y                   | 28       | 125          |
#      | 4891_NTP_HARDBOUNCE_EMAIL_F !=Y               | 28       | 125          |
#      | 4891_NTP_UNSUBSCRIBED_F !=Y                   | 28       | 125          |
#      | 4891_NTB_CUST_OPND_DT < 120                   | 28       | 119          |
#      | 4891_NTB_CUST_OPND_DT = 120                   | 28       | 120          |
#      | 4891_NTB_CASL_CONSENT_F = Y                   | 28       | 110          |
#      | 4891_NTB_CASL_CONSENT_F = N                   | 28       | 10           |
#      | 4891_NTB_UNSUBSCRIBED_F !=Y                   | 28       | 10           |
#      | 4891_NTB_HARDBOUNCE_EMAIL_F !=Y               | 28       | 10           |
# Added by Sujoy on 2022-03-26
#      | 4891_NTP_UNSUBSCRIBED_F =NULL                | 28       | 125          |
#      | 4891_NTP_HARDBOUNCE_EMAIL_F =NULL            | 28       | 125          |
#      | 4891_NTB_UNSUBSCRIBED_F =NULL                | 28       | 10           |
#      | 4891_NTB_HARDBOUNCE_EMAIL_F =NULL            | 28       | 10           |


  @CrossSell_Email_4891_4891111901_SingleAcc_NegTCs
  Scenario Outline: Cross Sell 4891_EMAIL Create test data For single account Negative Test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
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
      | Test cases                        | Acct_Odt | CUST_OPND_DT |
#      | N-4891_PRIM_CNTRY_CD!= CA                     | 28       | 125          |
#      | N-4891_PRIM_CNTRY_CD= Null                    | 28       | 125          |
#      | N-4891_CUST_TP_CD != PSNL                     | 28       | 125          |
#      | N-4891_CUST_TP_CD =  Null                     | 28       | 125          |
#      | N-4891_DO_NOT_SOLICIT_F= Y                    | 29       | 125          |
#      | N-4891_Indv_Brth_Dt Equal to 17               | 29       | 125          |
#      | N-4891_Indv_Brth_Dt Equal to Null             | 29       | 125          |
#      | N-4891_Indv_Brth_Dt with in range (1-16)      | 29       | 125          |
#      | N-4891_PRD CD- 01, SUB PRD CD -08             | 29       | 125          |
#      | N-4891_PRD CD-02, SUB PRD CD -04              | 28       | 125          |
#      | N-4891_PRD CD- 07, SUB PRD CD -08             | 28       | 125          |
#      | N-4891_PRD CD- 18, SUB PRD CD -02             | 29       | 125          |
#      | N-4891_PRD CD-19, SUB PRD CD -11              | 30       | 125          |
#      | N-4891_PRD CD-23, SUB PRD CD -02              | 30       | 125          |
#      | N-4891_SRC_ACCT_STAT_CD- B                    | 30       | 125          |
#      | N-4891_SRC_ACCT_STAT_CD-Null                  | 30       | 125          |
#      | N-4891_Account Open Date greater than 33 days | 38       | 125          |
#      | N-4891_Account Open Date equal to Null        | NULL     | 125          |
#      | N-4891_Account Open Date less than 28         | 24       | 125          |
#      | N-4891_Account Open Date equals to 27         | 27       | 125          |
#      | N-4891_Account Open Date equals to 34         | 34       | 125          |
#      | N-4891_Deceased_F= Y                          | 30       | 125          |
#      | N-4891_Deceased_F= Null                       | 30       | 125          |
#      | N-4891_LANG_CD= K                             | 31       | 125          |
#      | N-4891_LANG_CD= NE                            | 31       | 125          |
#      | N-4891_LANG_CD= Null                          | 31       | 125          |
#      | N-4891_EMPLOYEE_STAFF_F= Y                    | 31       | 125          |
#      | N-4891_ACCT_SUBSYS_ID_KS                      | 31       | 125          |
#      | N-4891_Prv_Bnk_Ind= Null                      | 31       | 125          |
#      | N-4891_Prv_Bnk_Ind= Y                         | 32       | 125          |
#      | N-4891_MRKTBLE_F = N                          | 32       | 125          |
#      | N-4891_MRKTBLE_F = NULL                       | 32       | 125          |
      | N-4891_Do Not Email Flag=Y        | 32       | 125          |
      | N-4891_INDV_FRST_NM = Null        | 32       | 125          |
      | N-4891_INDV_LAST_NM = Null        | 32       | 125          |
      | N-4891_VLD_EMAIL_F = N            | 32       | 125          |
      | N-4891_PRIM_EMAIL_ADDR  = BLANK   | 32       | 125          |
      | N-4891_PRIM_EMAIL_ADDR  = NULL    | 31       | 125          |
#      | N-4891_Primary_Acct_Holder_Flag = N           | 31       | 125          |
      | N_4891_NTP_CASL_CONSENT_F = N     | 28       | 121          |
      | N_4891_NTP_HARDBOUNCE_EMAIL_F = Y | 28       | 125          |
      | N_4891_NTP_UNSUBSCRIBED_F =Y      | 28       | 125          |
      | N_4891_NTB_UNSUBSCRIBED_F =Y      | 28       | 110          |
      | N_4891_NTB_HARDBOUNCE_EMAIL_F = Y | 28       | 110          |
      | N_4891_NTB_CUST_OPND_DT > 120     | 28       | 121          |
      | N_4891_CUST_OPND_DT = NULL        | 28       | NULL         |
# Added by Sujoy on 2022-03-26
      | N-4891_VLD_EMAIL_F = NULL         | 32       | 125          |
      | N-4891_Do Not Email Flag=NULL     | 32       | 125          |


  @CrossSell_Email_4891_4891111901_MultipleAccs_Pos_Neg_TCs
  Scenario Outline: Cross Sell 4891_EMAIL Create test data for positive And Negative test cases for dual account
    Given load data from "D2DCrossSellLatest" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases | Acct_Odt | CUST_OPND_DT |
#      | 4891_MPSA_Prod_CD_BBB_UltimateAcc_2301_4891111901     | 28       | 125          |
#      | 4891_MPSA_SubSysId_AB_UltimateAcc_2301_4891111901     | 28       | 125          |
#      | 4891_MPSA_Status_InActive_UltimateAcc_2301_4891111901 | 28       | 125          |
#      | 4891_MPSA_Prod_CD_BBB_UltimateAcc_2303_4891111901     | 28       | 125          |
#      | 4891_MPSA_SubSysId_AB_UltimateAcc_2303_4891111901     | 28       | 125          |
#      | 4891_MPSA_Status_InActive_UltimateAcc_2303_4891111901 | 28       | 125          |
#      | N-4891_MPSA_Y_UltimateAcc_2301_4891111901             | 28       | 125          |
#      | N-4891_MPSA_Y_UltimateAcc_2303_4891111901             | 28       | 125          |


  # July 20th 2023 Release - External Table Exclusion Scenarios
  @CrossSell_Email_4891_External_Table_Exclusion_PositiveTCs_TestData
  Scenario Outline: Cross Sell 4891_EMAIL Create test data For External Table Exclusion Positive and Negative Test cases
    Given load data from "D2DCrossSellLatest" excel sheet

#    CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_OPND_DT_Val>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#    ACCT_DIM
    And  write account odt "<ACCT_ODT_Val>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

#   CUST_ACCT_RLTNP_DIM
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

#   EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
      | Test cases                                                       | ACCT_ODT_Val | CUST_OPND_DT_Val | EXT_TABLE_Cnt | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 4891_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    | 28           | 125              | 1             | 2                    | -2                 |
      | 4891_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 28           | 125              | 1             | 2                    | -2                 |
      | 4891_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       | 28           | 125              | 1             | 2                    | 1                  |
      | 4891_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     | 28           | 125              | 1             | -1                   | -2                 |
      | N-4891_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_gt_Curr_Dt     | 28           | 125              | 1             | 2                    | -1                 |
      | N-4891_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_eq_Curr_Dt     | 28           | 125              | 1             | 2                    | 0                  |
      | N-4891_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_lt_Curr_Dt   | 28           | 125              | 1             | 1                    | -2                 |
      | N-4891_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_eq_Curr_Dt   | 28           | 125              | 1             | 0                    | -2                 |
