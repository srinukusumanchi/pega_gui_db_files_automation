@TFSA_RRSP_Xsell_Branch_Offer_COS_TestLoad
Feature: Test Data Creation For TFSA_RRSP_Xsell_Branch_Offer in COS Channel

  @TFSA_RRSP_Xsell_Branch_Offer_COS @TFSA_RRSP_Xsell_Branch_Offer_COS_Base_TestData_6229 @6229 @COS @RS23173
  Scenario Outline: TFSA_RRSP_Xsell_Branch_Offer 6229 RS23173 COS Create Test Data for Base Line Test Cases
    Given load data from "TFSA_RRSP_Xsell_Branch_Offer_6229_SF" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # CUST_EV_EB
    When write cid into "CUST_EV_EB" sheet for "<Test cases>"  having "<CUST_EV_EB_Cnt>" accounts
    Then write Timestamp in "INSRT_PROCESS_TMSTMP" field into "CUST_EV_EB" sheet for "<Test cases>" having "<CUST_EV_EB_Cnt>" accounts
    Then insert customer details in "CUST_EV_EB" table having "<CUST_EV_EB_Cnt>" accounts


    Examples:
      | Test cases               | Acct_Cnt | EXT_TABLE_Cnt | CUST_EV_EB_Cnt | ADVISOR_LAST_CONTACT_DT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6229_SF_BASE_Creative_01 | 1        | 1             | 0              | 45                          | 2                    | -2                 |


#Positive Scenarios

  @TFSA_RRSP_Xsell_Branch_Offer_COS @TFSA_RRSP_Xsell_Branch_Offer_COS_Positive_TestData_6229 @6229 @COS @RS23173
  Scenario Outline: TFSA_RRSP_Xsell_Branch_Offer 6229 RS23173 COS Create Test Data for Positive Test Cases
    Given load data from "TFSA_RRSP_Xsell_Branch_Offer_6229_SF" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # CUST_EV_EB
    When write cid into "CUST_EV_EB" sheet for "<Test cases>"  having "<CUST_EV_EB_Cnt>" accounts
    Then write Timestamp in "INSRT_PROCESS_TMSTMP" field into "CUST_EV_EB" sheet for "<Test cases>" having "<CUST_EV_EB_Cnt>" accounts
    Then insert customer details in "CUST_EV_EB" table having "<CUST_EV_EB_Cnt>" accounts

    Examples:
      | Test cases                                                          | Acct_Cnt | EXT_TABLE_Cnt | CUST_EV_EB_Cnt | ADVISOR_LAST_CONTACT_DT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6229_COS_Seg_01_CUST_AGE_gt_19                                      | 1        | 1             | 1              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_CUST_AGE_eq_19                                      | 1        | 1             | 1              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_CUST_AGE_lt_70                                      | 1        | 1             | 1              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_CUST_AGE_eq_70                                      | 1        | 1             | 1              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_LANG_CD_eq_fr                                       | 1        | 1             | 1              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_ADVISOR_LAST_CONTACT_DT_gt_30                       | 1        | 1             | 1              | 31                          | 2                    | -2                 |
      | 6229_COS_Seg_01_NOT_AML_KYC_eq_NULL                                 | 1        | 1             | 1              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_ITRADE_MCLEOD_F_eq_NULL                             | 1        | 1             | 1              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                | 1        | 1             | 1              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_VALID_START_DATE_lt_Curr_Dt                         | 1        | 1             | 1              | 45                          | 1                    | -2                 |
      | 6229_COS_Seg_01_VALID_START_DATE_eq_Curr_Dt                         | 1        | 1             | 1              | 45                          | 0                    | -2                 |
      | 6229_COS_Seg_01_VALID_END_DATE_gt_Curr_Dt                           | 1        | 1             | 1              | 45                          | 2                    | -1                 |
      | 6229_COS_Seg_01_VALID_END_DATE_eq_Curr_Dt                           | 1        | 1             | 1              | 45                          | 2                    | 0                  |
      | 6229_COS_Seg_01_MD_FINANCIAL_F_eq_NULL                              | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_DO_NOT_SOLICIT_eq_NULL                              | 1        | 1             | 0              | 45                          | 2                    | -2                 |
