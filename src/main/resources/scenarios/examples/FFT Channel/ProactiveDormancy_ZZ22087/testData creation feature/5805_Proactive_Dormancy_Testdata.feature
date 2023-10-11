@Proactive_Dormancy_5805_EMAIL
Feature: Test data creation for Proactive Dormancy Offer

  @Proactive_Dormancy_5805 @EMAIL @Proactive_Dormancy_5805_BASE_TESTDATA @ZZ22087 @5805
  Scenario Outline: Proactive_Dormancy_ZZ22087_5805_FFT Create test data for Base test cases
    Given load data from "ProactiveDormancy_CC_FFT" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "1" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "1" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "1" accounts
    And write Event Date "<Event_Duration>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    And write account number last "9" digits into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "1" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "1" accounts

    Examples:
      | Test cases                         | Event_Duration |
      | 5805_FFT_ProactiveDormancy_BASE_01 | -5             |


  @Proactive_Dormancy_5805 @EMAIL @Proactive_Dormancy_5805_Positive_TESTDATA @ZZ22087 @5805
  Scenario Outline: Proactive_Dormancy_ZZ22087_5805_FFT Create test data for Positive test cases
    Given load data from "ProactiveDormancy_CC_FFT" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "1" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "1" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "1" accounts
    And write Event Date "<Event_Duration>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    And write account number last "9" digits into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "1" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "1" accounts

    Examples:
      | Test cases                                                                               | Event_Duration |
      | 5805_FFT_LANG_CD_eq_fr                                                                   | -10            |
      | 5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_and_CURR_VAL_eq_1_CURRENTDATE _lt_EVENT_DATE | -1             |


  @Proactive_Dormancy_5805 @EMAIL @Proactive_Dormancy_5805_Negative_TESTDATA @ZZ22087 @5805
  Scenario Outline: Proactive_Dormancy_ZZ22087_5805_FFT Create test data for Negative test cases
    Given load data from "ProactiveDormancy_CC_FFT" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "1" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "1" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "1" accounts
    And write Event Date "<Event_Duration>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    And write account number last "9" digits into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "1" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "1" accounts

    Examples:
      | Test cases                                                                             | Event_Duration |
      | N_5805_FFT_ DECEASED_F_eq_Y                                                            | -5             |
      | N_5805_FFT_ DECEASED_F_eq_NULL                                                         | -5             |
      | N_5805_FFT_CUST_TP_CD_ne_PSNL                                                          | -5             |
      | N_5805_FFT_PRIM_CNTRY_CD_eq_MA                                                         | -5             |
      | N_5805_FFT_PRIM_CNTRY_CD_eq_NULL                                                       | -5             |
      | N_5805_FFT_Lang_CD_eq_bn                                                               | -5             |
      | N_5805_FFT_Lang_CD_eq_NULL                                                             | -5             |
      | N_5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_CURR_VAL_not_eq_1                        | -5             |
      | N_5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_CURR_VAL_eq_NULL                         | -5             |
      | N_5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_CURR_VAL_eq_1_CURRENTDATE _eq_EVENT_DATE | 0              |
      | N_5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_CURR_VAL_eq_1_CURRENTDATE_gt_EVENT_DATE  | 1              |
      | N_5805_FFT_EVENT_DATE_eq_NULL                                                          | NULL           |
      | N_5805_CC_FILE_INDV_FRST_NM_eq_NULL                                                    | -5             |
      | N_5805_CC_FILE_INDV_LAST_NM_eq_NULL                                                    | -5             |
      | N_5805_CC_FILE_PRIM_ADDR_LINE_1_eq_NULL                                                | -5             |
      | N_5805_CC_FILE_PRIM_CITY_NM_eq_NULL                                                    | -5             |
      | N_5805_CC_FILE_PRIM_PROV_CD_eq_NULL                                                    | -5             |
      | N_5805_CC_FILE_PRIM_POST_CD_eq_NULL                                                    | -5             |

