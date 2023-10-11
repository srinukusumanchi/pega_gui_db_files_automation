@SupplementaryCard_Email_AllCombinations
Feature: Test data creation for EMail Supplementary Card Cross Sell


  @SupplementaryCardCrossSell_Email_1111
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Create test data for 1111
    Given load data from "SupplementaryCard" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LAST_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LAST_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                                       | Acct_Odt | SOL_LAST_LOGIN | MOB_LAST_LOGIN |
      | 5468_CUST_TP_CD=PSNL, Primary Country Cd = CA, MRKTBLE_F = Y, Customer Not Decease, CUST_AGE >18 | 95       | 4              | NULL           |
#      | 5468_CUST_AGE=18                                                                                            | 95       | 4              | NULL           |
#      | 5468_LANG_CD in EN                                                                                          | 95       | 4              | NULL           |
#      | 5468_LANG_CD in E                                                                                           | 95       | 4              | NULL           |
#      | 5468_LANG_CD in F                                                                                           | 95       | 4              | NULL           |
#      | 5468_LANG_CD in FR                                                                                          | 95       | 4              | NULL           |
#      | 5468_LANG_CD in small case_e                                                                                | 95       | 4              | NULL           |
#      | 5468_LANG_CD in small case_en                                                                               | 95       | 4              | NULL           |
#      | 5468_LANG_CD in small case_f                                                                                | 95       | 4              | NULL           |
#      | 5468_LANG_CD in small case_fr                                                                               | 95       | 4              | NULL           |
#      | 5468_DO_NOT_SOLICIT_F = NULL                                                                                | 95       | 4              | NULL           |
#      | 5468_DO_NOT_EMAIL_F=N                                                                                       | 95       | 4              | NULL           |
#      | 5468_VLD_EML_F=Y                                                                                            | 95       | 4              | NULL           |
#      | 5468_PRIM_EMAIL_ADDRESS!=NULL                                                                               | 95       | NULL           | 4              |
#      | 5468_INDV_FRST_NM!=NULL/BLANK                                                                               | 95       | 4              | NULL           |
#      | 5468_NOT_AML_KYC = NULL                                                                                     | 95       | 4              | NULL           |
#      | 5468_SOL_LAST_LOGIN < = 6months and MOB_LAST_LOGIN > 6 months                                               | 95       | 4              | 240            |
#      | 5468_SOL_LAST_LOGIN > 6months and MOB_LAST_LOGIN < 6 months                                                 | 95       | 240            | 4              |
#      | 5468_SOL_LAST_LOGIN < = 6months and MOB_LAST_LOGIN <= 6 months                                              | 95       | 4              | 4              |
#      | 5468_SOL_LAST_LOGIN = 6months and MOB_LAST_LOGIN = 6 months                                                 | 95       | 170            | 170            |
#      | 5468_ACCT_SUBSYS_ID=KS                                                                                      | 95       | 4              | NULL           |
#      | 5468_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                           | 95       | 4              | NULL           |
#      | 5468_CHRGF_CD = 0                                                                                           | 95       | 4              | NULL           |
#      | 5468_BLOCK_CD and RECL_CD both blank                                                                        | 95       | 4              | NULL           |
#      | 5468_BLOCK_CD and RECL_CD -  C                                                                              | 95       | 4              | NULL           |
#      | 5468_BLOCK_CD and RECL_CD  - XH                                                                             | 95       | 4              | NULL           |
#      | 5468_BLOCK_CD and RECL_CD  -  NULL                                                                          | 95       | 4              | NULL           |
#      | 5468_CUST_ACCT_RLTNP_DIM.PLASTIC_TP_CD != A                                                                 | 95       | 4              | NULL           |
#      | 5468_IP_AR_RELATN_TYPE_CD!=SUP                                                                              | 95       | 4              | NULL           |
#      | 5468_CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 1           | 95       | 4              | NULL           |
#      | 5468_CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 2           | 95       | 4              | NULL           |
#      | 5468_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL = 1               | 95       | 4              | NULL           |
#      | 5468_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL > 1               | 95       | 4              | NULL           |
#      | N-5468_VGD_NF & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | 5468_VCL_ZZ & ACCT_ODT>90                                                                                   | 95       | 4              | NULL           |
#      | N-5468_VCL_SS & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | 5468_VLR_RG & ACCT_ODT>90                                                                                   | 95       | 4              | NULL           |
#      | N-5468_VLR_NF & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | 5468_VCL_DM & ACCT_ODT>90                                                                                   | 95       | 4              | NULL           |
#      | 5468_VCL_RG & ACCT_ODT>90                                                                                   | 95       | 4              | NULL           |
#      | 5468_VCL_NF & ACCT_ODT>90                                                                                   | 95       | 4              | NULL           |
#      | N-5468_VCL_SV & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | N-5468_VFA_A1 & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | N-5468_VFF_F1 & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | 5468_AXG_GC & ACCT_ODT>90                                                                                   | 95       | 4              | NULL           |
#      | N-5468_AXS_SC & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | N-5468_AXP_PC & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | N-5468_VLR_RC & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | 5468_VFF_TR & ACCT_ODT>90                                                                                   | 95       | 4              | NULL           |
#      | N-5468_VGD_RG & ACCT_ODT>90                                                                                 | 95       | 4              | NULL           |
#      | N-5468_CUST_TP_CD !=PSNL                                                                                    | 95       | 4              | NULL           |
#      | N-5468_DO_NOT_EMAIL_F=Y                                                                                     | 95       | 4              | NULL           |
#      | N-5468_DO_NOT_EMAIL_F=NULL                                                                                  | 95       | 4              | NULL           |
#      | N-5468_VLD_EML_F=N                                                                                          | 95       | 4              | NULL           |
#      | N-5468_VLD_EML_F=NULL                                                                                       | 95       | 4              | NULL           |
#      | N-5468_PRIM_EMAIL_ADDRESS =NULL                                                                             | 95       | 4              | NULL           |
#      | N-5468_INDV_FRST_NM =NULL/BLANK                                                                             | 95       | 4              | NULL           |
#      | N-5468_SOL_LAST_LOGIN_DT and MOB_LAST_LOGIN_DT > 6 months                                                   | 95       | 200            | 200            |
#      | N-5468_Primary Country Cd != CA                                                                             | 95       | 4              | NULL           |
#      | N-5468_Primary Country Cd = NULL                                                                            | 95       | 4              | NULL           |
#      | N-5468_CUST_AGE < 18                                                                                        | 95       | 4              | NULL           |
#      | N-5468_CUST_AGE = NULL                                                                                      | 95       | 4              | NULL           |
#      | N-5468_LANG_CD NOT in (EN, E, FR, F)                                                                        | 95       | 4              | NULL           |
#      | N-5468_LANG_CD = NULL                                                                                       | 95       | 4              | NULL           |
#      | N-5468_DO_NOT_SOLICIT_F = Y                                                                                 | 95       | 4              | NULL           |
#      | N-5468_MRKTBLE_F = N                                                                                        | 95       | 4              | NULL           |
#      | N-5468_MRKTBLE_F = NULL                                                                                     | 95       | 4              | NULL           |
#      | N-5468_NOT_AML_KYC = Y                                                                                      | 95       | 4              | NULL           |
#      | 5468_CUST_OPNT_DT != NULL                                                                                   | 95       | 4              | NULL           |
#      | N-5468_Customer Decease - Y                                                                                 | 95       | 4              | NULL           |
#      | N-5468_Customer Decease - NULL                                                                              | 95       | 4              | NULL           |
#      | N-5468_VGD_NF & ACCT_ODT <90                                                                                | 90       | 4              | NULL           |
#      | N-5468_VCL_ZZ & ACCT_ODT = 90                                                                               | 91       | 4              | NULL           |
#      | N-5468_01_07                                                                                                | 95       | 4              | NULL           |
#      | N-5468_02_05                                                                                                | 95       | 4              | NULL           |
#      | N-5468_19_05                                                                                                | 95       | 4              | NULL           |
#      | N-5468_13_05                                                                                                | 95       | 4              | NULL           |
#      | N-5468_07_01                                                                                                | 95       | 4              | NULL           |
#      | N-5468_23_02                                                                                                | 95       | 4              | NULL           |
#      | N-5468_VGD_AB                                                                                               | 95       | 4              | NULL           |
#      | N-5468_VCL_BC                                                                                               | 95       | 4              | NULL           |
#      | N-5468_VLR_CD                                                                                               | 95       | 4              | NULL           |
#      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL < 1)       | 95       | 4              | NULL           |
#      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL != 1 or 2) | 95       | 4              | NULL           |
#      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL > 2)       | 95       | 4              | NULL           |
#      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1)           | 95       | 4              | NULL           |
#      | 5468_IP_AR_RELATN_TYPE_CD=SUP | 95       | 4              | NULL           |
#      | N-5468_01_07                                                                                                | 95       | 4              | NULL           |
#      | N-5468_02_05                                                                                                | 95       | 4              | NULL           |
#      | N-5468_19_05                                                                                                | 95       | 4              | NULL           |
#      | N-5468_13_05                                                                                                | 95       | 4              | NULL           |
#      | N-5468_07_01                                                                                                | 95       | 4              | NULL           |
#      | N-5468_23_02                                                                                                | 95       | 4              | NULL           |
#      | 5468_VFF_TS & ACCT_ODT>90                                                                                   | 95       | 4              | NULL           |
#      | 5468_AXG_GS & ACCT_ODT>90                                                                                   | 96       | 5              | NULL           |
#      | 5468_VCL_ST & ACCT_ODT>90                                                                                   | 97       | 6              | NULL           |

  @SupplementaryCardCrossSell_Email_1221
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Create test data for 1221
    Given load data from "SupplementaryCard" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LAST_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LAST_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                          | Acct_Odt | SOL_LAST_LOGIN | MOB_LAST_LOGIN |
