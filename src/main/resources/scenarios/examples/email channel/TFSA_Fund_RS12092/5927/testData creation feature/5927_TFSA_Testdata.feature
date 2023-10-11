@TFSAFund_Remainder_5927_Email
Feature: Test data creation for EMail TFSA Contribution

  @TFSAFundRemainder_Email_1111_Data_creation
  Scenario Outline: TFSA Fund_RS21092_5927_EMAIL Create test data for 1111
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write "ACCT_ODT" for "<Acct_Odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases   | Acct_Odt |
      | 5927_Base_01 | 10       |
      | 5927_Base_02 | 72       |


  @TFSAFundRemainder_Email_Positive_1111
  Scenario Outline: TFSAFundRemainder_RS21094_5927_EMAIL Create test data for positive scenarios 1111
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write "ACCT_ODT" for "<Acct_Odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                                                                                     | Acct_Odt |
      | 5927_CUST_AGE_eq_18                                                                            | 30       |
      | 5927_LANG_CD_eq_e                                                                              | 30       |
      | 5927_LANG_CD_eq_en                                                                             | 29       |
      | 5927_LANG_CD_eq_f                                                                              | 30       |
      | 5927_LANG_CD_eq_fr                                                                             | 26       |
      | 5927_LANG_CD_eq_cap_E                                                                          | 74       |
      | 5927_LANG_CD_eq_cap_EN                                                                         | 74       |
      | 5927_LANG_CD_eq_cap_F                                                                          | 74       |
      | 5927_LANG_CD_eq_cap_FR                                                                         | 74       |
      | 5927_DO_NOT_SOLICIT_eq_Null                                                                    | 30       |
      | 5927_NOT_AML_KYC_eq_Null                                                                       | 50       |
      | 5927_MD_FINANCIAL_F_eq_ Null                                                                   | 50       |
      | 5927_ITRADE_MCLEOD_F_eq_Null                                                                   | 30       |
      | 5927_DEDICATED_INVSTMNT_ADVISOR_F_eq_Null                                                      | 30       |
      | 5955_PLN_ACCT_CD_MASTER_eq_TFSA_ACCT_SUBSYS_ID_eq_UF_SRC_ACCT_STAT_CD_eq_Active_PIC_PAC_F_eq_0 | 40       |
      | 5927_Current date-ACCT_ODT=BusinessDSS1                                                        | 7        |
      | 5927_Current date-ACCT_ODT>BusinessDSS1                                                        | 8        |
      | 5927_Current date-ACCT_ODT<BusinessDSS2                                                        | 78       |
      | 5927-Current date-ACCT_ODT=BusinessDSS2                                                        | 77       |
      | 5927_PRIMARY_ACCT_HOLDER_FLAG_eq_Y                                                             | 25       |
      | 5927_INDV_FRST_NM_ne_NULL                                                                      | 30       |
      | 5927_DO_NOT_EMAIL_F_eq_N                                                                       | 10       |
      | 5927_VLD_EML_F_eq_Y                                                                            | 10       |
      | 5927_PRIM_EMAIL_ADDRESS_ne_NULL                                                                | 10       |
      | 5927_INDV_FRST_NM_ne_NULL                                                                      | 10       |
      | 5927_MK_INVESTING_EMAIL_ne_N                                                                   | 10       |
      | 5927_MK_INVESTING_EMAIL_eq_NULL                                                                | 10       |


  @TFSAFundRemainder_Email_Positive_1221
  Scenario Outline: TFSAFundRemainder_RS21094_5927_EMAIL Create test data for positive scenarios multiple accounts 1221
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And write Different account odt "<Acct_Odt1>""<Acct_Odt2>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                                                                                | Acct_Odt1 | Acct_Odt2 |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 30        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 31        | 92        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 32        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       | 30        | 89        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 31        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 32        | 92        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       | 30        | 89        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 31        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 32        | 92        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 30        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 31        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 32        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       | 30        | 89        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 31        | 92        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 32        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 30        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_Lt_90days       | 31        | 89        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 32        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_12_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       | 33        | 89        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        | 30        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       | 31        | 88        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 32        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_ZZ_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days | 33        | 89        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SS_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 31        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 32        | 92        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days | 32        | 88        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_DM_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 31        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 32        | 92        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 33        | 93        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SV_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days | 32        | 88        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFA_SRC_SUB_PRD_CD_A1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 32        | 93        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_F1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 31        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXG_SRC_SUB_PRD_CD_GC_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days | 30        | 88        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXS_SRC_SUB_PRD_CD_SC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 31        | 92        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXP_SRC_SUB_PRD_CD_PC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 32        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RC_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days | 31        | 88        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_TR_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 33        | 91        |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    | 32        | 91        |
      | 5927_5927012302_5927032303_prioritise_5927012302                                                          | 10        | 76        |

  @TFSAFundRemainder_Email_Negative_1111
  Scenario Outline: TFSAFundRemainder_RS21094_5927_EMAIL Create test data for negative scenarios 1111
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write "ACCT_ODT" for "<Acct_Odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                                   | Acct_Odt |
      | N-5927_CUST_TP_CD_ne_PSNL                    | 10       |
      | N-5927_Primary Country Cd_ne_ CA             | 10       |
      | N-5927_Primary Country Cd_eq_NULL            | 10       |
      | N-5927_DECEASED_F_ne_N                       | 10       |
      | N-5927_DECEASED_F_eq_NULL                    | 10       |
      | N-5927_CUST_AGE_lt_ 18                       | 10       |
      | N-5927_CUST_AGE_eq_NULL                      | 10       |
      | N-5927_LANG_CD_ne_en_e_fr_f_E_EN             | 10       |
      | N-5927_LANG_CD_eq_NULL                       | 10       |
      | N-5927_DO_NOT_SOLICIT_F_eq_Y                 | 10       |
      | N-5927_MRKTBLE_F_ne_Y                        | 10       |
      | N-5927_MRKTBLE_F_eq_NULL                     | 10       |
      | N-5927_NOT_AML_KYC_eq_Y                      | 10       |
      | N-5927_MD_FINANCIAL_F_eq_Y                   | 10       |
      | N-5927_ITRADE_MCLEOD_F_eq_Y                  | 10       |
      | N-5927_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y     | 10       |
      | N-5927_PLN_ACCT_CD_MASTER_ne_TFSA            | 10       |
      | N-5927_PLN_ACCT_CD_MASTER_eq_NULL            | 10       |
      | N-5927_ACCT_SUBSYS_ID_ne_UF                  | 10       |
      | N-5927_ACCT_SUBSYS_ID_eq_NULL                | 10       |
      | N_5927_SRC_ACCT_STAT_CD_eq_ NULL             | 10       |
      | N-5927_SRC_ACCT_STAT_CD_ne_Active            | 10       |
      | N-5927_PIC_PAC_F_ne_0                        | 10       |
      | N-5927_PIC_PAC_F_eq_NULL                     | 10       |
      | N-5927_ACCT_ODT_eq_NULL                      | NULL     |
      | N-5927_5927_PRIMARY_ACCT_HOLDER_FLAG_ne_Y    | 10       |
      | N-5927_5927_PRIMARY_ACCT_HOLDER_FLAG_ne_NULL | 10       |
      | N-5927_5927_INDV_FRST_NM_eq_NULL             | 10       |
      | N-5927_5927_INDV_Last_NM_eq_NULL             | 10       |
      | N-5927_Currentdate-ACCT_ODT>BusinessDSS2     | 79       |
      | N-5927_Currentdate-ACCT_ODT<BusinessDSS1     | 6        |
      | N-5927_DO_NOT_EMAIL_F_ne_N                   | 10       |
      | N-5927_DO_NOT_EMAIL_F_eq_NULL                | 10       |
      | N-5927_5927_Valid Email Flag_ne_ Y           | 10       |
      | N-5927_5927_Valid Email Flag_eq_NULL         | 10       |
      | N-5927_5927_PRIM_EMAIL_ADDR_eq_NULL          | 10       |
      | N-5927_MK_INVESTING_EMAIL_eq_N               | 10       |
