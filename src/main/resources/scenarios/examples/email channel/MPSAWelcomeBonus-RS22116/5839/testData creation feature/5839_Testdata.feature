@MPSAWelcomeBonus_5839_EMAIL
Feature: Test data creation for EMail MPSA Cross Sell


  @MPSACWelcomeBonus @MPSAWelcomeBonus_Positive_Base_TestData @5839 @MPSAWelcomeBonusEMAIL @RS22116
  Scenario Outline: MPSA Welcome Bonus_RS22116_5839_EMAIL Create test data for Base test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<acct_odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
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
      | Test cases       | acct_odt |
      | 5839_EML_BASE_01 | 20       |
      | 5839_EML_BASE_02 | 20       |
      | 5839_EML_BASE_03 | 20       |


  @MPSACWelcomeBonus @MPSAWelcomeBonus_Positive_TestData @5839 @MPSAWelcomeBonusEMAIL @RS22116 @MPSAIssueCheck
  Scenario Outline: MPSA Welcome Bonus_RS22116_5839_EMAIL Create test data for Positive test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<acct_odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
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
      | Test cases                                                                           | acct_odt |
      | 5839_EML_CUST_AGE_eq_18                                                              | 1        |
      | 5839_EML_LANG_CD_eq_fr                                                               | 2        |
      | 5839_EML_NOT_AML_KYC_eq_NULL                                                         | 3        |
      | 5839_EML_MD_FINANCIAL_F_eq_NULL                                                      | 4        |
      | 5839_EML_ITRADE_MCLEOD_F_eq_NULL                                                     | 5        |
      | 5839_EML_ITRADE_MCLEOD_F_eq_Y                                                        | 20       |
      | 5839_EML_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                        | 6        |
      | 5839_EML_UNSUBSCRIBED_F_eq_NULL                                                      | 7        |
      | 5839_EML_HARDBOUNCE_EMAIL_F_eq_NULL                                                  | 8        |
      | 5839_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                            | 9        |
      | 5839_EML_DO_NOT_SOLICIT_F_eq_NULL                                                    | 29       |
      | 5839_EML_ACCT_ODT_eq_30                                                              | 30       |
      | 5839_EML_INDV_LAST_NM_eq_NULL                                                        | 20       |
      | 5839_EML_CURR_VAL_ne_1                                                               | 20       |
      | 5839_EML_MRKTBLE_F_eq_N_AND_DO_NOT_SOLICIT_F_eq_N_AND_CASL_CONSENT_F_eq_Y            | 20       |
      | 5839_EML_MRKTBLE_F_eq_Y_AND_DO_NOT_SOLICIT_F_eq_Y_AND_CASL_CONSENT_F_eq_Y            | 20       |
      | 5839_EML_MRKTBLE_F_eq_NULL_AND_DO_NOT_SOLICIT_F_eq_NULL_AND_CASL_CONSENT_F_eq_N      | 20       |
      | 5839_EML_MRKTBLE_F_eq_N_AND_DO_NOT_SOLICIT_F_eq_Y_AND_CASL_CONSENT_F_eq_N            | 20       |
      | 5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_Y_DNE_eq_N | 20       |
      | 5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_N_DNE_eq_N | 20       |

  @MPSACWelcomeBonus @MPSAWelcomeBonus_Negative_TestData @5839 @MPSAWelcomeBonusEMAIL @RS22116 @MPSAIssueCheck
  Scenario Outline: MPSA Welcome Bonus_RS22116_5839_EMAIL Create test data for Negative test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<acct_odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
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
      | Test cases                                                                                         | acct_odt |
      | N_5839_EML_DECEASED_F_eq_Y                                                                         | 20       |
      | N_5839_EML_DECEASED_F_eq_NULL                                                                      | 20       |
      | N_5839_EML_CUST_TP_CD_ne_PSNL                                                                      | 20       |
      | N_5839_EML_CUST_TP_CD_eq_NULL                                                                      | 20       |
      | N_5839_EML_PRIM_CNTRY_CD_ne_CA                                                                     | 20       |
      | N_5839_EML_PRIM_CNTRY_CD_eq_NULL                                                                   | 20       |
      | N_5839_EML_CUST_AGE_lt_18                                                                          | 20       |
      | N_5839_EML_CUST_AGE_eq_NULL                                                                        | 20       |
      | N_5839_EML_LANG_CD_ne_en_fr                                                                        | 20       |
      | N_5839_EML_LANG_CD_eq_NULL                                                                         | 20       |
      | N_5839_EML_NOT_AML_KYC_eq_Y                                                                        | 20       |
      | N_5839_EML_MD_FINANCIAL_F_eq_Y                                                                     | 20       |
      | N_5839_EML_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                       | 20       |
      | N_5839_EML_HAS_CLOSED_MPSA_F_eq_Y                                                                  | 20       |
      | N_5839_EML_HAS_CLOSED_MPSA_F_eq_NULL                                                               | 20       |
      | N_5839_EML_VLD_EMAIL_F_ne_Y                                                                        | 20       |
      | N_5839_EML_VLD_EMAIL_F_eq_NULL                                                                     | 20       |
      | N_5839_EML_PRIM_EMAIL_ADDR_eq_NULL                                                                 | 20       |
      | N_5839_EML_INDV_FRST_NM_eq_NULL                                                                    | 20       |
      | N_5839_EML_UNSUBSCRIBED_F_eq_Y                                                                     | 20       |
      | N_5839_EML_HARDBOUNCE_EMAIL_F_eq_Y                                                                 | 20       |
      | N_5839_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                           | 20       |
      | N_5839_EML_MRKTBLE_F_eq_NULL                                                                       | 20       |
      | N_5839_EML_DIGITAL_ACTVTN_F_NULL                                                                   | 20       |
      | N_5839_EML_DO_NOT_EMAIL_F_eq_Y                                                                     | 20       |
      | N_5839_EML_DO_NOT_EMAIL_F_eq_NULL                                                                  | 20       |
      | N_5839_EML_SRC_ACCT_STAT_CD_ne_Active                                                              | 20       |
      | N_5839_EML_SRC_ACCT_STAT_CD_eq_NULL                                                                | 20       |
      | N_5839_EML_ACCT_SUBSYS_ID_ne_UF                                                                    | 20       |
      | N_5839_EML_ACCT_SUBSYS_ID_eq_NULL                                                                  | 20       |
      | N_5839_EML_SRC_SYS_PRD_CD_ne_BSAMP                                                                 | 20       |
      | N_5839_EML_SRC_SYS_PRD_CD_eq_NULL                                                                  | 20       |
      | N_5839_EML_ACCT_ODT_eq_0                                                                           | 0        |
      | N_5839_EML_ACCT_ODT_gt_30                                                                          | 31       |
      | N_5839_EML_ACCT_ODT_eq_NULL                                                                        | NULL     |
      | N_5839_EML_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                           | 20       |
      | N_5839_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                        | 20       |
      | N_5839_EML_INSIGHT_CD_ne_MPSA_WELCOME_BONUS                                                        | 20       |