#      | 5468_CUST_ACCT_RLTNP_DIM.PLASTIC_TP_CD != A_multiple accounts                                       | 95       | 4              | NULL           |
#      | 5468_IP_AR_RELATN_TYPE_CD!=SUP_multiple accounts                                                    | 95       | 4              | NULL           |
#      | N-5468_VGD_NF & ACCT_ODT>90 and 01_01 & ACCT_ODT>90                                                 | 95       | 4              | NULL           |
#      | 5468_VCL_ZZ & ACCT_ODT>90 and 01_02 & ACCT_ODT>90                                                   | 95       | 4              | NULL           |
#      | N-5468_VCL_SS & ACCT_ODT>90 and 01_03 & ACCT_ODT>90                                                 | 95       | 4              | NULL           |
#      | 5468_VLR_RG & ACCT_ODT>90 and 01_04 & ACCT_ODT>90                                                   | 95       | 4              | NULL           |
#      | N-5468_VLR_NF & ACCT_ODT>90 and 02_01 & ACCT_ODT>90                                                 | 95       | 4              | NULL           |
#      | 5468_VCL_DM & ACCT_ODT>90 and 02_02 & ACCT_ODT>90                                                   | 95       | 4              | NULL           |
#      | 5468_VCL_RG & ACCT_ODT>90 and 02_03 & ACCT_ODT>90                                                   | 95       | 4              | NULL           |
#      | 5468_VFF_TR & ACCT_ODT>90 and 23_03 & ACCT_ODT>90                                                   | 95       | 4              | NULL           |
      | N-5468_VGD_RG & ACCT_ODT>90 and 19_01 & ACCT_ODT>90 | 95       | 4              | NULL           |
