@4893_4893111901_TestDataCreation
Feature: Test data creation for Cross Sell Ultimate - 4893_4893111901


  @CrossSell_Email_4893_4893111901_SingleAcc_PositiveTCs_TestData
  Scenario Outline: Cross Sell 4893_EMAIL Create test data For single account Positive Test cases
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
      | Test cases                | Acct_Odt | CUST_OPND_DT |
#      | 4893_ISSUE = CrossSell and Group = Investment  | 28       | 125          |
#      | 4893_DO_NOT_SOLICIT_F= Null                    | 28       | 125          |
#      | 4893_INDV_BRTH_DT_Equal to 18                  | 28       | 125          |
#      | 4893_LANG_CD=E                                 | 28       | 125          |
#      | 4893_LANG_CD=EN                                | 28       | 125          |
#      | 4893_LANG_CD=F                                 | 28       | 125          |
#      | 4893_LANG_CD=FR                                | 28       | 125          |
#      | 4893_LANG_CD_LowerCase=e                       | 28       | 125          |
      | 4893_LANG_CD_LowerCase=en | 29       | 125          |
#      | 4893_LANG_CD_LowerCase=f                       | 29       | 125          |
#      | 4893_LANG_CD_LowerCase=fr                      | 29       | 125          |
#      | 4893_PRD CD- 01, SUB PRD CD -01                | 29       | 125          |
#      | 4893_PRD CD- 01, SUB PRD CD -02                | 30       | 125          |
#      | 4893_PRD CD- 01, SUB PRD CD -03                | 30       | 125          |
#      | 4893_PRD CD- 01, SUB PRD CD -04                | 30       | 125          |
#      | 4893_PRD CD- 02, SUB PRD CD -01                | 30       | 125          |
#      | 4893_PRD CD- 02, SUB PRD CD -02                | 30       | 125          |
#      | 4893_PRD CD- 02, SUB PRD CD -03                | 30       | 125          |
#      | 4893_PRD CD- 19, SUB PRD CD -01                | 30       | 125          |
#      | 4893_PRD CD- 19, SUB PRD CD -02                | 31       | 125          |
#      | 4893_PRD CD- 19, SUB PRD CD -03                | 31       | 125          |
#      | 4893_PRD CD- 19, SUB PRD CD -04                | 31       | 125          |
#      | 4893_PRD CD- 19, SUB PRD CD -07                | 31       | 125          |
#      | 4893_PRD CD- 19, SUB PRD CD -08                | 32       | 125          |
#      | 4893_Account Open Date equal to 28 days        | 32       | 125          |
#      | 4893_Account Open Date equal to 33 days        | 33       | 125          |
#      | 4893_NTC_MCB=Y_Arrival Date within 3 years     | 28       | 125          |
#      | 4893_NTC_BBP_MCB=Y_Arrival Date within 3 years | 28       | 125          |
#      | 4893_NTP_CUST_OPND_DT >120      | 28       | 121          |
#      | 4893_NTP_CASL_CONSENT_F = Y     | 28       | 125          |
#      | 4893_NTP_HARDBOUNCE_EMAIL_F !=Y | 28       | 125          |
#      | 4893_NTP_UNSUBSCRIBED_F !=Y     | 28       | 125          |
#      | 4893_NTB_CUST_OPND_DT < 120     | 28       | 119          |
#      | 4893_NTB_CUST_OPND_DT = 120     | 28       | 120          |
#      | 4893_NTB_CASL_CONSENT_F = Y     | 28       | 110          |
#      | 4893_NTB_CASL_CONSENT_F = N     | 28       | 10           |
#      | 4893_NTB_UNSUBSCRIBED_F !=Y     | 28       | 10           |
#      | 4893_NTB_HARDBOUNCE_EMAIL_F !=Y | 28       | 10           |
# Added by Sujoy on 2022-03-26
#      | 4893_NTP_UNSUBSCRIBED_F =NULL     | 28       | 125          |
#      | 4893_NTP_HARDBOUNCE_EMAIL_F =NULL | 28       | 125          |
#      | 4893_NTB_UNSUBSCRIBED_F =NULL     | 28       | 10           |
#      | 4893_NTB_HARDBOUNCE_EMAIL_F =NULL | 28       | 10           |


  @CrossSell_Email_4893_4893111901_SingleAcc_NegTCs
  Scenario Outline: Cross Sell 4893_EMAIL Create test data For single account Negative Test cases
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
      | Test cases                        | Acct_Odt | CUST_OPND_DT |
