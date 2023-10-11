Feature: Test Data Creation For Mortgage Acquisition SFM Channel


  @MortgageAcquisitionSFM @MortgageAcquisitionSFM_Positive_TestData_5021 @5021 @SFM @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SFM Create test data for positive test cases

    Given load data from "MortAcq_SFM" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When write "SOL_LAST_LOGIN_DT" for "<Sol_Login>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "MLS_ADDED_AT_DT" for "<MLS_DT>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "CUST_OPND_DT" for "<Cust_Open_Dt>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table

    Examples:
      | Testcases                                                                              | Sol_Login | MLS_DT | Cust_Open_Dt |
      | 5021_SFM_BASE_01_LeadType_01                                                           | 55        | 15     | 365          |
      | 5021_SFM_BASE_03_LeadType_03                                                           | 55        | NULL   | 4100         |
      | 5021_SFM_BASE_04_LeadType_04                                                           | NULL      | NULL   | 4100         |
      | 5021_SFM_CUST_AGE_eq_18                                                                | 55        | 15     | 365          |
      | 5021_SFM_LANG_CD_eq_FR                                                                 | 55        | 15     | 1200         |
      | 5021_SFM_LANG_CD_eq_E                                                                  | 55        | 15     | 4100         |
      | 5021_SFM_LANG_CD_eq_F                                                                  | 55        | 15     | NULL         |
      | 5021_SFM_LANG_CD_eq_en                                                                 | 55        | 15     | 365          |
      | 5021_SFM_LANG_CD_eq_fr                                                                 | 55        | 15     | 365          |
      | 5021_SFM_LANG_CD_eq_e                                                                  | 55        | 15     | 365          |
      | 5021_SFM_LANG_CD_eq_f                                                                  | 55        | 15     | 365          |
      | 5021_SFM_MLS_ADDED_AT_DT_eq_30                                                         | 55        | 30     | 365          |
      | 5021_SFM_SOL_LAST_LOGIN_DT_eq_90Days_DigitallyActive_AND_ASSIGNED_FA_TRANSIT_ne_NULL   | 90        | NULL   | 4100         |
      | 5021_SFM_SOL_LAST_LOGIN_DT_eq_NULL_DigitallyInActive_LeadType_01                       | NULL      | 15     | 365          |
      | 5021_SFM_SOL_LAST_LOGIN_DT_gt_90Days_DigitallyInActive_LeadType_01                     | 150       | 15     | 365          |
      | 5021_SFM_TV_TS_MORT_FLAG_eq_Y_ForGetting_LeadType_03_AND_LeadType_04_DigitallyInActive | NULL      | NULL   | 4100         |
      | 5021_SFM_LeadType1_should_be_prioritized_When_MortAcq_customer_has_LeadType_1_AND_2    | 55        | 15     | 365          |
      | 5021_SFM_LeadType1_should_be_prioritized_When_MortAcq_customer_has_LeadType_1_AND_3    | 55        | 15     | 4100         |
      | 5021_SFM_LeadType1_should_be_prioritized_When_MortAcq_customer_has_LeadType_1_AND_4    | 55        | 15     | 365          |
      | 5021_SFM_LeadType3_should_be_prioritized_When_MortAcq_customer_has_LeadType_3_AND_4    | 130       | NULL   | 1200         |
      | 5021_SFM_CUST_OPND_DT_eq_NULL                                                          | 130       | NULL   | NULL         |
      | 5021_SFM_SOL_LAST_LOGIN_DT_lt_90Days_DigitallyIn_Active                                | 60        | NULL   | 4100         |

  @MortgageAcquisitionSFM @MortgageAcquisitionSFM_Negative_TestData_5021 @5021 @SFM @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SFM Create test data for Negative test cases

    Given load data from "MortAcq_SFM" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When write "SOL_LAST_LOGIN_DT" for "<Sol_Login>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "MLS_ADDED_AT_DT" for "<MLS_DT>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "CUST_OPND_DT" for "<Cust_Open_Dt>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table

    Examples:
      | Testcases                                                        | Sol_Login | MLS_DT | Cust_Open_Dt |
      | N_5021_SFM_Deceased_F_eq_Y                                       | 55        | 15     | 365          |
      | N_5021_SFM_CUST_TP_CD_ne_PSNL                                    | 55        | 15     | 365          |
      | N_5021_SFM_CUST_AGE_lt_18                                        | 55        | 15     | 365          |
      | N_5021_SFM_CUST_AGE_eq_NULL                                      | 55        | 15     | 365          |
      | N_5021_SFM_LANG_CD_ne_FR                                         | 55        | 15     | 365          |
      | N_5021_SFM_LANG_CD_ne_e                                          | 55        | 15     | 365          |
      | N_5021_SFM_LANG_CD_eq_NULL                                       | 55        | 15     | 365          |
      | N_5021_SFM_MRKTBLE_F_eq_N                                        | 55        | 15     | 365          |
      | N_5021_SFM_MRKTBLE_F_eq_NULL                                     | 55        | 15     | 365          |
      | N_5021_SFM_NOT_AML_KYC_eq_Y                                      | 55        | 15     | 365          |
      | N_5021_SFM_PRIM_PROV_CD_eq_NULL                                  | 55        | NULL   | 4100         |
      | N_5021_SFM_CLOSEST_TRANSIT_NUM_eq_NULL                           | 55        | NULL   | 4100         |
      | N_5021_SFM_DO_NOT_SOLICIT_F_eq_Y                                 | 55        | NULL   | 4100         |
      | N_5021_SFM_DO_NOT_CALL_F_eq_Y                                    | 55        | NULL   | 4100         |
      | N_5021_SFM_MLS_LISTING_FLAG_eq_N_DigitallyActive_LeadType1       | 55        | 15     | 365          |
      | N_5021_SFM_MLS_LISTING_FLAG_eq_NULL_DigitallyActive_LeadType1    | 55        | 15     | 365          |
      | N_5021_SFM_MLS_ADDED_AT_DT_gt_30Days_DigitallyActive_LeadType1   | 55        | 50     | 365          |
      | N_5021_SFM_MLS_ADDED_AT_DT_eq_NULL                               | 55        | NULL   | 365          |
      | N_5021_SFM_TV_TS_MORT_FLAG_eq_N_DigitallyActive_LeadType3        | 55        | NULL   | 4100         |
      | N_5021_SFM_TV_TS_MORT_FLAG_eq_NULL_DigitallyInActive_LeadType3   | 130       | NULL   | 4100         |
      | N_5021_SFM_MORT_OUT_PYMT_FLAG_eq_N_DigitallyInActive_LeadType4   | 130       | NULL   | 4100         |
      | N_5021_SFM_MORT_OUT_PYMT_FLAG_eq_NULL_DigitallyActive_LeadType4  | 55        | NULL   | 4100         |
      | N_5021_SFM_SOL_LAST_LOGIN_DT_gt_90Days_DigitallyActive           | 120       | NULL   | 4100         |
      | N_5021_SFM_INDV_FRST_NM_eq_NULL                                  | NULL      | NULL   | 4100         |
      | N_5021_SFM_INDV_LAST_NM_eq_NULL                                  | NULL      | NULL   | 4100         |
      | N_5021_SFM_INDV_HOME_TEL_NUM_eq_NULL                             | NULL      | NULL   | 4100         |
      | N_5021_SFM_PRIM_ADDR_LINE_1_eq_NULL                              | NULL      | NULL   | 4100         |
      | N_5021_SFM_PRIM_CITY_NM_eq_NULL                                  | NULL      | NULL   | 4100         |
      | N_5021_SFM_PRIM_PROV_CD_eq_NULL                                  | NULL      | NULL   | 4100         |
      | N_5021_SFM_PRIM_POST_CD_eq_NULL                                  | NULL      | NULL   | 4100         |
      | N_5021_SFM_MLS_LISTING_FLAG_eq_N_DigitallyInActive_LeadType1     | 150       | 15     | 365          |
      | N_5021_SFM_MLS_LISTING_FLAG_eq_NULL_DigitallyInActive_LeadType1  | 150       | 15     | 365          |
      | N_5021_SFM_MLS_ADDED_AT_DT_gt_30Days_DigitallyInActive_LeadType1 | 150       | 50     | 365          |
      | N_5021_SFM_MORT_COUNT_30DAY_lt_1_DigitallyActive_LeadType2       | 50        | NULL   | 1200         |


  @MortgageAcquisitionSFM @MortgageAcquisitionSFM_Positive_Negative_TestData_5021_LeadType2 @5021 @SFM @RS19029 @LeadType2
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SFM Create test data for LeadType2 positive test cases
    Given load data from "MortAcq_SFM" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When write "SOL_LAST_LOGIN_DT" for "<Sol_Login>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "MLS_ADDED_AT_DT" for "<MLS_DT>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "CUST_OPND_DT" for "<Cust_Open_Dt>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write cid in the "CLICKSTREAM" sheet for "<Testcases>"
    When read clickstrem information details from excel sheet "CLICKSTREAM" for "<Testcases>"
    Then insert clickstream information details in "CLICKSTREAM" table

    Examples:
      | Testcases                                                                                       | Sol_Login | MLS_DT | Cust_Open_Dt |
      | 5021_SFM_BASE_02_LeadType_02                                                                    | 130       | NULL   | 1200         |
      | 5021_SFM_MORT_COUNT_30DAY_eq_1                                                                  | 130       | NULL   | 1200         |
      | 5021_SFM_DO_NOT_SOLICIT_F_eq_NULL                                                               | 130       | NULL   | 1200         |
      | 5021_SFM_DO_NOT_CALL_F_eq_NULL                                                                  | 130       | NULL   | 1200         |
      | 5021_SFM_NOT_AML_KYC_eq_NULL                                                                    | 130       | NULL   | 1200         |
      | 5021_SFM_SOL_LAST_LOGIN_DT_eq_90Days_DigitallyInActive                                          | 90        | NULL   | 1200         |
      | 5021_SFM_SOL_LAST_LOGIN_DT_lt_90Days_DigitallyActive_LeadType_02                                | 50        | NULL   | 1200         |
      | 5021_SFM_SOL_LAST_LOGIN_DT_eq_NULL_DigitallyInActive_LeadType_02                                | NULL      | NULL   | 1200         |
      | 5021_SFM_SOL_LAST_LOGIN_DT_lt_90Days_DigitallyActive_LeadType_02AND_ASSIGNED_FA_TRANSIT_ne_NULL | 50        | NULL   | 1200         |
      | 5021_SFM_LeadType3_should_be_prioritized_When_MortAcq_customer_has_LeadType_2_AND_3             | 55        | NULL   | 4100         |
      | 5021_SFM_LeadType4_should_be_prioritized_When_MortAcq_customer_has_LeadType_2_AND_4             | 130       | NULL   | 1200         |
      | 5021_SFM_LeadType1_should_be_prioritized_When_MortAcq_customer_has_LeadType_1_2_AND_3           | 130       | 15     | 1200         |
      | 5021_SFM_LeadType3_should_be_prioritized_When_MortAcq_customer_has_LeadType_2_3_AND_4           | 55        | NULL   | 4100         |
      | 5021_SFM_LeadType1_should_be_prioritized_When_MortAcq_customer_has_LeadType_1_2_3_AND_4         | 55        | 15     | 4100         |
      | N_5021_SFM_MORT_COUNT_30DAY_lt_1_DigitallyInActive_LeadType2                                    | 130       | NULL   | 1200         |
      | N_5021_SFM_MORT_COUNT_30DAY_eq_NULL_DigitallyInActive_LeadType2                                 | 130       | NULL   | 1200         |
      | N_5021_SFM_SOL_LAST_LOGIN_DT_gt_90Days_AND_ASSIGNED_FA_TRANSIT_ne_NULL                          | 130       | NULL   | 1200         |
      | N_5021_SFM_MORT_COUNT_30DAY_eq_NULL_DigitallyActive_LeadType2                                   | 50        | NULL   | 1200         |
      | N_5021_SFM_SOL_LAST_LOGIN_DT_eq_NULL_AND_ASSIGNED_FA_TRANSIT_ne_NULL                            | NULL      | NULL   | 4100         |

  @MortgageAcquisitionSFM @MortgageAcquisitionSFM_Positive_Negative_TestData_5021 @5021 @SFM @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SFM Create test data for Negative test cases
    Given load data from "MortAcq_SFM" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When write "SOL_LAST_LOGIN_DT" for "<Sol_Login>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "MLS_ADDED_AT_DT" for "<MLS_DT>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "CUST_OPND_DT" for "<Cust_Open_Dt>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Testcases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Testcases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Testcases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Testcases                                                      | Sol_Login | MLS_DT | Cust_Open_Dt |
      | 5021_SFM_ACCT_SUBSYS_ID_ne_UO                                  | 55        | 15     | 365          |
      | 5021_SFM_ACCT_SUBSYS_ID_ne_NULL                                | 55        | 15     | 365          |
      | 5021_SFM_SRC_ACCT_STAT_CD_ne_Active                            | 55        | 15     | 365          |
      | 5021_SFM_SRC_ACCT_STAT_CD_ne_NULL                              | 55        | 15     | 365          |
      | N_5021_SFM_ACCT_SUBSYS_ID_eq_UO_AND_SRC_ACCT_STAT_CD_eq_ACTIVE | 55        | 15     | 365          |
