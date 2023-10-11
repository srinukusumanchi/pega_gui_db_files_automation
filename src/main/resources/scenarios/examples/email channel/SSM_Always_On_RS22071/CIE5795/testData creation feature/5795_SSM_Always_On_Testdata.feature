@SSM_Always_On_5795_EMAIL
Feature: Test data creation for EMail SSM Always On Welcome

  @SSM_Always_On_5795 @EMAIL @SSM_Always_On_5795_BASE_TESTDATA @RS22071 @5795
  Scenario Outline: SSM_Always_On_RS22071_5795_EMAIL Create test data for Base test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    And write Different Event Dates "<Event_Duration>" and "<Event_Duration_2>" values into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases       | Acct_Cnt | Insight_Cnt | Event_Duration | Event_Duration_2 |
      | 5795_EML_BASE_01 | 1        | 1           | 5              | NULL             |

  @SSM_Always_On_5795 @EMAIL @SSM_Always_On_5795_Pos_TESTDATA @RS22071 @5795
  Scenario Outline: SSM_Always_On_RS22071_5795_EMAIL Create test data for Pos test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    And write Different Event Dates "<Event_Duration>" and "<Event_Duration_2>" values into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                   | Acct_Cnt | Insight_Cnt | Event_Duration | Event_Duration_2 |
      | 5795_EML_Seg_01_LANG_CD_eq_fr                                                | 1        | 1           | 5              | NULL             |
      | 5795_EML_CUST_AGE_eq_18                                                      | 1        | 1           | 5              | NULL             |
      | 5795_EML_Seg_02_NOT_AML_KYC_eq_NULL                                          | 1        | 1           | 5              | NULL             |
      | 5795_EML_DEDICATED_INVSTMNT_ADVISOR_F_NULL                                   | 1        | 1           | 5              | NULL             |
      | 5795_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                    | 1        | 1           | 5              | NULL             |
      | 5795_EML_DO_NOT_SOLICIT_F_eq_NULL                                            | 1        | 1           | 5              | NULL             |
      | 5795_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC | 1        | 1           | 5              | NULL             |
      | 5795_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_01_VFB                    | 2        | 1           | 5              | NULL             |
      | 5795_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_14_AXG                    | 2        | 1           | 5              | NULL             |
      | 5795_EML_Event_Date_eq_7Days                                                 | 1        | 1           | 7              | NULL             |
      | 5795_EML_Event_Date_eq_0Days                                                 | 1        | 1           | 0              | NULL             |
      | 5795_EML_CURR_VAL_not_eq_1_where_INSIGHT_CD_eq_FLG_SSM_RS20051               | 1        | 2           | 5              | NULL             |
      | 5795_EML_CURR_VAL_eq_NULL__where_INSIGHT_CD_eq_FLG_SSM_RS20051               | 1        | 2           | 5              | NULL             |


  @SSM_Always_On_5795 @EMAIL @SSM_Always_On_5795_Neg_TESTDATA @RS22071 @5795
  Scenario Outline: SSM_Always_On_RS22071_5795_EMAIL Create test data for Neg test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    And write Different Event Dates "<Event_Duration>" and "<Event_Duration_2>" values into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:

      | Test cases                                                  | Acct_Cnt | Insight_Cnt | Event_Duration | Event_Duration_2 |
      | N_5795_EML_ DECEASED_F_eq_Y                                 | 1        | 1           | 5              | NULL             |
      | N_5795_EML_ DECEASED_F_eq_NULL                              | 1        | 1           | 5              | NULL             |
      | N_5795_EML_CUST_TP_CD_not_PSNL                              | 1        | 1           | 5              | NULL             |
      | N_5795_EML_CUST_TP_CD_eq_NULL                               | 1        | 1           | 5              | NULL             |
      | N_5795_EML_Lang_CD_eq_bn                                    | 1        | 1           | 5              | NULL             |
      | N_5795_EML_Lang_CD_eq_NULL                                  | 1        | 1           | 5              | NULL             |
      | N_5795_EML_CUST_AGE_lt_18                                   | 1        | 1           | 5              | NULL             |
      | N_5795_EML_CUST_AGE_eq_NULL                                 | 1        | 1           | 5              | NULL             |
      | N_5795_EML_PRIM_CNTRY_CD_eq_MA                              | 1        | 1           | 5              | NULL             |
      | N_5795_EML_PRIM_CNTRY_CD_eq_NULL                            | 1        | 1           | 5              | NULL             |
      | N_5795_EML_MRKTBLE_F_eq_N                                   | 1        | 1           | 5              | NULL             |
      | N_5795_EML_MRKTBLE_F_eq_NULL                                | 1        | 1           | 5              | NULL             |
      | N_5795_EML_NOT_AML_KYC_eq_Y                                 | 1        | 1           | 5              | NULL             |
      | N_5795_EML_DEDICATED_INVSTMNT_ADVISOR_F_Y                   | 1        | 1           | 5              | NULL             |
      | N_5795_EML_VLD_EMAIL_eq_N                                   | 1        | 1           | 5              | NULL             |
      | N_5795_EML_VLD_EMAIL_eq_NULL                                | 1        | 1           | 5              | NULL             |
      | N_5795_EML_PRIM_EMAIL_ADDR_eq_NULL                          | 1        | 1           | 5              | NULL             |
      | N_5795_INDV_FRST_NM_eq_NULL                                 | 1        | 1           | 5              | NULL             |
      | N_5795_INDV_LAST_NM_eq_NULL                                 | 1        | 1           | 5              | NULL             |
      | N_5795_DO_NOT_EMAIL_F_eq_Y                                  | 1        | 1           | 5              | NULL             |
      | N_5795_DO_NOT_EMAIL_F_eq_NULL                               | 1        | 1           | 5              | NULL             |
      | N_5795_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                        | 1        | 1           | 5              | NULL             |
      | N_5795_MK_BK_INFO_ACCTS_EMAIL_F_gt_7                        | 1        | 1           | 8              | NULL             |
      | N_5795_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                     | 1        | 1           | NULL           | NULL             |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_14        | 1        | 1           | 5              | NULL             |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_17        | 1        | 1           | 5              | NULL             |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_VFB       | 1        | 1           | 5              | NULL             |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_BLV       | 1        | 1           | 5              | NULL             |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_Overdraft | 1        | 1           | 5              | NULL             |
      | N_5795_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_not_eq_1   | 1        | 1           | 5              | NULL             |
      | N_5795_EML__INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_eq_NULL   | 1        | 1           | 5              | NULL             |
      | N_5795_EML_INSIGHT_CD_eq_FLG_SSM_RS20051_CURR_VAL_eq_1      | 1        | 2           | 5              | NULL             |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_17_BLV | 2        | 1           | 5              | NULL             |
      ##Updating base_02 as DNS=Y as per oct 13 2022 release
      | N_5795_DO_NOT_SOLICIT_F_eq_Y                                | 1        | 1           | 5              | NULL             |