## Added for 2 march 2023 Rel
      | N_5927_PLN_ACCT_DLR_ne_BNS                   | 10       |
      | N_5927_PLN_ACCT_DLR_ne_SSI                   | 10       |
      | N_5927_PLN_ACCT_DLR_eq_NULL                  | 10       |


  @TFSAFundRemainder_Email_Negative_1221
  Scenario Outline: TFSAFundRemainder_RS21094_5927_EMAIL Create test data for negative scenarios multiple accounts 1221
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And write Different account odt "<Acct_Odt1>""<Acct_Odt2>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                                                                               | Acct_Odt1 | Acct_Odt2 |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_12_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_ZZ_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SS_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_DM_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SV_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFA_SRC_SUB_PRD_CD_A1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_F1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXG_SRC_SUB_PRD_CD_GC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXS_SRC_SUB_PRD_CD_SC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXP_SRC_SUB_PRD_CD_PC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days | 10        | 89        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_TR_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days | 10        | 90        |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days | 10        | 89        |


  @TFSAFundRemainder_Email_Prioritisation_Positive_1221
  Scenario Outline: TFSAFundRemainder_RS21094_5927_EMAIL Create test data for positive scenarios multiple accounts 1221
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And write Different account odt "<Acct_Odt1>""<Acct_Odt2>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    And write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases                                           | Acct_Odt1 | Acct_Odt2 | CUST_OPND_DT |
      | 5501_5927_ifeligibleforbothoffersthen_prioritise5927 | 100       | 10        | 100          |



