@CreditorInsurance_Email_2423
Feature: Test data creation for Email channel  for Creditor Insurance Campaign

  # Added Base Test Cases as part of Sep. 14th 2023 Release
  @CC_CreditorInsurance_EML @CC_CreditorInsurance_EML_Base_TestData_2423 @2423 @EML @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_EMAIL Create Test Data for Base Line Scenarios
    Given load data from "CIEmailInitial" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
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
      | Test cases            | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val | MOB_LAST_LOGIN_DT_val | SOL_LAST_LOGIN_DT_val |
      | 2423_BASE_Creative_01 | 1        | 0           | 20           | NULL                  | NULL                  |
      | 2423_BASE_Creative_04 | 1        | 0           | 190          | NULL                  | NULL                  |


  # Added Positive Test Cases as part of Sep. 14th 2023 Release
  @CC_CreditorInsurance_EML @CC_CreditorInsurance_EML_Positive_TestData_2423 @2423 @EML @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_EMAIL Create Test Data for Positive Scenarios
    Given load data from "CIEmailInitial" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
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
      | Test cases                                         | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val | MOB_LAST_LOGIN_DT_val | SOL_LAST_LOGIN_DT_val |
      | 2423_EML_Seg_01_PRIM_PROV_CD_eq_NULL               | 1        | 0           | 20           | NULL                  | NULL                  |
      | 2423_EML_Seg_01_TOT_DLQNT_AMT_lt_0                 | 1        | 0           | 20           | NULL                  | NULL                  |
      | 2423_EML_Seg_01_TOT_DLQNT_AMT_eq_NULL              | 1        | 0           | 20           | NULL                  | NULL                  |
      | 2423_EML_Seg_04_ACCT_ODT_gt_180                    | 1        | 0           | 181          | NULL                  | NULL                  |
      | 2423_EML_Seg_04_ACCT_ODT_eq_180                    | 1        | 0           | 180          | NULL                  | NULL                  |
      | 2423_EML_Seg_04_Insurance_Propensity_Decile_lt_DSS | 1        | 0           | 190          | NULL                  | NULL                  |



  # Added Negative Test Cases as part of Sep. 14th 2023 Release
  @CC_CreditorInsurance_EML @CC_CreditorInsurance_EML_Negative_TestData_2423 @2423 @EML @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_EMAIL Create Test Data for Negative Scenarios
    Given load data from "CIEmailInitial" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
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
      | Test cases                                           | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val | MOB_LAST_LOGIN_DT_val | SOL_LAST_LOGIN_DT_val |
      | N-2423_EML_Seg_01_ACCT_ODT_lt_18                     | 1        | 0           | 17           | NULL                  | NULL                  |
      | N-2423_EML_Seg_01_ACCT_ODT_gt_30                     | 1        | 0           | 31           | NULL                  | NULL                  |
      | N-2423_EML_Seg_01_ACCT_ODT_eq_NULL                   | 1        | 0           | NULL         | NULL                  | NULL                  |
      | N-2423_EML_Seg_01_CHRGF_CD_ne_0                      | 1        | 0           | 20           | NULL                  | NULL                  |
      | N-2423_EML_Seg_01_CHRGF_CD_eq_NULL                   | 1        | 0           | 20           | NULL                  | NULL                  |
      | N-2423_EML_Seg_01_PRIM_PROV_CD_eq_QC                 | 1        | 0           | 20           | NULL                  | NULL                  |
      | N-2423_EML_Seg_01_TOT_DLQNT_AMT_gt_0                 | 1        | 0           | 20           | NULL                  | NULL                  |
      | N-2423_EML_Seg_04_ACCT_ODT_lt_180                    | 1        | 0           | 179          | NULL                  | NULL                  |
      | N-2423_EML_Seg_04_ACCT_ODT_eq_NULL                   | 1        | 0           | NULL         | NULL                  | NULL                  |
      | N-2423_EML_Seg_04_Insurance_Propensity_Decile_gt_DSS | 1        | 0           | 190          | NULL                  | NULL                  |
      | N-2423_EML_Seg_04_MRKTBLE_F_ne_Y                     | 1        | 0           | 190          | NULL                  | NULL                  |
      | N-2423_EML_Seg_04_MRKTBLE_F_eq_NULL                  | 1        | 0           | 190          | NULL                  | NULL                  |


  @2423_Email_Positive_Negative_TD_Creation
  Scenario Outline: Creditor Insurance_VS17084_2423_EMAIL Create test data "<Test cases>" for positive and negative scenarios
    Given load data from "CIEmailInitial" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "1" records
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                   | Acct_Odt_val | MOB_LAST_LOGIN_DT_val | SOL_LAST_LOGIN_DT_val |
#      | 2423_DECEASED_F=N                                                                                                         | 19           | 60                    | NULL                  |
#      | 2423_CUST_TP_CD=PSNL                                                                                                      | 19           | NULL                  | 60                    |
#      | 2423_PRIM_CNTRY_CD = CA                                                                                                   | 19           | NULL                  | NULL                  |
#      | 2423_DO_NOT_SOLICIT_F!=Y                                                                                                  | 19           | NULL                  | NULL                  |
#      | 2423_DO_NOT_SOLICIT_F=NULL                                                                                                | 19           | NULL                  | NULL                  |
#      | 2423_CUST_AGE=69                                                                                                          | 19           | NULL                  | NULL                  |
#      | 2423_LANG_CD in E                                                                                                         | 19           | NULL                  | NULL                  |
#      | 2423_LANG_CD in EN                                                                                                        | 19           | NULL                  | NULL                  |
#      | 2423_LANG_CD in F                                                                                                         | 19           | NULL                  | NULL                  |
#      | 2423_LANG_CD in FR                                                                                                        | 19           | NULL                  | NULL                  |
#      | 2423_LANG_CD in small case = e                                                                                            | 19           | NULL                  | NULL                  |
#      | 2423_LANG_CD in small case = f                                                                                            | 19           | NULL                  | NULL                  |
#      | 2423_LANG_CD in small case = en                                                                                           | 19           | NULL                  | NULL                  |
#      | 2423_LANG_CD in small case = fr                                                                                           | 19           | NULL                  | NULL                  |
#      | 2423_DO_NOT_EMAIL_F=N                                                                                                     | 19           | NULL                  | NULL                  |
#      | 2423_VLD_EMAIL_F = Y                                                                                                      | 19           | NULL                  | NULL                  |
#      | 2423_PRIM_EMAIL_ADDR! = NULL                                                                                              | 19           | NULL                  | NULL                  |
#      | 2423_MK_INSURANCE_EMAIL_F!=N                                                                                              | 19           | NULL                  | NULL                  |
#      | 2423_MK_INSURANCE_EMAIL_F = NULL                                                                                          | 19           | NULL                  | NULL                  |
#      | 2423_ACCT_SUBSYS_ID = KS                                                                                                  | 19           | NULL                  | NULL                  |
#      | 2423_SRC_ACCT_STAT_CD = Open                                                                                              | 19           | NULL                  | NULL                  |
#      | 2423_CR_CRD_PRTCTN_F = N                                                                                                  | 19           | NULL                  | NULL                  |
#      | 2423_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                                         | 19           | NULL                  | NULL                  |
#      | 2423_ACCT_ODT=18                                                                                                          | 18           | NULL                  | NULL                  |
#      | 2423_ACCT_ODT=20                                                                                                          | 20           | NULL                  | NULL                  |
#      | N_2423_DECEASED_F=Y                                                                                                       | 19           | NULL                  | NULL                  |
#      | N_2423_DECEASED_F=NULL                                                                                                    | 19           | NULL                  | NULL                  |
#      | N_2423_CUST_TP_CD!=PSNL                                                                                                   | 19           | NULL                  | NULL                  |
#      | N_2423_PRIM_CNTRY_CD! = CA                                                                                                | 19           | NULL                  | NULL                  |
#      | N_2423_PRIM_CNTRY_CD = NULL                                                                                               | 19           | NULL                  | NULL                  |
#      | N_2423_DO_NOT_SOLICIT_F = Y                                                                                               | 19           | NULL                  | NULL                  |
#      | N_2423_CUST_AGE=70                                                                                                        | 19           | NULL                  | NULL                  |
#      | N_2423_CUST_AGE=NULL                                                                                                      | 19           | NULL                  | NULL                  |
#      | N_2423_LANG_CD in K                                                                                                       | 19           | NULL                  | NULL                  |
#      | N_2423_LANG_CD in NE                                                                                                      | 19           | NULL                  | NULL                  |
#      | N_2423_LANG_CD in NULL                                                                                                    | 19           | NULL                  | NULL                  |
#      | N_2423_DO_NOT_EMAIL_F! = N                                                                                                | 19           | NULL                  | NULL                  |
#      | N_2423_DO_NOT_EMAIL_F = NULL                                                                                              | 19           | NULL                  | NULL                  |
#      | N_2423_VLD_EMAIL_F = N                                                                                                    | 19           | NULL                  | NULL                  |
#      | N_2423_VLD_EMAIL_F = NULL                                                                                                 | 19           | NULL                  | NULL                  |
#      | N_2423_PRIM_EMAIL_ADDR = NULL                                                                                             | 19           | NULL                  | NULL                  |
#      | N_2423_MK_INSURANCE_EMAIL_F=N                                                                                             | 19           | NULL                  | NULL                  |
#      | N_2423_INDV_FRST_NM=NULL                                                                                                  | 19           | NULL                  | NULL                  |
#      | N_2423_ACCT_SUBSYS_ID! = KS                                                                                               | 19           | NULL                  | NULL                  |
#      | N_2423_SRC_ACCT_STAT_CD! = Open                                                                                           | 19           | NULL                  | NULL                  |
#      | N_2423_CR_CRD_PRTCTN_F! = N                                                                                               | 19           | NULL                  | NULL                  |
#      | N_2423_PRIMARY_ACCT_HOLDER_FLAG! = Y                                                                                      | 19           | NULL                  | NULL                  |
#      | N_2423_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                                                    | 19           | NULL                  | NULL                  |
#      | N_2423_ ACCT_ODT  = 17                                                                                                    | 17           | NULL                  | NULL                  |
#      | N_2423_ ACCT_ODT  = 21                                                                                                    | 21           | NULL                  | NULL                  |
#      | N_2423_INSIGHT_CD = FLG_CC_INSURANCE_EMOB_RS21039_TARGET  and CURR_VAL = 1                                                | 19           | NULL                  | NULL                  |
#      | N_2423_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL NOT in (BRANCH, CALLCENTRE,COMNPA, SOLNPA, SOLPA) | 19           | NULL                  | NULL                  |
      | 2423_Segment1_CRD_ACTIVATION_STATE=ACTIVATED                                                 | 19           | NULL                  | NULL                  |
      | 2423_Segment1_CRD_ACTIVATION_STATE=PRE ACTIVATED                                             | 19           | NULL                  | NULL                  |
      | 2423_Segment2_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in BRANCH     | 19           | NULL                  | NULL                  |
      | 2423_Segment2_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in CALLCENTRE | 19           | NULL                  | NULL                  |
      | 2423_Segment3_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in COMNPA     | 19           | NULL                  | NULL                  |
      | 2423_Segment3_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in SOLNPA     | 19           | NULL                  | NULL                  |
      | 2423_Segment3_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in SOLPA      | 19           | NULL                  | NULL                  |
