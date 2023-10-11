@5725_D2DPaymentMethods_TestDataCreation
Feature: Test data creation for D2DPaymentMethods

# Base Positive Scenarios that covers both the Creatives for D2DPaymentMethods Offer
  @D2DPaymentMethods @D2DPaymentMethods_Base_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts

    # Cust_Acct_Rltnp_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts

    Examples:
      | Test cases           | cust_opnd_dt | Account_cnt | Acct_odt |
      | 5725_EML_NTB_BASE_01 | 9            | 2           | 14       |
      | 5725_EML_NTB_BASE_02 | 18           | 1           | 14       |


# Positive Scenarios that Cover the Test Cases with Single Account and multiple account
  @D2DPaymentMethodsData @D2DPaymentMethods_Positive_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for positive test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts

    # Cust_Acct_Rltnp_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts

    Examples:
      | Test cases                   | cust_opnd_dt | Account_cnt | Acct_odt |
#      | 5725_EML_lang_cd_eq_fr                  | 30           | 1           | 14       |
#      | 5725_EML_cust_age_eq_18                 | 40           | 1           | 14       |
#      | 5725_EML_DNS_eq_NULL                    | 20           | 1           | 14       |
      | 5725_EML_NOT_AML_KYC_NULL    | 40           | 1           | 14       |
      | 5725_EML_PRV_BNK_IND_eq_Y    | 40           | 1           | 14       |
      | 5725_EML_PRV_BNK_IND_eq_NULL | 100          | 1           | 14       |
      | N_5725_EML_NOT_AML_KYC_eq_Y  | 70           | 1           | 14       |
#      | 5725_EML_NTP_CUST_OPND_DT_gt_120        | 150          | 1           | 14       |
#      | 5725_EML_NTP_CUST_OPND_DT_eq_121        | 121          | 1           | 14       |
#      | 5725_EML_NTP_UNSUBSCRIBE_FLAG_NULL      | 160          | 1           | 14       |
#      | 5725_EML_NTP_HARDBOUNCE_EML_FLAG_NULL   | 140          | 1           | 14       |
#      | 5725_EML_NTB_HARDBOUNCE_EML_FLAG_NULL   | 40           | 1           | 14       |
#      | 5725_EML_NTB_CUST_OPND_DT_eq_120        | 120          | 1           | 14       |
#      | 5725_EML_NTB_CUST_OPND_DT_eq_119        | 119          | 1           | 14       |
#      | 5725_EML_NTB_UNSUBSCRIBE_FLAG_eq_NULL   | 80           | 1           | 14       |
#      | 5725_EML_MK_BK_INFO_ACCTS_EMAIL_eq_NULL | 70           | 1           | 14       |
#      | 5725_EML_ACCT_ODT_eq_14                 | 80           | 1           | 14       |
#      | 5725_EML_ACCT_ODT_eq_17                 | 80           | 1           | 17       |
#      | 5725_EML_PROD_CD_eq_01_SUB_PROD_eq_01   | 80           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_01_SUB_PROD_eq_02   | 90           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_01_SUB_PROD_eq_03   | 40           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_01_SUB_PROD_eq_04   | 90           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_02_SUB_PROD_eq_01   | 70           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_02_SUB_PROD_eq_02   | 80           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_02_SUB_PROD_eq_03   | 70           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_07_SUB_PROD_eq_11   | 90           | 2           | 14       |
#      | 5725_EML_PROD_CD_eq_07_SUB_PROD_eq_12   | 100          | 2           | 14       |
#      | 5725_EML_PROD_CD_eq_13_SUB_PROD_eq_01   | 98           | 2           | 14       |
#      | 5725_EML_PROD_CD_eq_13_SUB_PROD_eq_03   | 41           | 2           | 14       |
#      | 5725_EML_PROD_CD_eq_13_SUB_PROD_eq_07   | 34           | 2           | 14       |
#      | 5725_EML_PROD_CD_eq_13_SUB_PROD_eq_08   | 67           | 2           | 14       |
#      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_01   | 89           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_02   | 76           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_03   | 65           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_04   | 54           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_07   | 43           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_08   | 32           | 1           | 14       |
#      | 5725_EML_PROD_CD_eq_23_SUB_PROD_eq_01   | 78           | 2           | 14       |
#      | 5725_EML_PROD_CD_eq_23_SUB_PROD_eq_03   | 93           | 2           | 14       |

  @D2DPaymentMethods @D2DPaymentMethods_Base_TestData_5725_AFIL_Exclusion @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Dual account odt "<Acct_Odt>""<Dual_Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                                                | Acct_Odt | Dual_Acct_Odt | cust_opnd_dt |
      | 5725_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 14       | 170           | 18           |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 14       | 170           | 18           |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      | 14       | 170           | 18           |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   | 14       | 170           | 18           |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months | 14       | 170           | 18           |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     | 14       | 181           | 18           |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         | 14       | NULL          | 18           |
      | N-5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT < 6 months   | 14       | 179           | 18           |
      | N-5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = 6 months   | 14       | 180           | 18           |

  