#      | N-5468_VGD_NF & ACCT_ODT>90 and 19_08 & ACCT_ODT>90                                                 | 95       | 4              | NULL           |
#      | 5468_VFF_TR & ACCT_ODT>90 and VFF_TS & ACCT_ODT>90                                                  | 95       | 4              | NULL           |
#      | 5468_VCL_RG & ACCT_ODT>90 and VLR_RG & ACCT_ODT>90                                                  | 95       | 4              | NULL           |
#      | 5468_AXG_GC & Acct_odt>90 and AXG_GS & Acct_odt>90                                                  | 95       | 4              | NULL           |
#      | N-5468_VGD_NF & ACCT_ODT>90 & ACCT_SUBSYS_ID=KS & SRC_ACCT_STAT_CD = A and 01_01 & ACCT_ODT < 90    | 94       | 4              | NULL           |
#      | N-5468_VCL_ZZ & ACCT_ODT>90 & ACCT_SUBSYS_ID=BB & SRC_ACCT_STAT_CD = Open and 01_02 & ACCT_ODT = 90 | 95       | 4              | NULL           |
#      | N-5468_VGD_NF & ACCT_ODT>90, and 01_01 & ACCT_ODT>90 and  ACCT_SUBSYS_ID=BB & SRC_ACCT_STAT_CD = B  | 95       | 4              | NULL           |
#      | N-5468_VGD_NF & ACCT_ODT>90, and 01_01 & ACCT_ODT>90 and  ACCT_SUBSYS_ID=KS & SRC_ACCT_STAT_CD = A  | 95       | 4              | NULL           |

  @SupplementaryCardCrossSell_Email_1112
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Create test data for 1112
    Given load data from "SupplementaryCard" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LAST_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LAST_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts

    Examples:
      | Test cases                                                                                                                                                                                                 | Acct_Odt | SOL_LAST_LOGIN | MOB_LAST_LOGIN |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 1) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL = 1)         | 95       | 4              | NULL           |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 1) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL > 1)         | 95       | 4              | NULL           |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL != 1) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL = 1)        | 95       | 4              | NULL           |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 1) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1)         | 95       | 4              | NULL           |
      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL < 1) and (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1)       | 95       | 4              | NULL           |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 2) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL = 1)         | 95       | 4              | NULL           |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 2) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL > 1)         | 95       | 4              | NULL           |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 2) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1)         | 95       | 4              | NULL           |
      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL != 1 or 2) and (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1) | 95       | 4              | NULL           |


