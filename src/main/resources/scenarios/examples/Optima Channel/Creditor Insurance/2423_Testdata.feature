@CreditorInsurance_Optima_2423
Feature: Test data creation for Optima channel  for Creditor Insurance Campaign


  # Added Base Test Cases as part of Sep. 14th 2023 Release
  @CC_CreditorInsurance_OPM @CC_CreditorInsurance_OPM_Base_TestData_2423 @2423 @OPM @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_OPM Create Test Data for Base Line Scenarios
    Given load data from "CIOptimaInitial" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val |
      | 2423_OPM_BASE_Creative_04 | 1        | 0           | 5            |
      | 2423_OPM_BASE_Creative_05 | 1        | 0           | 400          |


  # Added Negative Test Cases as part of Sep. 14th 2023 Release
  @CC_CreditorInsurance_OPM @CC_CreditorInsurance_OPM_Negative_TestData_2423 @2423 @OPM @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_OPM Create Test Data for Negative Scenarios
    Given load data from "CIOptimaInitial" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                         | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val |
      | N-2423_OPM_Seg_04_CHRGF_CD_ne_0    | 1        | 0           | 5            |
      | N-2423_OPM_Seg_05_CHRGF_CD_eq_NULL | 1        | 0           | 400          |



  @2423_Positive_Negative_2423012204
  Scenario Outline: Creditor Insurance_VS17084_2423_2423012204_OPTIMA Create test data "<Test cases>" for positive and negative scenarios
    Given load data from "CIOptimaInitial" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                                                                         | Acct_Odt |
      | 2423_DECEASED_F=N                                                                                                                                  | 5        |
      | 2423_CUST_TP_CD=PSNL                                                                                                                               | 5        |
      | 2423_PRIM_CNTRY_CD = CA                                                                                                                            | 5        |
      | 2423_DO_NOT_SOLICIT_F!=Y                                                                                                                           | 5        |
      | 2423_DO_NOT_SOLICIT_F=NULL                                                                                                                         | 5        |
      | 2423_DO_NOT_CALL_F = N                                                                                                                             | 5        |
      | 2423_MRKTBLE_F = Y                                                                                                                                 | 5        |
      | 2423_CUST_AGE=20                                                                                                                                   | 5        |
      | 2423_CUST_AGE=67                                                                                                                                   | 5        |
      | 2423_LANG_CD in EN                                                                                                                                 | 5        |
      | 2423_LANG_CD in small case =  en                                                                                                                   | 5        |
      | 2423_EMPLOYEE_STAFF_F=N                                                                                                                            | 5        |
      | 2423_SRC_SYS_PRD_CD=VLR && SRC_SUB_SYS_PRD_CD=RG                                                                                                   | 5        |
      | 2423_SRC_SYS_PRD_CD=VUS && SRC_SUB_SYS_PRD_CD=RG                                                                                                   | 5        |
      | 2423_Segment1_PRIM_PROV_CD not in (QC,AB,NL) and FICO_SCORE = 580-799                                                                              | 5        |
      | 2423_Segment1_PRIM_PROV_CD not in (QC,AB,NL) and FICO_SCORE =  NULL                                                                                | 5        |
      | 2423_Segment1_PRIM_PROV_CD not in (QC,AB,NL) and FICO_SCORE =   -999.0000                                                                          | 5        |
      | 2423_Segment1_ACCT_SUBSYS_ID = KS && SRC_ACCT_STAT_CD = Open && CR_CRD_PRTCTN_F = N && CR_CRD_LMT_AMT <35000 && Current Date - ACCT_ODT <= 30 Days | 5        |
      | 2423_Segment1_ACCT_SUBSYS_ID = KS && SRC_ACCT_STAT_CD = Open && CR_CRD_PRTCTN_F = N && CR_CRD_LMT_AMT =35000 && Current Date - ACCT_ODT = 30 Days  | 30       |
      | 2423_INDV_GNDR_CD = NULL                                                                                                                           | 5        |
      | N_2423_DECEASED_F=Y                                                                                                                                | 5        |
      | N_2423_DECEASED_F=NULL                                                                                                                             | 5        |
      | N_2423_CUST_TP_CD!=PSNL                                                                                                                            | 5        |
      | N_2423_PRIM_CNTRY_CD! = CA                                                                                                                         | 5        |
      | N_2423_PRIM_CNTRY_CD = NULL                                                                                                                        | 5        |
      | N_2423_DO_NOT_SOLICIT_F = Y                                                                                                                        | 5        |
      | N_2423_DO_NOT_CALL_F! = N                                                                                                                          | 5        |
      | N_2423_DO_NOT_CALL_F = NULL                                                                                                                        | 5        |
      | N_2423_MRKTBLE_F! = Y                                                                                                                              | 5        |
      | N_2423_MRKTBLE_F = NULL                                                                                                                            | 5        |
      | N_2423_CUST_AGE=19                                                                                                                                 | 5        |
      | N_2423_CUST_AGE=68                                                                                                                                 | 5        |
      | N_2423_CUST_AGE=NULL                                                                                                                               | 5        |
      | N_2423_LANG_CD in FR                                                                                                                               | 5        |
      | N_2423_LANG_CD in NULL                                                                                                                             | 5        |
      | N_2423_LANG_CD in E                                                                                                                                | 5        |
      | N_2423_LANG_CD in small case =  e                                                                                                                  | 5        |
      | N_2423_EMPLOYEE_STAFF_F=Y                                                                                                                          | 5        |
      | N_2423_ACCT_SUBSYS_ID! = KS                                                                                                                        | 5        |
      | N_2423_SRC_ACCT_STAT_CD! = Open                                                                                                                    | 5        |
      | N_2423_CR_CRD_PRTCTN_F! = N                                                                                                                        | 5        |
      | N_2423_PRIMARY_ACCT_HOLDER_FLAG! = Y                                                                                                               | 5        |
      | N_2423_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                                                                             | 5        |
      | N_2423_ ACCT_ODT > 30 Days and <365days                                                                                                            | 60       |
      | N_2423_Segment1_PRIM_PROV_CD in QC                                                                                                                 | 5        |
      | N_2423_Segment1_PRIM_PROV_CD in AB                                                                                                                 | 5        |
      | N_2423_Segment1_PRIM_PROV_CD in NL                                                                                                                 | 5        |
      | N_2423_Segment1_FICO_SCORE = 579                                                                                                                   | 5        |
      | N_2423_Segment1_FICO_SCORE = 800                                                                                                                   | 5        |
      | N_2423_Segment1_ ACCT_ODT > 30 Days                                                                                                                | 31       |
      | N_2423_Segment1_CR_CRD_LMT_AMT > 35000                                                                                                             | 5        |
      | N_2423_Segment1_FICO_SCORE = -9.0000                                                                                                               | 5        |
      | N_2423_INDV_HOME_TEL_NUM = NULL                                                                                                                    | 5        |
      | N_2423_PRIM_ADDR_LINE_1 = NULL                                                                                                                     | 5        |
      | N_2423_PRIM_CITY_NM = NULL                                                                                                                         | 5        |
      | N_2423_PRIM_POST_CD = NULL                                                                                                                         | 5        |
      | N_2423_BRTH_DT = NULL                                                                                                                              | 5        |
      | N_2423_SRC_SYS_SUB_PRD_DESC= NULL                                                                                                                  | 5        |

  @2423_Positive_Negative_2423012205
  Scenario Outline: Creditor Insurance_VS17084_2423_2423012205_OPTIMA Create test data "<Test cases>" for positive and negative scenarios
    Given load data from "CIOptimaInitial" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                                                                                                      | Acct_Odt |