# Negative Scenarios that Cover the Test Cases with Single Account
  @D2DPaymentMethodsData @D2DPaymentMethods_Negative_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Negative test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts

    # Cust_Acct_Rltnp_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts

    Examples:
      | Test cases | cust_opnd_dt | Account_cnt | Acct_odt |
      | N_5725_EML_DECEASED_F_eq_Y                  | 30           | 1           | 14       |
      | N_5725_EML_DECEASED_F_eq_NULL               | 40           | 1           | 14       |
      | N_5725_EML_CUST_TP_CD_ne_PSNL               | 40           | 1           | 14       |
      | N_5725_EML_LANG_CD_eq_K                     | 20           | 1           | 14       |
      | N_5725_EML_LANG_CD_eq_NULL                  | 40           | 1           | 14       |
      | N_5725_EML_PRIM_CNTRY_CD_eq_NULL            | 40           | 1           | 14       |
      | N_5725_EML_PRIM_CNTRY_CD_ne_CA              | 150          | 1           | 14       |
      | N_5725_NTP_EML_DO_NOT_EMAIL_FLAG_eq_Y       | 121          | 1           | 14       |
      | N_5725_NTP_EML_DO_NOT_EMAIL_FLAG_eq_NULL    | 160          | 1           | 14       |
      | N_5725_EML_DNS_eq_Y                         | 40           | 1           | 14       |
      | N_5725_EML_CUST_AGE_lt_18                   | 19           | 1           | 14       |
      | N_5725_EML_CUST_AGE_eq_NULL                 | 80           | 1           | 14       |
      | N_5725_EML_NTP_VALID_EMAIL_FLAG_eq_N        | 140          | 1           | 14       |
      | N_5725_EML_NTP_VALID_EMAIL_FLAG_eq_NULL     | 180          | 1           | 14       |
      | N_5725_EML_NTP_PRIM_EMAIL_ADDR_eq_BLANK     | 180          | 1           | 14       |
      | N_5725_EML_NTP_PRIM_EMAIL_ADDR_eq_NULL      | 190          | 1           | 14       |
      | N_5725_EML_NTP_INDV_FRST_NM_eq_NULL         | 140          | 1           | 14       |
      | N_5725_EML_NTP_INDV_FRST_NM_eq_BLANK        | 190          | 1           | 14       |
      | N_5725_EML_NTP_CASL_CNSNT_FLAG_N            | 170          | 1           | 14       |
      | N_5725_EML_NTP_UNSUBSCRIBE_FLAG_Y           | 180          | 1           | 14       |
      | N_5725_EML_NTP_HARDBOUNCE_EML_FLAG_Y        | 170          | 1           | 14       |
      | N_5725_EML_CUST_OPND_DT_eq_NULL             | NULL         | 1           | 14       |
      | N_5725_EML_NTB_VALID_EMAIL_FLAG_eq_N        | 100          | 1           | 14       |
      | N_5725_EML_NTB_VALID_EMAIL_FLAG_eq_NULL     | 98           | 1           | 14       |
      | N_5725_EML_NTB_PRIM_EMAIL_ADDR_eq_BLANK     | 41           | 1           | 14       |
      | N_5725_EML_NTB_PRIM_EMAIL_ADDR_eq_NULL      | 34           | 1           | 14       |
      | N_5725_EML_NTB_INDV_FRST_NM_eq_NULL         | 67           | 1           | 14       |
      | N_5725_EML_NTB_INDV_FRST_NM_eq_BLANK        | 89           | 1           | 14       |
      | N_5725_EML_NTB_UNSUBSCRIBE_FLAG_Y           | 76           | 1           | 14       |
      | N_5725_EML_NTB_HARDBOUNCE_EML_FLAG_Y        | 65           | 1           | 14       |
      | N_5725_EML_ACCT_ODT_eq_13                   | 54           | 1           | 13       |
      | N_5725_EML_ACCT_ODT_eq_18                   | 43           | 1           | 18       |
      | N_5725_EML_ACCT_ODT_eq_NULL                 | 32           | 1           | NULL     |
      | N_5725_EML_MK_BK_INFO_ACCTS_EMAIL_eq_N      | 78           | 1           | 14       |
      | N_5725_EML_PRIMARY_ACCT_HOLDER_eq_N         | 93           | 1           | 14       |
      | N_5725_EML_PRIMARY_ACCT_HOLDER_eq_NULL      | 78           | 1           | 14       |
      | N_5725_EML_ACCT_SUBSYS_ID _eq_NULL          | 93           | 1           | 14       |
      | N_5725_EML_ACCT_SUBSYS_ID _ne_BB            | 78           | 1           | 14       |
      | N_5725_EML_SRC_ACCT_STAT_CD _ne_A           | 93           | 1           | 14       |
      | N_5725_EML_SRC_ACCT_STAT_CD _eq_NULL        | 78           | 1           | 14       |
      | N_5725_EML_PROD_CD_eq_10_SUB_PROD_CD_01     | 93           | 1           | 14       |
      | N_5725_EML_PROD_CD_eq_23_SUB_PROD_CD_10     | 78           | 2           | 14       |
      | N_5725_EML_PROD_CD_eq_NULL_SUB_PROD_CD_01   | 93           | 1           | 14       |
      | N_5725_EML_PROD_CD_eq_01_SUB_PROD_CD_NULL   | 78           | 1           | 14       |
      | N_5725_EML_PROD_CD_eq_NULL_SUB_PROD_CD_NULL | 93           | 1           | 14       |
      | N_5725_EML_PROD_CD_eq_18_SUB_PROD_CD_26     | 93           | 1           | 14       |