# July 20th 2023 Release

# Positive

  @SupplementaryCardCrossSell_Email_July20Release
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Create test data with External input table
    Given load data from "SupplementaryCard" excel sheet

#    CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#   ACCT_DIM
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
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
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
    #Postive Inclusions
      | Test cases                                                       | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | SOL_LAST_LOGIN_Val | MOB_LAST_LOGIN_Val | Acct_Odt_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 5468_Seg_01_Trig_04_ExtTable_VALID_START_DATE_lt_Curr_Dt         | 1        | 0           | 1             | 4                  | NULL               | 95           | 1                    | -2                 |
      | 5468_Seg_01_Trig_04_ExtTable_VALID_START_DATE_eq_Curr_Dt         | 1        | 0           | 1             | 4                  | NULL               | 95           | 0                    | -2                 |
      | 5468_Seg_01_Trig_04_ExtTable_VALID_END_DATE_gt_Curr_Dt           | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -1                 |
      | 5468_Seg_01_Trig_04_ExtTable_VALID_END_DATE_eq_Curr_Dt           | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | 0                  |
      | 5468_Seg_01_Trig_04_ExtTable_2_Records                           | 1        | 0           | 2             | 4                  | NULL               | 95           | 2,3                  | -2,-3              |

    #Negative Inclusions
      | N-5468_Seg_01_Trig_04_ExtTable_VALID_START_DATE_gt_Curr_Dt       | 1        | 0           | 1             | 4                  | NULL               | 95           | -1                   | -2                 |
      | N-5468_Seg_01_Trig_04_ExtTable_VALID_END_DATE_lt_Curr_Dt         | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | 1                  |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CODE_ne_RS21099          | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_ne_CIE5468     | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_eq_NULL        | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_Y      | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL   | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | N-5468_Seg_01_Trig_04_ExtTable_EMAIL_CHANNEL_ne_Y                | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | N-5468_Seg_01_Trig_04_ExtTable_EMAIL_CHANNEL_eq_NULL             | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |

    #Positive Exclusions
      | 5468_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    | 1        | 1           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | 5468_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 1        | 1           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | 5468_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       | 1        | 1           | 1             | 4                  | NULL               | 95           | 2                    | 1                  |
      | 5468_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     | 1        | 1           | 1             | 4                  | NULL               | 95           | -1                   | -2                 |

#    Negative Exclusions
      | N-5468_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_gt_Curr_Dt     | 1        | 1           | 1             | 4                  | NULL               | 95           | 2                    | -1                 |
      | N-5468_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_eq_Curr_Dt     | 1        | 1           | 1             | 4                  | NULL               | 95           | 2                    | 0                  |
      | N-5468_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_lt_Curr_Dt   | 1        | 1           | 1             | 4                  | NULL               | 95           | 1                    | -2                 |
      | N-5468_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_eq_Curr_Dt   | 1        | 1           | 1             | 4                  | NULL               | 95           | 0                    | -2                 |



# Sep 28th 2023 Release