#      | 2423_EMPLOYEE_STAFF_F=NULL                                                                                                                                                      | 366      |
#      | 2423_ACCT_SUBSYS_ID = KS                                                                                                                                                        | 370      |
#      | 2423_SRC_ACCT_STAT_CD = Open                                                                                                                                                    | 370      |
#      | 2423_CR_CRD_PRTCTN_F = N                                                                                                                                                        | 370      |
#      | 2423_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                                                                                               | 370      |
#      | 2423_SRC_SYS_PRD_CD=VFF && SRC_SUB_SYS_PRD_CD=F1                                                                                                                                | 370      |
      | 2423_Segment2_ACCT_SUBSYS_ID = KS && SRC_ACCT_STAT_CD = Open && CR_CRD_PRTCTN_F = N && ACCT_ODT > 365 Days && CR_CRD_LMT_AMT <20000 && Insurance_Propensity_Decile between 1-10 | 370      |
      | 2423_Segment2_ACCT_SUBSYS_ID = KS && SRC_ACCT_STAT_CD = Open && CR_CRD_PRTCTN_F = N && ACCT_ODT > 365 Days && CR_CRD_LMT_AMT =20000 && Insurance_Propensity_Decile between 1-10 | 370      |
      | 2423_Segment2_PRIM_PROV_CD = SK  and FICO_SCORE = 550-750                                                                                                                       | 370      |
      | 2423_Segment2_PRIM_PROV_CD = NS and FICO_SCORE = 550-750                                                                                                                        | 370      |
      | 2423_Segment2_PRIM_PROV_CD = MB  and FICO_SCORE = 550-750                                                                                                                       | 370      |
      | 2423_Segment2_PRIM_PROV_CD = PE  and FICO_SCORE = 550-750                                                                                                                       | 370      |