#      | N-4893_PRIM_CNTRY_CD!= CA                     | 28       | 125          |
#      | N-4893_PRIM_CNTRY_CD= Null                    | 28       | 125          |
#      | N-4893_CUST_TP_CD != PSNL                     | 28       | 125          |
#      | N-4893_CUST_TP_CD =  Null                     | 28       | 125          |
#      | N-4893_DO_NOT_SOLICIT_F= Y                    | 28       | 125          |
#      | N-4893_Indv_Brth_Dt Equal to 17               | 28       | 125          |
#      | N-4893_Indv_Brth_Dt Equal to Null             | 28       | 125          |
#      | N-4893_Indv_Brth_Dt with in range (1-16)      | 29       | 125          |
#      | N-4893_PRD CD- 01, SUB PRD CD -08             | 29       | 125          |
#      | N-4893_PRD CD-02, SUB PRD CD -04              | 29       | 125          |
#      | N-4893_PRD CD- 07, SUB PRD CD -08             | 29       | 125          |
#      | N-4893_PRD CD-13, SUB PRD CD -12              | 29       | 125          |
#      | N-4893_PRD CD- 18, SUB PRD CD -02             | 29       | 125          |
#      | N-4893_PRD CD-19, SUB PRD CD -11              | 29       | 125          |
#      | N-4893_PRD CD-23, SUB PRD CD -02              | 29       | 125          |
#      | N-4893_SRC_ACCT_STAT_CD- B                    | 29       | 125          |
#      | N-4893_SRC_ACCT_STAT_CD-Null                  | 30       | 125          |
#      | N-4893_Account Open Date greater than 33 days | 39       | 125          |
#      | N-4893_Account Open Date equal to Null        | NULL     | 125          |
#      | N-4893_Account Open Date less than 28         | 21       | 125          |
#      | N-4893_Account Open Date equals to 27         | 27       | 125          |
#      | N-4893_Account Open Date equals to 34         | 34       | 125          |
#      | N-4893_Deceased_F= Y                          | 30       | 125          |
#      | N-4893_Deceased_F= Null                       | 31       | 125          |
#      | N-4893_LANG_CD= K                             | 32       | 125          |
#      | N-4893_LANG_CD= NE                            | 32       | 125          |
#      | N-4893_LANG_CD= Null                          | 32       | 125          |
#      | N-4893_EMPLOYEE_STAFF_F= Y                    | 32       | 125          |
#      | N-4893_ACCT_SUBSYS_ID_KS                      | 33       | 125          |
#      | N-4893_Prv_Bnk_Ind= Null                      | 33       | 125          |
#      | N-4893_Prv_Bnk_Ind= Y                         | 33       | 125          |
#      | N-4893_MRKTBLE_F = N                          | 33       | 125          |
#      | N-4893_MRKTBLE_F = NULL                       | 32       | 125          |
      | N-4893_Do Not Email Flag=Y        | 32       | 125          |
      | N-4893_INDV_FRST_NM = Null        | 32       | 125          |
      | N-4893_INDV_LAST_NM = Null        | 32       | 125          |
      | N-4893_VLD_EMAIL_F = N            | 32       | 125          |
      | N-4893_PRIM_EMAIL_ADDR  = BLANK   | 32       | 125          |
      | N-4893_PRIM_EMAIL_ADDR  = NULL    | 32       | 125          |
#      | N-4893_Primary_Acct_Holder_Flag = N           | 33       | 125          |
      | N_4893_NTP_CASL_CONSENT_F = N     | 28       | 121          |
      | N_4893_NTP_HARDBOUNCE_EMAIL_F = Y | 28       | 125          |
      | N_4893_NTP_UNSUBSCRIBED_F =Y      | 28       | 125          |
      | N_4893_NTB_UNSUBSCRIBED_F =Y      | 28       | 110          |
      | N_4893_NTB_HARDBOUNCE_EMAIL_F = Y | 28       | 110          |
      | N_4893_NTB_CUST_OPND_DT > 120     | 28       | 121          |
      | N_4893_CUST_OPND_DT = NULL        | 28       | NULL         |
# Added by Sujoy on 2022-03-26
      | N-4893_VLD_EMAIL_F = NULL         | 32       | 125          |
      | N-4893_Do Not Email Flag=NULL     | 32       | 125          |


  @CrossSell_Email_4893_4893111901_MultipleAccs_Pos_Neg_TCs
  Scenario Outline: Cross Sell 4893_EMAIL Create test data for positive And Negative test cases for dual account
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
      | Test cases | Acct_Odt | CUST_OPND_DT |