# Base Scenarios
  @SupplementaryCardCrossSell_EML @SupplementaryCardCrossSell_EML_Base_TestData_5468 @5468 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Create test data for Base Line test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet

#    CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#   ACCT_DIM
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
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
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
      | Test cases                    | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | SOL_LAST_LOGIN_Val | MOB_LAST_LOGIN_Val | Acct_Odt_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 5468_BASE_Creative_01_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_02_Trig_02 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_03_Trig_04 | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | 5468_BASE_Creative_04_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_05_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_06_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_07_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_08_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_09_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |


# Positive Scenarios
  @SupplementaryCardCrossSell_EML @SupplementaryCardCrossSell_EML_Positive_TestData_5468 @5468 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Create test data for Positive test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet

#    CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#   ACCT_DIM
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
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
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
      | Test cases                                                                             | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | SOL_LAST_LOGIN_Val | MOB_LAST_LOGIN_Val | Acct_Odt_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 5468_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_lt_0.85                          | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_DO_NOT_SOLICIT_F_eq_NULL                                       | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_gt_1 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_eq_1 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_lt_5 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_eq_5 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_gt_2000                                         | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_02_Trig_02_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_02_Trig_02_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GS                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_03_Trig_04_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR                 | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | 5468_EML_Seg_03_Trig_04_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TS                 | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | 5468_EML_Seg_04_Trig_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_05_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_05_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ST                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_06_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_07_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_08_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_DM                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_09_Trig_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_09_Trig_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SS                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
#      |CC Exclusion - Positive Scenarios|
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_gt_90                                    | 2        | 1           | 0             | 4                  | NULL               | 95,91        | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_ne_KS                              | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_eq_NULL                            | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_ne_Credit Cards                 | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_eq_NULL                         | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_ne_Open                          | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_eq_NULL                          | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
#      |Prioritization Scenarios|
      | 5468_EML_Seg_01_Trig_01_Prioritiz_AXP_PC_AND_AXG_GC                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_02_Trig_01_Prioritiz_AXG_GC_AND_AXG_GS                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_02_Trig_01_Prioritiz_AXG_GS_AND_VFF_TR                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_03_Trig_01_Prioritiz_VFF_TR_AND_VFF_TS                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_03_Trig_01_Prioritiz_VFF_TS_AND_VLR_RG                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_04_Trig_01_Prioritiz_VLR_RG_AND_VCL_RG                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_05_Trig_01_Prioritiz_VCL_RG_AND_VCL_ST                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_05_Trig_01_Prioritiz_VCL_ST_AND_VCL_ZZ                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_06_Trig_01_Prioritiz_VCL_ZZ_AND_VCL_NF                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_07_Trig_01_Prioritiz_VCL_NF_AND_VCL_DM                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_08_Trig_01_Prioritiz_VCL_DM_AND_AXS_SC                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_EML_Seg_09_Trig_01_Prioritiz_AXS_SC_AND_AXS_SS                                    | 2        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |




# Negative Scenarios
  @SupplementaryCardCrossSell_EML @SupplementaryCardCrossSell_EML_Negative_TestData_5468 @5468 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Create test data for Negative test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet

#    CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#   ACCT_DIM
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
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
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
      | Test cases                                                                               | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | SOL_LAST_LOGIN_Val | MOB_LAST_LOGIN_Val | Acct_Odt_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | N-5468_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_eq_0.85                          | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_gt_0.85                          | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_eq_NULL                          | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_01_Trig_01_DO_NOT_SOLICIT_F_eq_Y                                          | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_gt_5 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_SS                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL              | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_01_Trig_01_SUPPL_CREDIT_CARD_FLAG_ne_N                                    | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_01_Trig_01_SUPPL_CREDIT_CARD_FLAG_eq_NULL                                 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_02_Trig_02_CHRGF_CD_ne_0                                                  | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_02_Trig_02_CHRGF_CD_eq_NULL                                               | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_eq_2000                                         | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_lt_2000                                         | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | N-5468_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_eq_NULL                                         | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
#      |CC Exclusion - Negative Scenarios|
      | N-5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_lt_90                                    | 2        | 1           | 0             | 4                  | NULL               | 95,89        | NULL                 | NULL               |
      | N-5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_eq_90                                    | 2        | 1           | 0             | 4                  | NULL               | 95,90        | NULL                 | NULL               |