#      | N_2423_Segment2_PRIM_PROV_CD not in (ON, BC,NS,SK,MB,NB,PE)                                                                                                                     | 370      |
#      | N_2423_Segment2_FICO_SCORE = 549                                                                                                                                                | 370      |
#      | N_2423_Segment2_FICO_SCORE = 751                                                                                                                                                | 370      |
#      | N_2423_Segment2_ACCT_ODT < 365 Days                                                                                                                                             | 364      |
#      | N_2423_Segment2_ACCT_ODT = 365 Days                                                                                                                                             | 365      |
#      | N_2423_Segment2_CR_CRD_LMT_AMT > 20000                                                                                                                                          | 370      |
#      | N_2423_Segment2_Insurance_Propensity_Decile = NULL                                                                                                                              | 370      |
#      | N_2423_Segment2_CRD_ACTIVATION_STATE=NULL                                                                                                                                       | 370      |


  @2423_Negative_CustInsights
  Scenario Outline: Creditor Insurance_VS17084_2423_OPTIMA Create test data "<Test cases>" for negative scenarios with cust_insights
    Given load data from "CIOptimaInitial" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                             | Acct_Odt |
      | N_2423_INSIGHT_CD = FLG_CC_INSURANCE_RS21026  and CURR_VAL = 1         | 5        |
      | N_2423_INSIGHT_CD = FLG_CC_INSURANCE_RETARGET_RS21071 and CURR_VAL = 1 | 5        |


  @2423_Segment_dualaccounts
  Scenario Outline: Creditor Insurance_VS17084_2423_OPTIMA Create test data "<Test cases>" for segment scenarios in dual accounts
    Given load data from "CIOptimaInitial" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Dual account odt "<Acct_Odt>""<Dual_Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                           | Acct_Odt | Dual_Acct_Odt |
      | 2423_Segment1_Segment2                                               | 5        | 370           |
      | 2423_Segment1_Segment2_Scenario1_Same Priorities                     | 5        | 370           |
      | 2423_Segment1_Segment1_Accounts with different priorities_Scenario1  | 10       | 5             |
      | 2423_Segment1_Segment1_Accounts with different priorities_Scenario2  | 5        | 5             |
      | 2423_Segment1_Segment1_Accounts with different priorities_Scenario3  | 5        | 5             |
      | 2423_Segment1_Segment1_Accounts with same priority and diff ODT      | 5        | 10            |
      | 2423_Segment1_Segment1_Accounts with same priority and same ODT      | 5        | 5             |
      | 2423_Segment2_Segment2_Accounts with diff activation and diff odt    | 370      | 366           |
      | 2423_Segment2_Segment2_Accounts with same activation and same odt    | 368      | 368           |
      | 2423_Segment2_Segment2_Accounts with activated and pre activated     | 368      | 369           |
      | N_2423_Segment2_Segment2_Accounts not in activated and pre activated | 368      | 368           |
      | 2423_Segment2_Segment2_Accounts with diff activation and same odt    | 368      | 368           |

  @2423_Segment_dualaccounts_CustInsights
  Scenario Outline: Creditor Insurance_VS17084_2423_OPTIMA Create test data "<Test cases>" for segment scenarios in dual accounts in custinsights
    Given load data from "CIOptimaInitial" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    When write dual same account number into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" insights
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "Test cases" having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases                                                      | Acct_Odt |
      | 2423_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_CURR_VAL_ne_1       | 5        |
      | 2423_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_CURR_VAL_eq_NULL    | 5        |
      | N_2423_INSIGHT_CD_eq_INSURANCE_EXCLUSION_LIST_AND_CURR_VAL_eq_1 | 5        |