#     Pavani-Added for MAy 11th release Tenured segment
      | 2423_TEN_Seg1_ACCT_ODT_eq_180                                                                | 180          | 60                    | NULL                  |
      | 2423_TEN_Seg1_ACCT_ODT_gt_180                                                                | 181          | NULL                  | NULL                  |
      | 2423_TEN_Seg1_PROP_DECILE_lt_DSS_eq_1                                                        | 200          | NULL                  | 30                    |
      | 2423_TEN_Seg1_PROP_DECILE_eq_DSS_eq_1                                                        | 200          | NULL                  | NULL                  |
      | N_2423_TEN_Seg1_ACCT_ODT_lt_180                                                              | 179          | 60                    | NULL                  |
      | N_2423_TEN_Seg1_PROP_DEC_gt_DSS_eq_1                                                         | 200          | NULL                  | 30                    |
      | N_2423_TEN_Seg1_MRKTBLE_F_eq_N                                                               | 200          | 60                    | NULL                  |
      | N_2423_TEN_Seg1_MRKTBLE_F_eq_NULL                                                            | 200          | NULL                  | 30                    |
      | N_2423_CUST_AGE=17                                                                           | NULL         | NULL                  | NULL                  |
      | 2423_CUST_AGE=18                                                                             | 19           | NULL                  | NULL                  |