#     | N_5839_EML_INSIGHT_CD_eq_NULL                | 20       | --  unable to insert in DB
      | N_5839_EML_CURR_VAL_eq_NULL                                                                        | 20       |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_Y_DNE_eq_Y             | 20       |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_N_DNE_eq_Y             | 20       |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_Y_DNE_eq_NULL          | 20       |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_N_DNE_eq_NULL          | 20       |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_NULL_DNE_eq_N          | 20       |
      | N_5839_EML_MRKT_F_eq_NULL_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_Y_DNE_eq_N          | 20       |
      | N_5839_EML_MRKT_F_eq_NULL_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_N_DNE_eq_N          | 20       |
      | N_5839_EML_MRKT_F_eq_NULL_AND_DO_NOT_SOLIC_F_eq_NULL_AND_CASL_CONS_F_eq_Y_DIGI_eq_NULL_DNE_eq_NULL | 20       |


  @MPSACWelcomeBonus @MPSAWelcomeBonus_Positive_Negative_TestData_MultiCustInsights @5839 @MPSAWelcomeBonusEMAIL @RS22116
  Scenario Outline: MPSA Welcome Bonus_RS22116_5839_EMAIL Create test data for Multiple cust insights test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<acct_odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases                                                           | acct_odt |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_CONTROL_CURR_VAL_ne_1    | 20       |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_CONTROL_CURR_VAL_eq_NULL | 20       |
      | N_5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_CONTROL_CURR_VAL_eq_1  | 20       |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_TARGET_CURR_VAL_ne_1     | 20       |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_TARGET_CURR_VAL_eq_NULL  | 20       |
      | N_5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_TARGET_CURR_VAL_eq_1   | 20       |