# positive Scenarios that Cover the Test Cases for segmentation and prioritization
  @D2DPaymentMethodsData @D2DPaymentMethods_positive_TestData_5725_segmentation_prioritization @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create positive test data for segmentation and prioritization test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
#    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
#
#    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
#
#    # Cust_Acct_Rltnp_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
#
    Examples:
      | Test cases                                                                                       | cust_opnd_dt | Account_cnt | Acct_odt |
###   "Verify that Offer is Returned with Creative '5725052202' when Customer has Specific Active BB Account
####  ACCT_DIM.ACCT_SUBSYS_ID = 'BB' AND SRC_ACCT_STAT_CD = 'A'  AND
####  (SRC_PRD_CD, SRC_SUB_PRD_CD) in {(01, 01|02|03|04), (02, 01|02|03), (19, 01|02|03|04|07|08)}"
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_01                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_02                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_03                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_04                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_01                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_02                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_03                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_01                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_02                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_03                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_04                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_07                                     | 30           | 1           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_08                                     | 30           | 1           | 14       |
###  "Verify that Offer is Returned with Creative '5725052201' when Customer has Specific Active BB Account and an Active AC account with Reward_TP in ('S','T')
###  ACCT_DIM.ACCT_SUBSYS_ID = 'BB' AND SRC_ACCT_STAT_CD = 'A'  AND
###  (SRC_PRD_CD, SRC_SUB_PRD_CD) in {(07, 11|12), (13, 01|03|07|08), (23, 01|03)} AND
###  ACCT_SUBSYS_ID = 'AC' AND EDW_ACCT_STAT_CD = 'A' AND REWARD_TP in ('S','T'))"
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_11_Active_AC_REWARD_TP_eq_S               | 140          | 2           | 14       |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_12_Active_AC_REWARD_TP_eq_T               | 140          | 2           | 14       |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_01_Active_AC_REWARD_TP_eq_S               | 140          | 2           | 14       |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_03_Active_AC_REWARD_TP_eq_S               | 140          | 2           | 14       |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_07_Active_AC_REWARD_TP_eq_T               | 140          | 2           | 14       |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_08_Active_AC_REWARD_TP_eq_S               | 140          | 2           | 14       |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_01_Active_AC_REWARD_TP_eq_S               | 140          | 2           | 14       |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_03_Active_AC_REWARD_TP_eq_T               | 140          | 2           | 14       |
###  "Verify that Offer is Returned with Creative '5725052202' when Customer has Specific Active BB Account and an Active AC account with Reward_TP NOT in ('S','T')
###  ACCT_DIM.ACCT_SUBSYS_ID = 'BB' AND SRC_ACCT_STAT_CD = 'A'  AND
###  (SRC_PRD_CD, SRC_SUB_PRD_CD) in {(07, 11|12), (13, 01|03|07|08), (23, 01|03)} AND
###  ACCT_SUBSYS_ID = 'AC' AND EDW_ACCT_STAT_CD = 'A' AND REWARD_TP NOT in ('S','T') or NULL)"
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_11_Active_AC_REWARD_TP_eq_P               | 30           | 2           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_07_Active_AC_REWARD_TP_eq_NULL            | 30           | 2           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_12_Active_AC_REWARD_TP_eq_P               | 30           | 2           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_03_Active_AC_REWARD_TP_eq_NULL            | 30           | 2           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_07_Active_AC_REWARD_TP_eq_P               | 30           | 2           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_08_Active_AC_REWARD_TP_eq_NULL            | 30           | 2           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_01_Active_AC_REWARD_TP_eq_P               | 30           | 2           | 14       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_03_Active_AC_REWARD_TP_eq_NULL            | 30           | 2           | 14       |
##     Prioritization
##     Customer has 3 Green BB Accounts (07, 13, 23) with AC Account REWARD_TP in ('S', 'T') -> 01 Segment with Highest Priority Account (23)
      | 5725_EML_NTB_3_Active_BB_SRC_PRD_CD_eq_07_13_23_SRC_SUB_PRD_CD_11_01_01_Active_AC_REWARD_TP_eq_S | 30           | 4           | 14       |