#  @2423_Email_Negative_CustInsights
#  Scenario Outline: Creditor Insurance_VS17084_2423_EMAIL Create test data "<Test cases>" for negative scenarios with cust_insights
#    Given load data from "CIEmailInitial" excel sheet
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#    When write account number into "ACCT_DIM" sheet for "<Test cases>"
#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then insert customer account details in "ACCT_DIM" table
#    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
#    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
#    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
#    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
#    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
#    Then insert customer details in "CUST_INSIGHTS" table
#    Examples:
#      | Test cases                                                                 | Acct_Odt |
#      | N_2423_INSIGHT_CD = FLG_CC_INSURANCE_EMOB_RS21039_TARGET  and CURR_VAL = 1 | 5        |

  @2423_Email_Segment_dualaccounts_TD_Creation
  Scenario Outline: Creditor Insurance_VS17084_2423_EMAIL Create test data "<Test cases>" for segment scenarios in dual accounts
    Given load data from "CIEmailInitial" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
#    And  write Dual account odt "<Acct_Odt>""<Dual_Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "2" records
#    And write Different Generic Dates in "ACCT_ODT" field with "<Dual_ACCT_val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "2" records
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                         | Acct_Odt_val | MOB_LAST_LOGIN_DT_val | SOL_LAST_LOGIN_DT_val |
#      | 2423_Segment1_Diff Acct priorities and same acct_odt                                     | 19 , 19            | NULL                  | NULL                  |
#      | 2423_Segment1_Diff Acct priorities and  diff acct_odt                                    | 19 , 20            | NULL                  | NULL                  |
#      | 2423_Segment2_Same Acct priorities and diff acct_odt                                     | 19 , 20            | NULL                  | NULL                  |
#      | 2423_Segment3_Same Acct priorities and same acct_odt                                     | 19 , 19            | NULL                  | NULL                  |
#      | 2423_01_CRD_ACTIVATION_STATE in (ACTIVATED) for prioritised account                      | 19 , 19            | NULL                  | NULL                  |
#      | 2423_01_CRD_ACTIVATION_STATE in (PRE ACTIVATED) for prioritised account                  | 19 , 19            | NULL                  | NULL                  |
#      | 2423_02_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in (BRANCH)     | 19 , 19            | NULL                  | NULL                  |
#      | 2423_02_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in (CALLCENTRE) | 19 , 19            | NULL                  | NULL                  |
#      | 2423_03_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in (COMNPA)     | 19 , 19            | NULL                  | NULL                  |
#      | 2423_03_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in (SOLNPA)     | 19 , 19            | NULL                  | NULL                  |
#      | 2423_03_CRD_ACTIVATION_STATE = NOT ACTIVATED && ACCT_SOURCE_ORIG_CHANNEL in (SOLPA)      | 19 , 19            | NULL                  | NULL                  |
#      Pavani-Added for May 11th release Tenured segment
      | 2423_EAR_Seg1_Ten_Seg1_Prioritization              | 19,200       | NULL                  | NULL                  |
      | 2423_TEN_ACCT_PRI1_VS_PRI2_Prioritization          | 200,200      | 60                    | NULL                  |
      | 2423_TEN_ACCT_PRI2_VS_PRI3_Prioritization          | 200,200      | NULL                  | NULL                  |
      | 2423_TEN_ACCT_PRI1_VS_PRI3_Prioritization          | 200,200      | NULL                  | 30                    |
      | 2423_TEN_ACCT_PRI17_VS_PRI17_MaxODT_Prioritization | 200,250      | NULL                  | NULL                  |

