Feature: IH Validation for Proactive Dormancy_5805

  @ProactiveDormancy_5805_IH_PositiveTCs_Validation
  Scenario Outline: Proactive Dormancy 5805_ZZ22087_FFT Validate IH details against database and pega for Positive test cases
    Given load data from "ProactiveDormancy_CC_FFT" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Proactive Dormancy offer details against IH
    Examples:
      | Test cases                                                                               |
      | 5805_FFT_ProactiveDormancy_BASE_01                                                       |
      | 5805_FFT_LANG_CD_eq_fr                                                                   |
      | 5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_and_CURR_VAL_eq_1_CURRENTDATE _lt_EVENT_DATE |




  @ProactiveDormancy_5805_IH_NegativeTCs_Validation
  Scenario Outline: Proactive Dormancy 5805_ZZ22087_FFT Validate IH details against database and pega for Negative test cases
    Given load data from "ProactiveDormancy_CC_FFT" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                             |
      | N_5805_FFT_ DECEASED_F_eq_Y                                                            |
      | N_5805_FFT_ DECEASED_F_eq_NULL                                                         |
      | N_5805_FFT_CUST_TP_CD_ne_PSNL                                                          |
      | N_5805_FFT_PRIM_CNTRY_CD_eq_MA                                                         |
      | N_5805_FFT_PRIM_CNTRY_CD_eq_NULL                                                       |
      | N_5805_FFT_Lang_CD_eq_bn                                                               |
      | N_5805_FFT_Lang_CD_eq_NULL                                                             |
      | N_5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_CURR_VAL_not_eq_1                        |
      | N_5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_CURR_VAL_eq_NULL                         |
      | N_5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_CURR_VAL_eq_1_CURRENTDATE _eq_EVENT_DATE |
      | N_5805_FFT_INSIGHT_CD_eq_FLG_DORMANCY_ZZ22087_CURR_VAL_eq_1_CURRENTDATE_gt_EVENT_DATE  |
      | N_5805_FFT_EVENT_DATE_eq_NULL                                                          |
      | N_5805_CC_FILE_INDV_FRST_NM_eq_NULL                                                    |
      | N_5805_CC_FILE_INDV_LAST_NM_eq_NULL                                                    |
      | N_5805_CC_FILE_PRIM_ADDR_LINE_1_eq_NULL                                                |
      | N_5805_CC_FILE_PRIM_CITY_NM_eq_NULL                                                    |
      | N_5805_CC_FILE_PRIM_PROV_CD_eq_NULL                                                    |
      | N_5805_CC_FILE_PRIM_POST_CD_eq_NULL                                                    |




