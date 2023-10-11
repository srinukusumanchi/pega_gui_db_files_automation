@MissingAndInvalidEmail_5778_SOL_ccfile
Feature: Test data creation for SOL Invalid Email CIE5778

  @MissingAndInvalidEmail @InvalidEmail_Base_TestData_SOL @5778 @InvalidEMAIL_SOL @RS22069
  Scenario Outline: Invalid Email_RS22069_5778_SOL Create test data for Base test cases
    Given load data from "InvalidEmail_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table


    Examples:
      | Test cases                | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5778_SOL_BASE_Creative_01 | 60               | 60               |


  @MissingAndInvalidEmail @InvalidEmail_Positive_TestData_SOL @5778 @InvalidEMAIL_SOL @RS22069
  Scenario Outline: Invalid Email_RS22069_5778_SOL Create test data for Positive test cases
    Given load data from "InvalidEmail_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                           | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5778_SOL_VLD_EMAIL_F_eq_NULL         | 60               | 60               |
      | 5778_SOL_LANG_CD_eq_fr               | 60               | 60               |
      | 5778_SOL_UNSUBSCRIBED_F_eq_NULL      | 60               | 60               |
      | 5778_SOL_SOL_LAST_LOGIN_DT_eq_90Days | NULL             | 90               |
      | 5778_SOL_MOB_LAST_LOGIN_DT_eq_90Days | 90               | NULL             |
      | 5778_SOL_MC_ELIG_F_eq_NULL           | 60               | 60               |
      | 5778_SOL_PRIM_EMAIL_ADDR_eq_NULL     | 60               | 60               |
      | 5778_SOL_GIVEN_NAME_eq_NULL          | 60               | 60               |
      | 5778_SOL_DO_NOT_SOLICIT_F_eq_NULL    | 60               | 60               |


  @MissingAndInvalidEmail @InvalidEmail_Negative_TestData @5778 @InvalidEMAIL_SOL @RS22069
  Scenario Outline: Invalid Email_RS22069_5778_SOL Create test data for Negative test cases
    Given load data from "InvalidEmail_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                                                                                 | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | N_5778_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_NULL | 60               | 60               |
      | N_5778_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_NULL | 60               | 60               |
      | N_5778_SOL_DECEASED_F_eq_Y                                                                 | 60               | 60               |
      | N_5778_SOL_DECEASED_F_eq_NULL                                                              | 60               | 60               |
      | N_5778_SOL_VLD_EMAIL_F_eq_Y                                                                | 60               | 60               |
      | N_5778_SOL_PRIM_CNTRY_CD_ne_CA                                                             | 60               | 60               |
      | N_5778_SOL_PRIM_CNTRY_CD_eq_NULL                                                           | 60               | 60               |
      | N_5778_SOL_LANG_CD_ne_en                                                                   | 60               | 60               |
      | N_5778_SOL_LANG_CD_ne_fr                                                                   | 60               | 60               |
      | N_5778_SOL_LANG_CD_ne_e                                                                    | 60               | 60               |
      | N_5778_SOL_LANG_CD_ne_f                                                                    | 60               | 60               |
      | N_5778_SOL_LANG_CD_eq_NULL                                                                 | 60               | 60               |
      | N_5778_SOL_UNSUBSCRIBED_F_eq_Y                                                             | 60               | 60               |
      | N_5778_SOL_MOB_LAST_LOGIN_DT_eq_NULL_AND_SOL_LAST_LOGIN_DT_eq_NULL                         | NULL             | NULL             |
      | N_5778_SOL_MOB_LAST_LOGIN_DT_gt_90_AND_SOL_LAST_LOGIN_DT_gt_90                             | 91               | 91               |
      | N_5778_SOL_MC_ELIG_F_eq_N                                                                  | 60               | 60               |
      | N_5778_SOL_INDV_FRST_NM_eq_NULL                                                            | 60               | 60               |
      | N_5778_SOL_INDV_LAST_NM_eq_NULL                                                            | 60               | 60               |
      | N_5778_SOL_LANG_CD_eq_NULL                                                                 | 60               | 60               |
      | N_5778_SOL_PRIM_ADDR_LINE_1_eq_NULL                                                        | 60               | 60               |
      | N_5778_SOL_PRIM_CITY_NM_eq_NULL                                                            | 60               | 60               |
      | N_5778_SOL_PRIM_PROV_CD_eq_NULL                                                            | 60               | 60               |
      | N_5778_SOL_PRIM_POST_CD_eq_NULL                                                            | 60               | 60               |
      | N_5778_SOL_ACCT_SUBSYS_ID_ne_AC                                                            | 60               | 60               |
      | N_5778_SOL_ACCT_SUBSYS_ID_eq_NULL                                                          | 60               | 60               |
      | N_5778_SOL_EDW_ACCT_STAT_CD_ne_A                                                           | 60               | 60               |
      | N_5778_SOL_EDW_ACCT_STAT_CD_eq_NULL                                                        | 60               | 60               |
      | N_5778_SOL_SCD_NUM_eq_NULL                                                                 | 60               | 60               |
      | N_5778_SOL_CUST_TP_CD_ne_PSNL                                                              | 60               | 60               |
      | N_5778_SOL_DO_NOT_SOLICIT_F_eq_Y                                                           | 60               | 60               |


# Added for July 6th 2023 Release - Can be deactivated later
  @MissingAndInvalidEmail @InvalidEmail_Pos_TestData_SOL_July_6th_2023_Release @5778 @InvalidEMAIL_SOL @RS22069
  Scenario Outline: Invalid Email_RS22069_5778_SOL Create test data for Positive test cases for July 6th 2023 Release
    Given load data from "InvalidEmail_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                      | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5778_SOL_DO_NOT_EMAIL_F_eq_Y    | 60               | 60               |
      | 5778_SOL_DO_NOT_EMAIL_F_eq_NULL | 60               | 60               |
      | 5778_SOL_DO_NOT_EMAIL_F_eq_N    | 60               | 60               |


