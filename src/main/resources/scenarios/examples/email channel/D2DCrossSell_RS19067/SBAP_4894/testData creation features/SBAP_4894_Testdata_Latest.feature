@4894_4894111901_TestDataCreation
Feature: Test data creation for Cross Sell SBAP - 4894_4894111901


  @CrossSell_Email_4894_4894111901_SingleAcc_PositiveTCs_TestData
  Scenario Outline: Cross Sell 4894_EMAIL Create test data For single account Positive Test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<Arrival_Dt_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | ACCT_ODT_Val | CUST_OPND_DT | Arrival_Dt_Val | Acct_Cnt |
#      | 4894_ISSUE = CrossSell and Group = Investment                              | 31      | 125          |45|1|
#      | 4894_DO_NOT_SOLICIT_F= Null                                                | 28       | 125          |45|1|
#      | 4894_INDV_BRTH_DT_Equal to 18                                              | 28       | 125          |45|1|
#      | 4894_LANG_CD=E                                                             | 28       | 125          |45|1|
#      | 4894_LANG_CD=EN                                                            | 29       | 125          |45|1|
#      | 4894_LANG_CD=F                                                             | 29       | 125          |45|1|
#      | 4894_LANG_CD=FR                                                            | 29       | 125          |45|1|
#      | 4894_LANG_CD_LowerCase=e                                                   | 29       | 125          |45|1|
      | 4894_LANG_CD_LowerCase=en | 29           | 125          | 45             | 1        |
#      | 4894_LANG_CD_LowerCase=f                                                   | 29       | 125          |45|1|
#      | 4894_LANG_CD_LowerCase=fr                                                  | 30       | 125          |45|1|
#      | 4894_PRD CD- 07, SUB PRD CD -11                                            | 30       | 125          |45|1|
#      | 4894_PRD CD- 07, SUB PRD CD -12                                            | 30       | 125          |45|1|
#      | 4894_Account Open Date equal to 28 days                                    | 28       | 125          |45|1|
#      | 4894_Account Open Date equal to 33 days                                    | 33       | 125          |45|1|
#      | 4894_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=07_SUB PRD CD=11         | 28       | 125          |45|1|
#      | 4894_N-NTC_MCB=N_Arrival Date within 3 years_PRD CD=07_SUB PRD CD=11       | 28       | 125          |45|1|
#      | 4894_N-NTC_MCB=Y_Arrival Date greater than 3 years_PRD CD=07_SUB PRD CD=12 | 28       | 125          |45|1|
#      | 4894_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=07_SUB PRD CD=12         | 28       | 125          |45|1|
#      | N-4894_ARRV_DT = 3 years                                                   | 28       | 125          |45|1|
#      | N-4894_MCB_IND = NULL                                                      | 28       | 125          |45|1|
#      | 4894_NTP_CUST_OPND_DT >120                                                 | 28       | 121          |45|1|
#      | 4894_NTP_CASL_CONSENT_F = Y                                                | 28       | 125          |45|1|
#      | 4894_NTP_HARDBOUNCE_EMAIL_F !=Y                                            | 28       | 125          |45|1|
#      | 4894_NTP_UNSUBSCRIBED_F !=Y                                                | 28       | 125          |45|1|
#      | 4894_NTB_CUST_OPND_DT < 120                                                | 28       | 119          |45|1|
#      | 4894_NTB_CUST_OPND_DT = 120                                                | 28       | 120          |45|1|
#      | 4894_NTB_CASL_CONSENT_F = Y                                                | 28       | 110          |45|1|
#      | 4894_NTB_CASL_CONSENT_F = N                                                | 28       | 10           |45|1|
#      | 4894_NTB_UNSUBSCRIBED_F !=Y                                                | 28       | 10           |45|1|
#      | 4894_NTB_HARDBOUNCE_EMAIL_F !=Y                                            | 28       | 10           |45|1|
#      | 4894_NTC Creative_NTP_CUST_OPND_DT >120                                    | 31       | 121          |45|1|
#      | 4894_NTC Creative_NTP_CASL_CONSENT_F = Y                                   | 31       | 125          |1825|1|
#      | 4894_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                               | 28       | 125          |45|1|
#      | 4894_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                   | 28       | 125          |45|1|
#      | 4894_NTC Creative_NTB_CUST_OPND_DT < 120                                   | 28       | 119          |45|1|
#      | 4894_NTC Creative_NTB_CUST_OPND_DT = 120                                   | 28       | 120          |45|1|
#      | 4894_NTC Creative_NTB_CASL_CONSENT_F = Y                                   | 28       | 110          |45|1|
#      | 4894_NTC Creative_NTB_CASL_CONSENT_F = N                                   | 28       | 10           |45|1|
#      | 4894_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                   | 28       | 10           |45|1|
#      | 4894_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                               | 28       | 10           |45|1|
## Added by Sujoy on 2022-03-26
#      | 4894_NTP_UNSUBSCRIBED_F =NULL                                                | 28       | 125          |45|1|
#      | 4894_NTP_HARDBOUNCE_EMAIL_F =NULL                                            | 28       | 125          |45|1|
#      | 4894_NTB_UNSUBSCRIBED_F =NULL                                                | 28       | 10           |45|1|
#      | 4894_NTB_HARDBOUNCE_EMAIL_F =NULL                                            | 28       | 10           |45|1|
#      | 4894_NTC Creative_NTP_UNSUBSCRIBED_F =NULL                                   | 28       | 125          |45|1|
#      | 4894_NTC Creative_NTP_HARDBOUNCE_EMAIL_F =NULL                               | 28       | 125          |45|1|
#      | 4894_NTC Creative_NTB_UNSUBSCRIBED_F =NULL                                   | 28       | 10           |45|1|
#      | 4894_NTC Creative_NTB_HARDBOUNCE_EMAIL_F =NULL                               | 28       | 10           |45|1|

