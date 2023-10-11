@CLI_IB_Channel_IHValidation
Feature: Validation for 4479 4480 Credit Card Credit Limit Increase in IB Channels before OB Channels

    #Positive IH Validation - CIE4479
  @CC_CLI @CC_CLI_IB_IH_Positive_Validation_4479 @4479 @IB @VS18076 @CC_CLI_Positive_IHValidation
  Scenario Outline: CC_CLI VS18076_4479_IB Validate IH details against database and pega for Positive test cases in IB Channels before OB
    Given load data from "CC_CLI_ALL_Channels" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"

    And Execute REST Call for "CSE" channel
    Then validate Credit Card CLI offer details against IH for "CSE" Channel with "Inbound" Direction having "IPT" Outcome

    And Execute REST Call for "MOB" channel
    Then validate Credit Card CLI offer details against IH for "MOB" Channel with "Inbound" Direction having "PST" Outcome

    And Execute REST Call for "ORN" channel
    Then validate Credit Card CLI offer details against IH for "ORN" Channel with "Inbound" Direction having "PST" Outcome

    Examples:
      | Test cases                                                                                                                             |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VGD_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ST_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_DM_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VGD_SRC_SYS_SUB_PRD_CD_eq_ST_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VGD_SRC_SYS_SUB_PRD_CD_eq_SP_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_eq_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VGD_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_eq_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VUS_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_eq_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RC_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_eq_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFA_SRC_SYS_SUB_PRD_CD_eq_A1_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_eq_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_F1_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TS_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SV_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SS_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFA_SRC_SYS_SUB_PRD_CD_eq_A3_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_eq_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_eq_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_eq_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_eq_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_lt_10000                      |
#     STUDENTS
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VGD_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ST_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_DM_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_eq_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VGD_SRC_SYS_SUB_PRD_CD_eq_ST_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_eq_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VGD_SRC_SYS_SUB_PRD_CD_eq_SP_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_eq_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VGD_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_lt_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VUS_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_lt_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RC_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFA_SRC_SYS_SUB_PRD_CD_eq_A1_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_F1_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_eq_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TS_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_eq_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SV_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_eq_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SS_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_lt_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VFA_SRC_SYS_SUB_PRD_CD_eq_A3_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_lt_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_eq_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_eq_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_eq_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_eq_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_lt_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_lt_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_lt_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_lt_10000    |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_eq_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_eq_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_eq_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_eq_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_lt_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_lt_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_lt_10000 |
      | 4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_lt_10000 |
      | 4479_ALL_Seg_01_Multiple_ACCTs_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000                                    |




    #Negative IH Validation - CIE4479
  @CC_CLI @CC_CLI_IB_IH_Negative_Validation_4479 @4479 @IB @VS18076 @CC_CLI_Negative_IHValidation
  Scenario Outline: CC_CLI VS18076_4479_IB Validate IH details against database and pega for Negative test cases in IB Channels before OB
    Given load data from "CC_CLI_ALL_Channels" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"

    And Execute REST Call for "CSE" channel
    Then verify using IH API that offer is not returned for "CSE" channel

    And Execute REST Call for "MOB" channel
    Then verify using IH API that offer is not returned for "MOB" channel

    And Execute REST Call for "ORN" channel
    Then verify using IH API that offer is not returned for "ORN" channel

    Examples:
      | Test cases                                                                                                                               |
      | N-4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000    |
      | N-4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000    |
      | N-4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000    |
      | N-4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000    |
      | N-4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000 |
      | N-4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000 |
      | N-4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000 |
      | N-4479_ALL_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000 |


    #Positive IH Validation - CIE4480
  @CC_CLI @CC_CLI_IB_IH_Positive_Validation_4480 @4480 @IB @VS18076 @CC_CLI_Positive_IHValidation
  Scenario Outline: CC_CLI VS18076_4480_IB Validate IH details against database and pega for Positive test cases in IB Channels before OB
    Given load data from "CC_CLI_ALL_Channels" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"

    And Execute REST Call for "MOB" channel
    Then validate Credit Card CLI offer details against IH for "MOB" Channel with "Inbound" Direction having "IPT" Outcome

    And Execute REST Call for "CSE" channel
    Then validate Credit Card CLI offer details against IH for "CSE" Channel with "Inbound" Direction having "PST" Outcome

    And Execute REST Call for "ORN" channel
    Then validate Credit Card CLI offer details against IH for "ORN" Channel with "Inbound" Direction having "PST" Outcome

    Examples:
      | Test cases                                                                                                                             |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GS_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SS_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC_OCP_STAT_TP_DESC_eq_NULL_CLI_APRVD_CR_LMT_gt_10000                      |
#     STUDENTS
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000    |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GS_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_eq_10000    |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SS_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000 |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_lt_10000 |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_eq_10000    |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_lt_10000    |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_eq_10000 |
      | 4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_lt_10000 |
      | 4480_ALL_Seg_01_Multiple_ACCTs_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000                                 |


    #Negative IH Validation - CIE44780
  @CC_CLI @CC_CLI_IB_IH_Negative_Validation_4480 @4480 @IB @VS18076 @CC_CLI_Negative_IHValidation
  Scenario Outline: CC_CLI VS18076_4480_IB Validate IH details against database and pega for Negative test cases in IB Channels before OB
    Given load data from "CC_CLI_ALL_Channels" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"

    And Execute REST Call for "CSE" channel
    Then verify using IH API that offer is not returned for "CSE" channel

    And Execute REST Call for "MOB" channel
    Then verify using IH API that offer is not returned for "MOB" channel

    And Execute REST Call for "ORN" channel
    Then verify using IH API that offer is not returned for "ORN" channel

    Examples:
      | Test cases                                                                                                                               |
      | N-4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC_OCP_STAT_TP_DESC_eq_STUDENT_POST_SECONDARY_CLI_APRVD_CR_LMT_gt_10000    |
      | N-4480_ALL_Seg_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC_OCP_STAT_TP_DESC_eq_STUDENT_PRIMARY_SECONDARY_CLI_APRVD_CR_LMT_gt_10000 |