#      |Positive Exclusion scenarios|
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_PLN_ACCT_CD_MASTER_ne_TFSA      | 2        | 1             | 0              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_PLN_ACCT_CD_MASTER_ne_RRSP      | 2        | 1             | 0              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_PLN_ACCT_CD_MASTER_eq_NULL      | 2        | 1             | 0              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_ACCT_SUBSYS_ID_ne_UF            | 2        | 1             | 0              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_ACCT_SUBSYS_ID_eq_NULL          | 2        | 1             | 0              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_TFSA_SRC_ACCT_STAT_CD_ne_Active | 2        | 1             | 0              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_RRSP_SRC_ACCT_STAT_CD_ne_Active | 2        | 1             | 0              | 45                          | 2                    | -2                 |
      | 6229_COS_Seg_01_TFSA_RRSP_Exclusion_SRC_ACCT_STAT_CD_eq_NULL        | 2        | 1             | 0              | 45                          | 2                    | -2                 |


#Negative Scenarios

  @TFSA_RRSP_Xsell_Branch_Offer_COS @TFSA_RRSP_Xsell_Branch_Offer_COS_Negative_TestData_6229 @6229 @COS @RS23173
  Scenario Outline: TFSA_RRSP_Xsell_Branch_Offer 6229 RS23173 COS Create Test Data for Negative Test Cases
    Given load data from "TFSA_RRSP_Xsell_Branch_Offer_6229_SF" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # CUST_EV_EB
    When write cid into "CUST_EV_EB" sheet for "<Test cases>"  having "<CUST_EV_EB_Cnt>" accounts
    Then write Timestamp in "INSRT_PROCESS_TMSTMP" field into "CUST_EV_EB" sheet for "<Test cases>" having "<CUST_EV_EB_Cnt>" accounts
    Then insert customer details in "CUST_EV_EB" table having "<CUST_EV_EB_Cnt>" accounts

    Examples:
      | Test cases                                                             | Acct_Cnt | EXT_TABLE_Cnt | CUST_EV_EB_Cnt | ADVISOR_LAST_CONTACT_DT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | N-6229_COS_Seg_01_DECEASED_F_ne_N                                      | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_DECEASED_F_eq_NULL                                   | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_CUST_TP_CD_ne_PSNL                                   | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_PRIM_CNTRY_CD_ne_CA                                  | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_PRIM_CNTRY_CD_eq_NULL                                | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_LANG_CD_eq_bn                                        | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_LANG_CD_eq_NULL                                      | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_MRKTBLE_F_ne_Y                                       | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_MRKTBLE_F_eq_NULL                                    | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_ADVISOR_LAST_CONTACT_DT_eq_30                        | 1        | 1             | 0              | 30                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_ADVISOR_LAST_CONTACT_DT_lt_30                        | 1        | 1             | 0              | 29                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_ADVISOR_LAST_CONTACT_DT_eq_NULL                      | 1        | 1             | 0              | NULL                        | 2                    | -2                 |
      | N-6229_COS_Seg_01_NOT_AML_KYC_eq_Y                                     | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_MD_FINANCIAL_F_ne_N                                  | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_ITRADE_MCLEOD_F_eq_Y                                 | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                    | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_DO_NOT_CALL_F_ne_N                                   | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_DO_NOT_CALL_F_eq_NULL                                | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_DO_NOT_SOLICIT_ne_N                                  | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_CAMPAIGN_CODE_ne_RS23173                             | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_CAMPAIGN_CELL_CODE_FLAG_ne_S                         | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                      | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_VALID_START_DATE_gt_Curr_Dt                          | 1        | 1             | 0              | 45                          | -1                   | -2                 |
      | N-6229_COS_Seg_01_VALID_START_DATE_ne_OB_Scheduler_Start_Dt_Month_Year | 1        | 1             | 0              | 45                          | -40                  | -2                 |
      | N-6229_COS_Seg_01_VALID_END_DATE_lt_Curr_Dt                            | 1        | 1             | 0              | 45                          | 2                    | 1                  |
      | N-6229_COS_Seg_01_Branch_channel_ne_Y                                  | 1        | 1             | 0              | 45                          | 2                    | -2                 |
      | N-6229_COS_Seg_01_Branch_channel_eq_NULL                               | 1        | 1             | 0              | 45                          | 2                    | -2                 |
#      |Negative Exclusion Scenarios|
      | N-6229_COS_Seg_01_TFSA_RRSP_Exclusion_SRC_ACCT_STAT_CD_eq_Active       | 2        | 1             | 0              | 45                          | 2                    | -2                 |