#      | 4894_NTC Creative_ARRV_DT_eq_5years           | 31           | 125          | 1826             | 1        |
#      | 4894_NTC Creative_ARRV_DT_gt_5years          | 31           | 125          | 1827             | 1        |
#      | 4894_NTC Creative_ARRV_DT_eq_NULL             | 31           | 125          | NULL             | 1        |

  @CrossSell_Email_4894_4894111901_SingleAcc_NegTCs
  Scenario Outline: Cross Sell 4894_EMAIL Create test data For single account Negative Test cases
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
#    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
#    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases | Acct_Odt | CUST_OPND_DT | Arrival_Dt_Val | Acct_Cnt |
#      | N-4894_PRIM_CNTRY_CD!= CA                      | 28       | 125          |45|1|
#      | N-4894_PRIM_CNTRY_CD= Null                     | 28       | 125          |45|1|
#      | N-4894_CUST_TP_CD != PSNL                      | 28       | 125          |45|1|
#      | N-4894_CUST_TP_CD =  Null                      | 28       | 125          |45|1|
#      | N-4894_DO_NOT_SOLICIT_F= Y                     | 28       | 125          |45|1|
#      | N-4894_Indv_Brth_Dt Equal to 17                | 28       | 125          |45|1|
#      | N-4894_Indv_Brth_Dt Equal to Null              | 28       | 125          |45|1|
#      | N-4894_Indv_Brth_Dt with in range (1-16)       | 28       | 125          |45|1|
#      | N-4894_PRD CD- 01, SUB PRD CD -08              | 28       | 125          |45|1|
#      | N-4894_PRD CD-02, SUB PRD CD -04               | 29       | 125          |45|1|
#      | N-4894_PRD CD- 07, SUB PRD CD -08              | 29       | 125          |45|1|
#      | N-4894_PRD CD-13, SUB PRD CD -12               | 29       | 125          |45|1|
#      | N-4894_PRD CD- 18, SUB PRD CD -02              | 29       | 125          |45|1|
#      | N-4894_PRD CD-19, SUB PRD CD -11               | 29       | 125          |45|1|
#      | N-4894_PRD CD-23, SUB PRD CD -02               | 29       | 125          |45|1|
#      | N-4894_SRC_ACCT_STAT_CD- B                     | 30       | 125          |45|1|
#      | N-4894_SRC_ACCT_STAT_CD-Null                   | 30       | 125          |45|1|
#      | N-4894_Account Open Date greater than 33 days  | 39       | 125          |45|1|
#      | N-4894_Account Open Date equal to Null         | NULL     | 125          |45|1|
#      | N-4894_Account Open Date less than 28          | 12       | 125          |45|1|
#      | N-4894_Account Open Date equals to 27          | 27       | 125          |45|1|
#      | N-4894_Account Open Date equals to 34          | 34       | 125          |45|1|
#      | N-4894_Deceased_F= Y                           | 30       | 125          |45|1|
#      | N-4894_Deceased_F= Null                        | 30       | 125          |45|1|
#      | N-4894_LANG_CD= K                              | 30       | 125          |45|1|
#      | N-4894_LANG_CD= NE                             | 30       | 125          |45|1|
#      | N-4894_LANG_CD= Null                           | 31       | 125          |45|1|
#      | N-4894_EMPLOYEE_STAFF_F= Y                     | 31       | 125          |45|1|
#      | N-4894_ACCT_SUBSYS_ID_KS                       | 31       | 125          |45|1|
#      | N-4894_Prv_Bnk_Ind= Null                       | 31       | 125          |45|1|
#      | N-4894_Prv_Bnk_Ind= Y                          | 31       | 125          |45|1|
#      | N-4894_MRKTBLE_F = N                           | 31       | 125          |45|1|
#      | N-4894_MRKTBLE_F = NULL                        | 32       | 125          |45|1|
#      | N-4894_Do Not Email Flag=Y                     | 32       | 125          |45|1|
#      | N-4894_INDV_FRST_NM = Null                     | 32       | 125          |45|1|
#      | N-4894_INDV_LAST_NM = Null                     | 32       | 125          |45|1|
#      | N-4894_VLD_EMAIL_F = N                         | 32       | 125          |45|1|
#      | N-4894_PRIM_EMAIL_ADDR  = BLANK                | 32       | 125          |45|1|
#      | N-4894_PRIM_EMAIL_ADDR  = NULL                 | 32       | 125          |45|1|
##      | N-4894_Primary_Acct_Holder_Flag = N            | 32       | 125          |45|1|
#      | N_4894_NTP_CASL_CONSENT_F = N                  | 28       | 121          |45|1|
#      | N_4894_NTP_HARDBOUNCE_EMAIL_F = Y              | 28       | 125          |45|1|
#      | N_4894_NTP_UNSUBSCRIBED_F =Y                   | 28       | 125          |45|1|
#      | N_4894_NTB_UNSUBSCRIBED_F =Y                   | 28       | 110          |45|1|
#      | N_4894_NTB_HARDBOUNCE_EMAIL_F = Y              | 28       | 110          |45|1|
#      | N_4894_NTB_CUST_OPND_DT > 120                  | 28       | 121          |45|1|
#      | N_4894_CUST_OPND_DT = NULL                     | 28       | NULL         |45|1|
#      | N_4894_NTC Creative_NTP_CASL_CONSENT_F = N     | 28       | 121          |45|1|
#      | N_4894_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y | 28       | 125          |45|1|
#      | N_4894_NTC Creative_NTP_UNSUBSCRIBED_F =Y      | 28       | 125          |45|1|
#      | N_4894_NTC Creative_NTB_UNSUBSCRIBED_F =Y      | 28       | 110          |45|1|
#      | N_4894_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y | 28       | 110          |45|1|
#      | N_4894_NTC Creative_NTB_CUST_OPND_DT > 120     | 28       | 121          |45|1|
#      | N_4894_NTC Creative_CUST_OPND_DT = NULL        | 28       | NULL         |45|1|
## Added by Sujoy on 2022-03-26
#      | N-4894_Do Not Email Flag=NULL                  | 32       | 125          |45|1|
#      | N-4894_VLD_EMAIL_F = NULL                      | 32       | 125          |45|1|


  @CrossSell_Email_4894_4894111901_MultipleAccs_Pos_Neg_TCs
  Scenario Outline: Cross Sell 4894_EMAIL Create test data for positive And Negative test cases for dual account
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
    When write cid and account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    Then insert customer in "PURL_CUST_PROFILE" table having "2" accounts
    Examples:
      | Test cases | Acct_Odt | CUST_OPND_DT | Arrival_Dt_Val | Acct_Cnt |