#      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0101_4893111901     | 28       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBAAcc_0101_4893111901     | 29       | 125          |
#      | 4893_MPSA_Status_InActive_BBAAcc_0101_4893111901 | 29       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0102_4893111901     | 28       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBAAcc_0102_4893111901     | 28       | 125          |
#      | 4893_MPSA_Status_InActive_BBAAcc_0102_4893111901 | 28       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0103_4893111901     | 28       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBAAcc_0103_4893111901     | 28       | 125          |
#      | 4893_MPSA_Status_InActive_BBAAcc_0103_4893111901 | 28       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0104_4893111901     | 29       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBAAcc_0104_4893111901     | 29       | 125          |
#      | 4893_MPSA_Status_InActive_BBAAcc_0104_4893111901 | 29       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0201_4893111901     | 29       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBAAcc_0201_4893111901     | 30       | 125          |
#      | 4893_MPSA_Status_InActive_BBAAcc_0201_4893111901 | 30       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0202_4893111901     | 30       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBAAcc_0202_4893111901     | 31       | 125          |
#      | 4893_MPSA_Status_InActive_BBAAcc_0202_4893111901 | 31       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0203_4893111901     | 31       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBAAcc_0203_4893111901     | 31       | 125          |
#      | 4893_MPSA_Status_InActive_BBAAcc_0203_4893111901 | 31       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1901_4893111901     | 31       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBPAcc_1901_4893111901     | 31       | 125          |
#      | 4893_MPSA_Status_InActive_BBPAcc_1901_4893111901 | 31       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1902_4893111901     | 31       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBPAcc_1902_4893111901     | 31       | 125          |
#      | 4893_MPSA_Status_InActive_BBPAcc_1902_4893111901 | 32       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1903_4893111901     | 32       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBPAcc_1903_4893111901     | 32       | 125          |
#      | 4893_MPSA_Status_InActive_BBPAcc_1903_4893111901 | 32       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1904_4893111901     | 32       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBPAcc_1904_4893111901     | 32       | 125          |
#      | 4893_MPSA_Status_InActive_BBPAcc_1904_4893111901 | 32       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1907_4893111901     | 32       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBPAcc_1907_4893111901     | 32       | 125          |
#      | 4893_MPSA_Status_InActive_BBPAcc_1907_4893111901 | 32       | 125          |
#      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1908_4893111901     | 32       | 125          |
#      | 4893_MPSA_SubSysId_AB_BBPAcc_1908_4893111901     | 32       | 125          |
#      | 4893_MPSA_Status_InActive_BBPAcc_1908_4893111901 | 32       | 125          |
#      | N-4893_MPSA_Y_BBAAcc_0101_4893111901             | 32       | 125          |
#      | N-4893_MPSA_Y_BBAAcc_0102_4893111901             | 33       | 125          |
#      | N-4893_MPSA_Y_BBAAcc_0103_4893111901             | 33       | 125          |
#      | N-4893_MPSA_Y_BBAAcc_0104_4893111901             | 32       | 125          |
#      | N-4893_MPSA_Y_BBAAcc_0201_4893111901             | 33       | 125          |
#      | N-4893_MPSA_Y_BBAAcc_0202_4893111901             | 32       | 125          |
#      | N-4893_MPSA_Y_BBAAcc_0203_4893111901             | 33       | 125          |
#      | N-4893_MPSA_Y_BBPAcc_1901_4893111901             | 33       | 125          |
#      | N-4893_MPSA_Y_BBPAcc_1902_4893111901             | 33       | 125          |
#      | N-4893_MPSA_Y_BBPAcc_1903_4893111901             | 33       | 125          |
#      | N-4893_MPSA_Y_BBPAcc_1904_4893111901             | 33       | 125          |
#      | N-4893_MPSA_Y_BBPAcc_1907_4893111901             | 33       | 125          |
#      | N-4893_MPSA_Y_BBPAcc_1908_4893111901             | 33       | 125          |



# July 20th 2023 Release - External Table Exclusion Scenarios

  @CrossSell_Email_4893_External_Table_Exclusion_PositiveTCs_TestData
  Scenario Outline: Cross Sell 4893_EMAIL Create test data For External Table Exclusion Positive and Negative Test cases
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

#  CUST_ACCT_RLTNP_DIM
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
      | 4893_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    | 29           | 125              | 1             | 2                    | -2                 |
      | 4893_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 29           | 125              | 1             | 2                    | -2                 |
      | 4893_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       | 29           | 125              | 1             | 2                    | 1                  |
      | 4893_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     | 29           | 125              | 1             | -1                   | -2                 |
      | N-4893_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_gt_Curr_Dt     | 29           | 125              | 1             | 2                    | -1                 |
      | N-4893_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_eq_Curr_Dt     | 29           | 125              | 1             | 2                    | 0                  |
      | N-4893_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_lt_Curr_Dt   | 29           | 125              | 1             | 1                    | -2                 |
      | N-4893_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_eq_Curr_Dt   | 29           | 125              | 1             | 0                    | -2                 |