##     Customer has 2 Green BB Accounts (07, 13) with AC Account REWARD_TP in ('S', 'T') -> 01 Segment with Second Highest Priority Account (13)
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_07_13_SRC_SUB_PRD_CD_11_01_Active_AC_REWARD_TP_eq_S       | 30           | 3           | 14       |
##     Customer has 3 Green BB Accounts (07, 13, 23) with AC Account REWARD_TP NOT in ('S', 'T') -> 02 Segment with Highest Priority Account (23)
      | 5725_EML_NTB_3_Active_BB_SRC_PRD_CD_eq_07_13_23_SRC_SUB_PRD_CD_11_01_01_Active_AC_REWARD_TP_eq_R | 30           | 4           | 14       |
##     Customer has 2 Green BB Accounts (07, 13) with AC Account REWARD_TP NOT in ('S', 'T') -> 02 Segment with Second Highest Priority Account (13)
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_07_13_SRC_SUB_PRD_CD_11_01_Active_AC_REWARD_TP_eq_Q       | 30           | 3           | 14       |
##    Customer has 3 Purple BB Accounts (01, 02, 19) -> 02 Segment with Highest Priority Account (19)
      | 5725_EML_NTB_3_Active_BB_SRC_PRD_CD_eq_01_02_19_SRC_SUB_PRD_CD_01_02_03                          | 30           | 3           | 14       |
##     Customer has 2 Purple BB Accounts (01, 02) -> 02 Segment with Random Account (01 or 02)
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_01_02_SRC_SUB_PRD_CD_01_02                                | 30           | 2           | 14       |
##     Customer has 1 Purple BB Account (01|02|19) and 1 Green BB Account (07) with AC Account REWARD_TP in ('S', 'T') -> 01 Segment with Account  (07)
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_01_07_SRC_SUB_PRD_CD_01_12_Active_AC_REWARD_TP_eq_S       | 30           | 3           | 14       |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_02_07_SRC_SUB_PRD_CD_01_12_Active_AC_REWARD_TP_eq_S       | 30           | 3           | 14       |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_19_07_SRC_SUB_PRD_CD_01_12_Active_AC_REWARD_TP_eq_S       | 30           | 3           | 14       |
##     Customer has 1 Purple BB Account (19) and 1 Green BB Account (13) with AC Account REWARD_TP NOT in ('S', 'T') -> 02 Segment with Account  (13)
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_19_13_SRC_SUB_PRD_CD_01_01_Active_AC_REWARD_TP_eq_NULL    | 30           | 3           | 14       |
##     Customer has 1 Purple BB Account (19) and 1 Green BB Account (07) with AC Account REWARD_TP NOT in ('S', 'T') -> 02 Segment with Account  (19)
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_19_07_SRC_SUB_PRD_CD_01_11_Active_AC_REWARD_TP_eq_M       | 30           | 3           | 14       |
#
# # Negative Scenarios that Cover the Test Cases for segmentation and prioritization
  @D2DPaymentMethodsData @D2DPaymentMethods_Negative_TestData_5725_segmentation_prioritization @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create negative test data for segmentation and prioritization test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts

    # Cust_Acct_Rltnp_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts

    Examples:
      | Test cases                                                                                  | cust_opnd_dt | Account_cnt | Acct_odt |
