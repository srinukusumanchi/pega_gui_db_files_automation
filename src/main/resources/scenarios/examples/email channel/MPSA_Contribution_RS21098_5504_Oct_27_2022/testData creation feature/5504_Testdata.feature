@MPSAContribution_PosNeg_5504_EMAIL_TestDataLoad_Oct_27_2022
Feature: Test data creation for EMail MPSA Contribution Oct_27_2022

    ## Set DSS Date to 70 Days from Current Date and Run the Following Scripts

  @MPSAContribution_Email_5504_Oct_27_2022 @MPSAContribution_Base_TestData_5504_Oct_27_2022 @5504 @MPSAContributionEMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for Oct_27_2022 Base Test Cases
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<Event_Dt>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                               | Acct_Cnt | Insight_Cnt | ACCT_OPENED_DT | Event_Dt |
#      | 5504_EML_Base_01_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus   | 1        | 1           | 75             | 20       |
#      | 5504_EML_Base_02_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus | 2        | 2           | 65,100         | 20       |
#      | 5504_EML_Base_03_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus            | 2        | 1           | 40,100         | 20       |
#      | 5504_EML_Base_04_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus            | 1        | 1           | 40             | 20       |


  @MPSAContribution_Email_5504_Oct_27_2022 @MPSAContribution_Positive_TestData_5504_Oct_27_2022 @5504 @MPSAContributionEMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for Oct_27_2022 Positive Test Cases
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<Event_Dt>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                                                                                                                                   | Acct_Cnt | Insight_Cnt | ACCT_OPENED_DT | Event_Dt |
#	Positive Scenarios with X = (Curr_Date - 70)	#		#		#		#		#
#      | 5504_EML_Scrio_1_TAX_REFUND_Event_Dt_lt_30_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                                                | 1        | 1           | 71             | 29       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Event_Dt_eq_30_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                                                | 1        | 1           | 75             | 30       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                             | 2        | 2           | 70,100         | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Curr_Val_gt_1_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                                               | 2        | 2           | 69,100         | 20       |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                                | 2        | 2           | 70,100         | 20       |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                                                                | 2        | 2           | 69,100         | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                                                             | 1        | 2           | 69             | 20,20    |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                             | 1        | 2           | 70             | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_PAGE_VISIT_PAYROLL_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_No_BB                                                                                                      | 1        | 3           | 75             | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_PAGE_VISIT_PAYROLL_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Ultimate                                                                                                 | 2        | 4           | 65,100         | 20,20    |
#      | 5504_EML_Scrio_1_TAX_REFUND_PAGE_VISIT_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_Preferred                                                                                                | 2        | 4           | 65,100         | 20,20    |
#      | 5504_EML_Scrio_1_TAX_REFUND_PAGE_VISIT_PAYROLL_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_No_BB                                                                                                    | 1        | 4           | 65             | 20,20    |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus_Acct_ODT_gt_60                                                                                                                | 1        | 1           | 61             | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Acct_ODT_gt_60                                                                                                              | 2        | 2           | 61,100         | 20       |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_Acct_ODT_gt_60                                                                                                                 | 2        | 2           | 61,100         | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_ENG_RS22022_TARGET_CONTROL_CURR_VAL_ne_1                                                               | 1        | 2           | 75             | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_ENG_RS22022_TARGET_CONTROL_CURR_VAL_eq_NULL                                                            | 1        | 2           | 75             | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_ne_1_EVENT_DATE_lt_60                                                            | 1        | 2           | 75             | 20,59    |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_NULL_EVENT_DATE_lt_60                                                         | 1        | 2           | 75             | 20,59    |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_1_EVENT_DATE_gt_60                                                            | 1        | 2           | 75             | 20,61    |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_1_EVENT_DATE_eq_NULL                                                          | 1        | 2           | 75             | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_SUBSYS_ID_ne_BB                                                                                                        | 2        | 2           | 65,100         | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_01                                                                               | 2        | 2           | 65,100         | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_04                                                                               | 2        | 2           | 65,100         | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_04                                                                               | 2        | 2           | 65,100         | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_ne_A_Ultimate                                                                                              | 2        | 2           | 65,100         | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_eq_NULL_Preferred                                                                                          | 2        | 2           | 65,100         | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_ne_Y_Ultimate                                                                                      | 2        | 2           | 65,100         | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL_Preferred                                                                                  | 2        | 2           | 65,100         | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Curr_Val_gt_1_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Prioritize_Creative_02_Over_03                                                                                | 2        | 2           | 69,100,100     | 20       |
#      | 5504_EML_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Prioritize_Scenario_1_Cell_Group                                                                                                    | 3        | 2           | 65,40,100      | 20       |
#      | 5504_EML_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Prioritize_Scenario_1_Cell_Group_Insight_Pointing_to_Scenario_2                                                                     | 3        | 2           | 40,65,100      | 20       |
#
#      | 5504_EML_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Prioritize_Account_Pointed_by_Insight                                                                                               | 3        | 2           | 65,65,100      | 20       |
#      | 5504_EML_Scrio_1_Seg_01_CUST_AGE_eq_18_DO_NOT_SOLICIT_F_eq_NULL_NOT_AML_KYC_eq_NULL_PHYSICIANS_F_eq_NULL_MD_FINANCIAL_F_eq_NULL_ITRADE_MCLEOD_F_eq_NULL_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL | 1        | 1           | 75             | 20       |
#      | 5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ITRADE_MCLEOD_F_eq_Y                                                                                                                   | 1        | 1           | 40             | 20       |
#
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                  | 2        | 2           | 65,100,91      | 20       |
#      | 5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                             | 2        | 1           | 40,100,91      | 20       |
#      | 5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                             | 1        | 1           | 40,91          | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                    | 1        | 1           | 75,91          | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                    | 1        | 1           | 75,91          | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VGD_SRC_SUB_PRD_CD_eq_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_91                           | 1        | 1           | 75,91          | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_ACCT_ODT_eq_91                                                                | 1        | 1           | 75,91          | 20       |
#      | 5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_gt_35                                                                                                                         | 1        | 1           | 36             | 20       |
#      | 5504_EML_Scrio_2_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_eq_35                                                                                                                         | 2        | 1           | 35,100         | 20       |
#      | 5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_lt_49                                                                                                                         | 2        | 1           | 48,100         | 20       |
#      | 5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_eq_49                                                                                                                         | 1        | 1           | 49             | 20       |
##	ADDED on 2022-10-19	#		#		#		#		#
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                                                               | 1        | 1           | 71             | NULL     |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                                                                  | 1        | 1           | 71             | NULL     |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_04_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                                | 1        | 2           | 70             | 20       |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_03_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                             | 2        | 2           | 70,100         | 20       |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                                                             | 2        | 2           | 69,100         | 20,20    |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                                                             | 2        | 2           | 69,100         | 20,20    |


  @MPSAContribution_Email_5504_Oct_27_2022 @MPSAContribution_Negative_TestData_5504_Oct_27_2022 @5504 @MPSAContributionEMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for Oct_27_2022 Negative Test Cases
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<Event_Dt>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                                                                                                           | Acct_Cnt | Insight_Cnt | ACCT_OPENED_DT | Event_Dt |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Event_Dt_gt_30_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                      | 1        | 1           | 75             | 31       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Curr_Val_ne_1_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                       | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Curr_Val_eq_NULL_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                    | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_PAYROLL_Curr_Val_ne_1_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                        | 2        | 2           | 69,100         | 20       |
#      | N_5504_EML_Scrio_1_PAYROLL_Curr_Val_eq_NULL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                     | 2        | 2           | 69,100         | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Curr_Val_lt_1_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                     | 2        | 2           | 69,100         | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Curr_Val_eq_NULL_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                  | 2        | 2           | 69,100         | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_ACCT_STAT_CD_ne_Active                                                                          | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_eq_NULL                                                                          | 2        | 2           | 65,100         | 20       |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_SUBSYS_ID_ne_UF                                                                                 | 2        | 2           | 65,100         | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_NULL                                                                              | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_ne_BSAMP                                                                           | 2        | 2           | 65,100         | 20       |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_NULL                                                                               | 2        | 2           | 65,100         | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                                       | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                                  | 2        | 2           | 65,100         | 20       |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_BUSINESS_SEGMENT_ne_Retail                                                                           | 2        | 2           | 65,100         | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_BUSINESS_SEGMENT_eq_NULL                                                                            | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_eq_60                                                                                    | 2        | 2           | 60,100         | 20       |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_lt_60                                                                                       | 2        | 2           | 59,100         | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_ODT_eq_NULL                                                                                    | 1        | 1           | NULL           | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus                                                                                                     | 1        | 1           | 69             | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_01_MPSA_ODT_gt_X_With_MPSA_Bonus_Non_Matching_UF                                                                                   | 2        | 2           | 100,65         | 20       |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_01_MPSA_ODT_gt_X_With_MPSA_Bonus_Non_Matching_UF                                                                                      | 2        | 2           | 100,65         | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus_Ultimate                                                                                            | 2        | 1           | 65,100         | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_With_MPSA_Bonus_Curr_Val_eq_NULL_Ultimate                                                                         | 2        | 2           | 65,100         | 20,20    |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus_Preferred                                                                                           | 2        | 1           | 65,100         | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_With_MPSA_Bonus_Curr_Val_eq_NULL_Preferred                                                                        | 2        | 2           | 65,100         | 20,20    |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_ENG_RS22022_TARGET_CONTROL_CURR_VAL_eq_1                                     | 1        | 2           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_1_EVENT_DATE_lt_60                                  | 1        | 2           | 75             | 20,59    |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_1_EVENT_DATE_eq_60                                  | 1        | 2           | 75             | 20,60    |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                        | 3        | 2           | 65,100,89      | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                        | 3        | 2           | 65,100,90      | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                        | 3        | 2           | 65,100,89      | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                        | 3        | 2           | 65,100,90      | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                        | 3        | 2           | 65,100,89      | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                        | 3        | 2           | 65,100,90      | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                        | 3        | 2           | 65,100,89      | 20       |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   | 3        | 1           | 40,100,89      | 20       |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   | 3        | 1           | 40,100,90      | 20       |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   | 3        | 1           | 40,100,89      | 20       |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   | 3        | 1           | 40,100,90      | 20       |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   | 3        | 1           | 40,100,89      | 20       |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   | 3        | 1           | 40,100,90      | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   | 2        | 1           | 40,89          | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   | 2        | 1           | 40,90          | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   | 2        | 1           | 40,89          | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   | 2        | 1           | 40,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                          | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_12_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                          | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                          | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                          | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VGD_SRC_SUB_PRD_CD_eq_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_ZZ_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_SS_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VLR_SRC_SUB_PRD_CD_eq_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VLR_SRC_SUB_PRD_CD_eq_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_DM_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_SV_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VFA_SRC_SUB_PRD_CD_eq_A1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VFF_SRC_SUB_PRD_CD_eq_F1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_AXG_SRC_SUB_PRD_CD_eq_GC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_AXS_SRC_SUB_PRD_CD_eq_SC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_AXP_SRC_SUB_PRD_CD_eq_PC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VLR_SRC_SUB_PRD_CD_eq_RC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VFF_SRC_SUB_PRD_CD_eq_TR_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 | 2        | 1           | 75,90          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VGD_SRC_SUB_PRD_CD_eq_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 | 2        | 1           | 75,89          | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_ACCT_ODT_eq_89                                      | 2        | 1           | 75,89          | 20       |
##	ADDED on 2022-10-19	#		#		#		#		#
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_eq_X_No_MPSA_Bonus                                                                                                     | 1        | 1           | 70             | 20       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_01_MPSA_ODT_eq_X_No_MPSA_Bonus                                                                                                     | 1        | 1           | 70             | NULL     |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus                                                                                                     | 1        | 1           | 69             | NULL     |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_01_MPSA_ODT_eq_X_No_MPSA_Bonus                                                                                                        | 1        | 1           | 70             | NULL     |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus                                                                                                        | 1        | 1           | 69             | NULL     |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_No_MPSA_Bonus                                                                                                                | 1        | 0           | 40             | NULL     |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_gt_49                                                                                               | 1        | 1           | 50             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_lt_35                                                                                               | 1        | 1           | 34             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_ne_Active                                                                                   | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_eq_NULL                                                                                     | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_SUBSYS_ID_ne_UF                                                                                         | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_SUBSYS_ID_eq_NULL                                                                                       | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_ne_BSAMP                                                                                      | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_NULL                                                                                       | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_BUSINESS_SEGMENT_ne_Retail                                                                                   | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_BUSINESS_SEGMENT_eq_NULL                                                                                     | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_CRNT_BAL_AMT_ne_0                                                                                            | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_CRNT_BAL_AMT_eq_NULL                                                                                         | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                                                | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                                             | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_CUST_TP_CD_ne_PSNL                                                                                  | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_PRIM_CNTRY_CD_ne_CA                                                                                 | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_PRIM_CNTRY_CD_eq_NULL                                                                               | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_CUST_AGE_lt_18                                                                                      | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_CUST_AGE_eq_NULL                                                                                    | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_LANG_CD_eq_bn                                                                                       | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_LANG_CD_eq_NULL                                                                                     | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_DO_NOT_SOLICIT_F_eq_Y                                                                               | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_NOT_AML_KYC_eq_Y                                                                                    | 1        | 1           | 75             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PHYSICIANS_F_eq_Y                                                                                            | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_MD_FINANCIAL_F_eq_Y                                                                                          | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                                            | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DECEASED_F_eq_Y                                                                                              | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DECEASED_F_eq_NULL                                                                                           | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DO_NOT_EMAIL_F_eq_Y                                                                                          | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DO_NOT_EMAIL_F_eq_NULL                                                                                       | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_VLD_EMAIL_F_eq_N                                                                                             | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_VLD_EMAIL_F_eq_NULL                                                                                          | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIM_EMAIL_ADDR_eq_NULL                                                                                      | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_INDV_FRST_NM_eq_NULL                                                                                         | 1        | 1           | 40             | 20       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                                                | 1        | 1           | 40             | 20       |
#


    ## Set DSS Date to 37 Days from Current Date and Run the Following Scripts

  @MPSAContribution_Email_5504_Oct_27_2022 @MPSAContribution_Positive_with_DSS_37_TestData_5504_Oct_27_2022 @5504 @MPSAContributionEMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for Oct_27_2022 Positive Test Cases with DSS 37 Days
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<Event_Dt>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                            | Acct_Cnt | Insight_Cnt | ACCT_OPENED_DT | Event_Dt |
#      | 5504_EML_Scrio_2_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus   | 1        | 0           | 40             | NULL     |
#      | 5504_EML_Scrio_2_Seg_02_MPSA_ODT_eq_X_With_MPSA_Bonus | 2        | 1           | 37,100         | 20       |


  @MPSAContribution_Email_5504_Oct_27_2022 @MPSAContribution_Negative_with_DSS_37_TestData_5504_Oct_27_2022 @5504 @MPSAContributionEMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for Oct_27_2022 Negative Test Cases with DSS 37 Days
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<Event_Dt>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                            | Acct_Cnt | Insight_Cnt | ACCT_OPENED_DT | Event_Dt |
#      | N_5504_EML_Scrio_2_Seg_01_MPSA_ODT_eq_X_No_MPSA_Bonus | 1        | 0           | 37             | NULL     |

  @MPSAContribution_Email_5504_Oct_27_2022 @MPSAContribution_Exclusion_TestData_5504_Feb_20_2023 @5504 @MPSAContributionEMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for Feb_02_2023 Exclusion Balance Fund Test Cases
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<Event_Dt>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "1" records
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                           | Acct_Cnt | Insight_Cnt | ACCT_OPENED_DT | Event_Dt |
#      | N_5504_EML_INSIGHT_CD_eq_FLG_BALANCE_FUND_RS23010_and_CURR_VAL_eq_1  | 1        | 2           | 75             | 20       |
#      | 5504_EML_INSIGHT_CD_eq_FLG_BALANCE_FUND_RS23010_and_CURR_VAL_eq_Null | 1        | 2           | 75             | 20       |
#      | 5504_EML_INSIGHT_CD_eq_FLG_BALANCE_FUND_RS23010_and_CURR_VAL_ne_1    | 1        | 2           | 75             | 20       |

    ## Added for JUNE 22 2023 REL

  @MPSAContribution_Email_5504_Oct_27_2022_Externaltable @MPSAContribution_Base_TestData_5504_June_22_2023 @5504 @MPSAContributionEMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for Oct_27_2022 Base Test Cases externaltable
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # CUST_INSIGHTS
#    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
#    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
#    And write Different Generic Dates in "EVENT_DATE" field with "<Event_Dt>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
#    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
#    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts
      # EXTERNAL_INPUT_FILE_LAYOUT
    When write current CID into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_START_DATE" field with "<V_VALID_START_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<V_VALID_END_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