## June 8th 2023 Release
  @TFSA_Fund_PAC_Reminder_EML @TFSA_Fund_PAC_Reminder_EML_Positive_TestData_5927_June_8_2023 @5927 @EML @RS21092
  Scenario Outline: TFSA Contribution Fund PAC Reminder 5927 RS21092 EML Create test data for Positive test cases for Jun 8th 2023 Release
    Given load data from "TFSAFund" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                               | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 5927_EML_Seg_02_DO_NOT_SOLICIT_F_eq_NULL                 | 1        | 0           | 0             | NULL                 | NULL               |
#     Exclusion Scenarios
      | 5927_EML_Seg_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    | 1        | 0           | 1             | 2                    | -2                 |
      | 5927_EML_Seg_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 1        | 0           | 1             | 2                    | -2                 |
      | 5927_EML_Seg_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       | 1        | 0           | 1             | 2                    | 1                  |
      | 5927_EML_Seg_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     | 1        | 0           | 1             | -1                   | -2                 |


  @TFSA_Fund_PAC_Reminder_EML @TFSA_Fund_PAC_Reminder_EML_Negative_TestData_5501_June_8_2023 @5501 @EML @RS21092
  Scenario Outline: TFSA Contribution Fund PAC Reminder 5927 RS21092 EML Create test data for Negative test cases for Jun 8th 2023 Release
    Given load data from "TFSAFund" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                             | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | N-5927_EML_Seg_02_DO_NOT_SOLICIT_F_eq_Y                | 1        | 0           | 0             | NULL                 | NULL               |
#     Exclusion Scenarios
      | N-5927_EML_Seg_02_ExtTable_VALID_END_DATE_gt_Curr_Dt   | 1        | 0           | 1             | 2                    | -1                 |
      | N-5927_EML_Seg_02_ExtTable_VALID_END_DATE_eq_Curr_Dt   | 1        | 0           | 1             | 2                    | 0                  |
      | N-5927_EML_Seg_02_ExtTable_VALID_START_DATE_lt_Curr_Dt | 1        | 0           | 1             | 1                    | -2                 |
      | N-5927_EML_Seg_02_ExtTable_VALID_START_DATE_eq_Curr_Dt | 1        | 0           | 1             | 0                    | -2                 |