##    "Verify that Offer is NOT Returned when Customer does NOT have any Specific Active BB Account
##  ACCT_DIM.ACCT_SUBSYS_ID != 'BB' or NULL OR SRC_ACCT_STAT_CD != 'A' or NULL OR
##  (SRC_PRD_CD, SRC_SUB_PRD_CD) NOT in {(01, 01|02|03|04), (02, 01|02|03), (19, 01|02|03|04|07|08)} or NULL"
      | N_5725_EML_NTB_Active_ACCT_SUBSYS_ID_ne_BB                                                  | 30           | 1           | 14       |
      | N_5725_EML_NTB_Active_ACCT_SUBSYS_ID_eq_NULL                                                | 30           | 1           | 14       |
      | N_5725_EML_NTB_BB_Account_SRC_ACCT_STAT_CD_ne_A                                             | 30           | 1           | 14       |
      | N_5725_EML_NTB_BB_Account_SRC_ACCT_STAT_CD_eq_NULL                                          | 30           | 1           | 14       |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_11_SRC_SUB_PRD_CD_eq_01                              | 30           | 1           | 14       |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_11                              | 30           | 1           | 14       |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_11                              | 30           | 1           | 14       |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_NULL                            | 30           | 1           | 14       |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_01                            | 30           | 1           | 14       |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_NULL                          | 30           | 1           | 14       |
##    "Verify that Offer is NOT Returned when Customer does not have Specific Active BB Account and an Active AC account
##     ACCT_DIM.ACCT_SUBSYS_ID != 'BB' or NULL OR SRC_ACCT_STAT_CD != 'A' or NULL  OR
##     (SRC_PRD_CD, SRC_SUB_PRD_CD) NOT in {(07, 11|12), (13, 01|03|07|08), (23, 01|03)} or NULL OR
##     ACCT_SUBSYS_ID != 'AC' or NULL OR EDW_ACCT_STAT_CD != 'A' or NULL"
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_ACCT_SUBSYS_ID_ne_BB                         | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_ACCT_SUBSYS_ID_eq_NULL                       | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_BB_Account_SRC_ACCT_STAT_CD_ne_A                    | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_BB_Account_SRC_ACCT_STAT_CD_eq_NULL                 | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_02     | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_11     | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_15_SRC_SUB_PRD_CD_eq_16     | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_11   | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_NULL   | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_NULL | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_ACCT_SUBSYS_ID_ne_AC_REWARD_TP_eq_S_Active_BB                         | 30           | 2           | 14       |
      | N_5725_EML_NTB_Active_ACCT_SUBSYS_ID_eq_NULL_REWARD_TP_eq_S_Active_BB                       | 30           | 2           | 14       |
      | N_5725_EML_NTB_AC_Account_EDW_ACCT_STAT_CD_ne_A_REWARD_TP_eq_S_Active_BB                    | 30           | 2           | 14       |
      | N_5725_EML_NTB_AC_Account_EDW_ACCT_STAT_CD_eq_NULL_REWARD_TP_eq_S_Active_BB                 | 30           | 2           | 14       |
#
  @D2DPaymentMethods @D2DPaymentMethods_Static_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases             | cust_opnd_dt | Account_cnt | Acct_odt |
      | 5725_ARRV_DT = 3 years | 18           | 1           | 14       |
      | 5725_ARRV_DT < 3 years | 18           | 1           | 14       |
      | 5725_ARRV_DT > 3 years | 18           | 1           | 14       |