#    Then insert customer and account details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts



    Examples:
      | Test cases                                           | Acct_Cnt | ACCT_OPENED_DT | Ext_Inp_File_Cnt | V_VALID_START_DATE | V_VALID_END_DATE |
#      | 5504_EML_Trigger3                                    | 1        | 75             | 1                | 5                  | -5               |
#      | 5504_EML_Trigger3_Current Date_eq_VALID_START_DATE   | 1        | 75             | 1                | 0                  | -5               |
#      | 5504_EML_Trigger3_Current Date_eq_VALID_END_DATE     | 1        | 75             | 1                | 5                  | 0                |
#      | 5504_EML_Trigger3_ExtTable_2_Records                 | 1        | 75             | 2                | 5,6                | -5,-6            |
#      | N_5504_EML_Trigger3_CAMPAIGN_CODE_ne_RS21098         | 1        | 75             | 1                | 5                  | -5               |
#      | N_5504_EML_Trigger3_CAMPAIGN_CELL_CODE_ne_5504       | 1        | 75             | 1                | 5                  | -5               |
#      | N_5504_EML_Trigger3_CAMPAIGN_CELL_CODE_eq_NULL       | 1        | 75             | 1                | 5                  | -5               |
#      | N_5504_EML_Trigger3_CAMPAIGN_CELL_CODE_FLAG_eq_N     | 1        | 75             | 1                | 5                  | -5               |
#      | N_5504_EML_Trigger3_CAMPAIGN_CELL_CODE_FLAG_eq_NULL  | 1        | 75             | 1                | 5                  | -5               |
#      | N_5504_EML_Trigger3_Current Date_lt_VALID_START_DATE | 1        | 75             | 1                | -1                 | -5               |
#      | N_5504_EML_Trigger3_VALID_END_DATE_lt_Current Date   | 1        | 75             | 1                | 5                  | 1                |
#      | N_5504_EML_Trigger3_EMAIL_CHANNEL_eq_N               | 1        | 75             | 1                | 5                  | -5               |
#      | N_5504_EML_Trigger3_EMAIL_CHANNEL_eq_NULL            | 1        | 75             | 1                | 5                  | -5               |
#      | N_5504_EML_Trigger3_CAMPAIGN_CELL_DESC_eq_NULL       | 1        | 75             | 1                | 5                  | -5               |

  @MPSAContribution_Email_5504_Oct_27_2022_Externaltable_Exclusion @MPSAContribution_Base_TestData_5504_Oct_27_2022 @5504 @MPSAContributionEMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Create test data for Oct_27_2022 Base Test Cases externaltable exclusion
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<Event_Dt>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts
         # EXTERNAL_INPUT_FILE_LAYOUT
    When write current CID into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_START_DATE" field with "<V_VALID_START_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<V_VALID_END_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
