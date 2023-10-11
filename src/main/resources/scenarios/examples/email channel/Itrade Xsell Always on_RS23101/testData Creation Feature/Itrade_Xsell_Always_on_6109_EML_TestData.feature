@Itrade_Xsell_Always_on_EML_TestLoad
Feature: Test Data Creation For Itrade Xsell Always on for EML Channel

  @Itrade_Xsell_Always_on_EML @Itrade_Xsell_Always_on_EML_Base_TestData_6109 @6109 @EML @RS23101
  Scenario Outline: Itrade Xsell Always on 6109 RS23101 EML Create test data for Base Line test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "CUST_OPND_DT" field with "<CUST_OPND_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
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
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Insight_Cnt | CUST_OPND_DT_Val |ACCT_ODT_Val|
      | 6109_EML_BASE_Creative_01 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_02 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_03 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_04 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_05 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_06 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_07 | 1        | 1           | NULL             | NULL     |

    # Positive Scenarios
  @Itrade_Xsell_Always_on_EML @Itrade_Xsell_Always_on_EML_Positive_TestData_6109 @6109 @EML @RS23101
  Scenario Outline: Itrade Xsell Always on 6109 RS23101 EML Create test data for Positive test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "CUST_OPND_DT" field with "<CUST_OPND_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
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
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                        | Acct_Cnt | Insight_Cnt | CUST_OPND_DT_Val | ACCT_ODT_Val |
      | 6109_EML_Seg_01_LANG_CD_eq_fr                                     | 1        | 1           | NULL             | NULL         |
      | 6109_EML_Seg_02_NOT_AML_KYC_eq_NULL                               | 1        | 1           | NULL             | NULL         |
      | 6109_EML_Seg_03_DO_NOT_SOLICIT_F_eq_NULL                          | 1        | 1           | NULL             | NULL         |
      | 6109_EML_Seg_04_MK_ITRADE_EMAIL_F_eq_NULL                         | 1        | 1           | NULL             | NULL         |
      | 6109_EML_Seg_06_INDV_TTL_NM_ne_NULL                               | 1        | 1           | NULL             | NULL         |
      #Positive Exclusion Scenarios
      | 6109_EML_Seg_01_CUST_OPND_DT_lt_120                               | 1        | 1           | 119              | 89           |
      | 6109_EML_Seg_01_CUST_OPND_DT_eq_120                               | 1        | 1           | 120              | 89           |
      | 6109_EML_Seg_01_CUST_OPND_DT_eq_NULL                              | 1        | 1           | NULL             | 89           |
      | 6109_EML_Seg_01_SRC_ACCT_STAT_CD_ne_A                             | 1        | 1           | 122              | 89           |
      | 6109_EML_Seg_01_SRC_ACCT_STAT_CD_eq_NULL                          | 1        | 1           | 122              | 89           |
      | 6109_EML_Seg_01_ACCT_ODT_gt_91                                    | 1        | 1           | 122              | 91           |
      | 6109_EML_Seg_01_ACCT_ODT_gt_NULL                                  | 1        | 1           | 122              | NULL         |
      | 6109_EML_Seg_01_ACCT_SUBSYS_ID_ne_BB                              | 1        | 1           | 122              | 89           |
      | 6109_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG _ne_Y                    | 1        | 1           | 122              | 89           |
      | 6109_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG _eq_NULL                 | 1        | 1           | 122              | 89           |
      | 6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_01     | 1        | 1           | 122              | 89           |
      | 6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL | 1        | 1           | 122              | 89           |



    
# Negative Scenarios
  @Itrade_Xsell_Always_on_EML @Itrade_Xsell_Always_on_EML_Negative_TestData_6109 @6109 @EML @RS23101
  Scenario Outline: Itrade Xsell Always on 6109 RS23101 EML Create test data for Negative test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "CUST_OPND_DT" field with "<CUST_OPND_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
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
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                                                | Acct_Cnt | Insight_Cnt | CUST_OPND_DT_Val | ACCT_ODT_Val |
      | N-6109_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL                                                                 | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_02_INDV_FRST_NM_eq_NULL                                                                    | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_03_INDV_LAST_NM_eq_NULL                                                                    | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_04_LANG_CD_eq_NULL                                                                         | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_05_PRIM_CNTRY_CD_ne_CA                                                                     | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_06_PRIM_CNTRY_CD_ne_NULL                                                                   | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_07_CUST_TP_CD_ne_PSNL                                                                      | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_01_LANG_CD_eq_ka                                                                           | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_02_MRKTBLE_F _ne_Y                                                                         | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_03_MRKTBLE_F _eq_NULL                                                                      | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_04_NOT_AML_KYC_eq_Y                                                                        | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_05_CUST_AGE_eq_18                                                                          | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_06_CUST_AGE_eq_11                                                                          | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_07_CUST_AGE_eq_NULL                                                                        | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_01_ITRADE_MCLEOD_F _ne_N                                                                   | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_02_ITRADE_MCLEOD_F _eq_NULL                                                                | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_03_ITRADE_XSELL_DECILE_eq_NULL                                                             | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_04_DO_NOT_EMAIL_F _ne_N                                                                    | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_05_DO_NOT_EMAIL_F _eq_NULL                                                                 | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_06_VLD_EMAIL_F_ne_Y                                                                        | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_07_VLD_EMAIL_F_eq_NULL                                                                     | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_01_DO_NOT_SOLICIT_F_eq_Y                                                                   | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_02_MK_ITRADE_EMAIL_F _eq_N                                                                 | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_03_INSIGHT_CD _ne_ITRADE_SEGMENT                                                           | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_04_CURR_VAL _lt_1                                                                          | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_05_CURR_VAL _gt_7                                                                          | 1        | 1           | NULL             | NULL         |
      | N-6109_EML_Seg_06_CURR_VAL _eq_NULL                                                                       | 1        | 1           | NULL             | NULL         |
      #Exclusion Scenarios
      | N-6109_EML_Seg_01_CUST_OPND_DT_gt_120_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90_PRIMARY_ACCT_HOLDER_FLAG _eq_Y | 1        | 1           | 121              | 89           |
      | N-6109_EML_Seg_01_ACCT_ODT_eq_90                                                                          | 1        | 1           | 122              | 90           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07                                           | 1        | 1           | 122              | 89           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08                                           | 1        | 1           | 122              | 89           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11                                           | 1        | 1           | 122              | 89           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                                           | 1        | 1           | 122              | 89           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01                                           | 1        | 1           | 122              | 89           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03                                           | 1        | 1           | 122              | 89           |