#  @2423_Email_Segment_threeaccounts
#  Scenario Outline: Creditor Insurance_VS17084_2423_EMAIL Create test data "<Test cases>" for segment scenarios in three accounts
#    Given load data from "CIEmailInitial" excel sheet
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
#    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
#    Then insert customer account details in "ACCT_DIM" table having "3" accounts
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
#    Examples:
#      | Test cases                                                                   | Acct_Odt |
#      | 2423_Segment1_Segment2_Segment3_Diff Account priorities                      | 19       |
#      | 2423_Segment1_Segment2_Segment3_Same Account priorities and same Account ODT | 19       |
#
#  @2423_Email_Segment_threeaccounts
#  Scenario Outline: Creditor Insurance_VS17084_2423_EMAIL Create test data "<Test cases>" for segment scenarios in three accounts
#    Given load data from "CIEmailInitial" excel sheet
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
#    And  write account odt "<Acct_Odt_3>" value into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
#    And  write Dual account odt "<Acct_Odt>""<Dual_Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
#    Then insert customer account details in "ACCT_DIM" table having "3" accounts
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
#    Examples:
#      | Test cases                                       | Acct_Odt_3 | Acct_Odt | Dual_Acct_Odt |
#      | 2423_Segment1_Segment2_Segment3_Diff Account ODT | 19         | 19       | 20            |