#    Then insert customer and account details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts


    Examples:
      | Test cases                                                                                | ACCT_OPENED_DT | Acct_Cnt | Ext_Inp_File_Cnt | V_VALID_START_DATE | V_VALID_END_DATE | Insight_Cnt | Event_Dt |
  ##Positive
      | 5504_EML_Trigger3_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N                                   | 75             | 1        | 1                | 5                  | -5               | 1           | 20       |
#      | 5504_EML_Trigger3_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                | 75             | 1        | 1                | 5                  | -5               | 1           | 20       |
#      | 5504_EML_Trigger3_ExtTable_VALID_END_DATE_lt_Curr_Dt                                      | 75             | 1        | 1                | 2                  | 1                | 1           | 20       |
#      | 5504_EML_Trigger3_ExtTable_ExtTable_VALID_START_DATE_gt_Curr_Dt                           | 75             | 1        | 1                | -1                 | -2               | 1           | 20       |
#      | 5504_EML_Trigger3_ExtTable_ExtTable_CAMPAIGN_CODE_ne_RS21098                              | 75             | 1        | 1                | 5                  | -5               | 1           | 20       |
#  ##Negative
#      | N_5504_EML_Trigger3_ExtTable_VALID_END_DATE_gt_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y   | 75             | 1        | 1                | 2                  | -1               | 1           | 20       |
#      | N_5504_EML_Trigger3_ExtTable_VALID_END_DATE_eq_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y   | 75             | 1        | 1                | 2                  | 0                | 1           | 20       |
#      | N_5504_EML_Trigger3_ExtTable_VALID_START_DATE_lt_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y | 75             | 1        | 1                | 1                  | -2               | 1           | 20       |
#      | N_5504_EML_Trigger3_ExtTable_VALID_START_DATE_eq_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y | 75             | 1        | 1                | 0                  | -2               | 1           | 20       |
#      | N_5504_EML_Trigger3_ExtTable_2_Records                                                    | 75             | 1        | 2                | 5,6                | -5,-6            | 1           | 20       |