#
  @D2DPaymentMethods @D2DPaymentMethods_Static_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When write mobile last login date "<mob_login>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                        | mob_login | cust_opnd_dt | Account_cnt | Acct_odt |
      | 5725_MOB_LAST_LOGIN_DT < 6 months | 179       | 18           | 1           | 14       |
      | 5725_MOB_LAST_LOGIN_DT = 6 months | 180       | 18           | 1           | 14       |
      | 5725_MOB_LAST_LOGIN_DT > 6 months | 181       | 18           | 1           | 14       |
#
  @D2DPaymentMethods @D2DPaymentMethods_Static_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    When write "LAST_VD_VPOS_TXN_TMSTMP" for "<pos_dt>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                                                                                             | cust_opnd_dt | Account_cnt | Acct_odt | pos_dt |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_VPOS_TXN_TMSTMP = 17 days | 9            | 2           | 14       | 17     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_VPOS_TXN_TMSTMP < 17 days | 9            | 2           | 14       | 16     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_VPOS_TXN_TMSTMP > 17 days | 9            | 2           | 14       | 18     |
#
  @D2DPaymentMethods @D2DPaymentMethods_Static_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    When write "LAST_VD_OPOS_TXN_TMSTMP" for "<pos_dt>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                                                                                             | cust_opnd_dt | Account_cnt | Acct_odt | pos_dt |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_OPOS_TXN_TMSTMP = 17 days | 9            | 2           | 14       | 17     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_OPOS_TXN_TMSTMP < 17 days | 9            | 2           | 14       | 16     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_OPOS_TXN_TMSTMP > 17 days | 9            | 2           | 14       | 18     |
#
  @D2DPaymentMethods @D2DPaymentMethods_Static_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    When write "LAST_FLASH_TXN_DT" for "<pos_dt>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                                                                                       | cust_opnd_dt | Account_cnt | Acct_odt | pos_dt |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_FLASH_TXN_DT = 17 days | 9            | 2           | 14       | 17     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_FLASH_TXN_DT < 17 days | 9            | 2           | 14       | 16     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_FLASH_TXN_DT > 17 days | 9            | 2           | 14       | 18     |

  @D2DPaymentMethods @D2DPaymentMethods_Static_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    When write "LAST_APPLE_PAY_TXN_TMSTMP" for "<pos_dt>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                                                                                               | cust_opnd_dt | Account_cnt | Acct_odt | pos_dt |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_APPLE_PAY_TXN_TMSTMP = 17 days | 9            | 2           | 14       | 17     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_APPLE_PAY_TXN_TMSTMP < 17 days | 9            | 2           | 14       | 16     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_APPLE_PAY_TXN_TMSTMP > 17 days | 9            | 2           | 14       | 18     |
#
  @D2DPaymentMethods @D2DPaymentMethods_Static_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    When write "LAST_ANDROID_PAY_TXN_TMSTMP" for "<pos_dt>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                                                                                                 | cust_opnd_dt | Account_cnt | Acct_odt | pos_dt |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_ANDROID_PAY_TXN_TMSTMP = 17 days | 9            | 2           | 14       | 17     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_ANDROID_PAY_TXN_TMSTMP < 17 days | 9            | 2           | 14       | 16     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_ANDROID_PAY_TXN_TMSTMP > 17 days | 9            | 2           | 14       | 18     |
#
  @D2DPaymentMethods @D2DPaymentMethods_Static_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    When write "LAST_SAMSUNG_PAY_TXN_TMSTMP" for "<pos_dt>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                                                                                                 | cust_opnd_dt | Account_cnt | Acct_odt | pos_dt |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SAMSUNG_PAY_TXN_TMSTMP = 17 days | 9            | 2           | 14       | 17     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SAMSUNG_PAY_TXN_TMSTMP < 17 days | 9            | 2           | 14       | 16     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SAMSUNG_PAY_TXN_TMSTMP > 17 days | 9            | 2           | 14       | 18     |
#
  @D2DPaymentMethods @D2DPaymentMethods_Static_TestData_5725 @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    When write "LAST_SCOTIA_PAY_TXN_TMSTMP" for "<pos_dt>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                                                                                                | cust_opnd_dt | Account_cnt | Acct_odt | pos_dt |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SCOTIA_PAY_TXN_TMSTMP = 17 days | 9            | 2           | 14       | 17     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SCOTIA_PAY_TXN_TMSTMP < 17 days | 9            | 2           | 14       | 16     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SCOTIA_PAY_TXN_TMSTMP > 17 days | 9            | 2           | 14       | 18     |