#      | 4894_MPSA_Prod_CD_BBB_SBAPAcc_0711_4894111901     | 28       | 125          |45|1|
#      | 4894_MPSA_SubSysId_AB_SBAPAcc_0711_4894111901     | 28       | 125          |45|1|
#      | 4894_MPSA_Status_InActive_SBAPAcc_0711_4894111901 | 28       | 125          |45|1|
#      | 4894_MPSA_Prod_CD_BBB_SBAPAcc_0712_4894111901     | 29       | 125          |45|1|
#      | 4894_MPSA_SubSysId_AB_SBAPAcc_0712_4894111901     | 29       | 125          |45|1|
#      | 4894_MPSA_Status_InActive_SBAPAcc_0712_4894111901 | 29       | 125          |45|1|
#      | N-4894_MPSA_Y_SBAPAcc_0711_4894111901             | 30       | 125          |45|1|
#      | N-4894_MPSA_Y_SBAPAcc_0712_4894111901             | 30       | 125          |45|1|
#      | N-4894_Account>1                                  | 28       | 125          |45|1|
#      | N-4894_MultipleAccounts_Active_Non-Active         | 30       | 125          |45|1|


  # July 20th 2023 Release - External Table Exclusion Scenarios
  @CrossSell_Email_4894_External_Table_Exclusion_PositiveTCs_TestData
  Scenario Outline: Cross Sell 4894_EMAIL Create test data For External Table Exclusion Positive and Negative Test cases
    Given load data from "D2DCrossSellLatest" excel sheet

#    CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_OPND_DT_Val>" into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<Arrival_Dt_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#    ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

#  CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#   EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
      | Test cases                                                       | Acct_Cnt | ACCT_ODT_Val | CUST_OPND_DT_Val | EXT_TABLE_Cnt | VALID_START_DATE_Val | VALID_END_DATE_Val | Arrival_Dt_Val |
      | 4894_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    | 1        | 29           | 125              | 1             | 2                    | -2                 | 45             |
      | 4894_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 1        | 29           | 125              | 1             | 2                    | -2                 | 45             |
      | 4894_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       | 1        | 29           | 125              | 1             | 2                    | 1                  | 45             |
      | 4894_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     | 1        | 29           | 125              | 1             | -1                   | -2                 | 45             |
      | N-4894_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_gt_Curr_Dt     | 1        | 29           | 125              | 1             | 2                    | -1                 | 45             |
      | N-4894_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_eq_Curr_Dt     | 1        | 29           | 125              | 1             | 2                    | 0                  | 45             |
      | N-4894_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_lt_Curr_Dt   | 1        | 29           | 125              | 1             | 1                    | -2                 | 45             |
      | N-4894_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_eq_Curr_Dt   | 1        | 29           | 125              | 1             | 0                    | -2                 | 45             |

