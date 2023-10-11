Feature: Batch file validation for Travel Insurance RS22049
#  Properties	          Description	               Mandatory(Y/N)	PegaSource	DatabaseTable	    Database Field	                           Comments
#  .CUST_ID	             Customer ID	                Y	             Database	CUST_DIM	        CIS_CUST_ID
#  .PRIM_EMAIL_ADDR	     Email Address	                Y	             Database	CUST_DIM	        PRIM_EMAIL_ADDR
#  .INDV_TTL_NM	         Individual Title	            N	             Database	CUST_DIM	        INDV_TTL_NM
#  .INDV_FRST_NM	     Individual First Name	        Y	             Database	CUST_DIM	        INDV_FRST_NM
#  .INDV_LAST_NM	     Individual Last Name	        N	             Database	CUST_DIM	        INDV_LAST_NM
#  .LanguageCode	     Language Code	                Y	             Database	CUST_DIM	        LANG_CD	Format:                         Uppercase first letter (i.e. 'E')
#  .OfferExpiry	         Offer expiry date	            N	             Database 	ACCT_DIM	        CLI_OFR_EXP_DT  	                    Earliest expiry from all eligible customer/account. Example: 20200506 (need to remove dashes
#                               +
#                           Strategy
#  Offer Code	         OfferID (pyName)	            Y	             Action	    pyName	            Last 4 digits (remove 'CIE')
#  Campaign Code	     Campaign code	                Y	             Action	    Campaign Code
#  .CreativeID	         CreativeID	                    Y	             Action  	Creative ID		                                            Default will be from Action. Strategy can overwrite if there is segmentation logic.
#                           or
#                         Strategy
#  .pxInteractionID	     Pega's Interaction ID	        Y	             Strategy	Foundation
#  Response tracking code Pega's Response tracking code	Y	             Strategy	Foundation	        InteractionID+'_'pyName
#  Mail ID	             Mail ID	                    N	             Strategy	Unique Number		                                        Need to be the same as DM file
#                                                                                      starting from
#                                                                                      2 Alpha characters
#                                                                                      + 6 Numeric values
#  .EmailSpecificText	    Email Specific Text (Name / Value pair)
#    Credit Card Type	                                N	             Strategy			e.g. AXGGC
#    Chequing Account Flag	                            Y	             Strategy			Y or N
#    Rewards Flag	                                    Y	             Strategy			Y or N
#  Preference Category - CUST_DIM column name MK_INSURANCE_EMAIL_F = ePD_INS


# Base Positive Scenarios that covers both the Creatives for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_Base_Positive_BatchFile_Validation @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Validate Batch File details against Database and Pega for Base Positive Test Cases
    Given load data from "TravelInsurance" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read Travel Insurance "TravelInsurance" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    # Need to Review and Change
    Then validate Travel Insurance offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5715_EML_BASE_01 |
      | 5715_EML_BASE_02 |


# Positive Scenarios with Single Account that covers both the Creatives for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_Positive_SingleAccount_BatchFile_Validation @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Validate Batch File details against Database and Pega for Positive test cases with Single Account
    Given load data from "TravelInsurance" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read Travel Insurance "TravelInsurance" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    # Need to Review and Change
    Then validate Travel Insurance offer details in batch file against database and pega
    Examples:
      | Test cases                                                       |
      | 5715_EML_lang_cd_eq_ fr                                          |
      | 5715_EML_cust_age _eq_18                                         |
      | 5715_EML_DNS_eq_NULL                                             |
      | 5715_EML_PROV_CD_eq_NULL                                         |
      | 5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND                         |
      | 5715_EML_insight_cd_eq_FLG_AIRLINE_SPEND_evnt_dt_eq_12           |
      | 5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND                   |
      | 5715_EML_insight_cd_eq_FLG_TRAVEL_AGENCY_SPEND_evnt_dt_eq_12     |
      | 5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_eq_1        |
      | 5715_EML_insight_cd_eq_CNT_PAGEVISIT_TRAVEL_curr_val_gt_1        |
      | 5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL               |
      | 5715_EML_insight_cd_eq_FLG_FOREIGN_CURR_WITHDRAWAL_evnt_dt_eq_12 |
      | 5715_EML_PROD_CD_eq_AXG_SUB_PROD_eq_GS                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_NF                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_PB                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_RG                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_SP                           |
      | 5715_EML_PROD_CD_eq_VGD_SUB_PROD_eq_ST                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_DM                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_ST                           |
      | 5715_EML_PROD_CD_eq_VFF_SUB_PROD_eq_TR                           |
      | 5715_EML_PROD_CD_eq_VFF_SUB_PROD_eq_TS                           |
      | 5715_EML_PROD_CD_eq_BLV_SUB_PROD_eq_YY                           |
      | 5715_EML_PROD_CD_eq_AXP_SUB_PROD_eq_PC                           |
      | 5715_EML_PROD_CD_eq_AXS_SUB_PROD_eq_SC                           |
      | 5715_EML_PROD_CD_eq_AXS_SUB_PROD_eq_SS                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SV                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_ZZ                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SS                           |
      | 5715_EML_PROD_CD_eq_VFF_SUB_PROD_eq_F1                           |
      | 5715_EML_PROD_CD_eq_VFA_SUB_PROD_eq_A1                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_NF                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_RG                           |
      | 5715_EML_PROD_CD_eq_VFA_SUB_PROD_eq_A3                           |
      | 5715_EML_PROD_CD_eq_VLR_SUB_PROD_eq_NF                           |
      | 5715_EML_PROD_CD_eq_VLR_SUB_PROD_eq_RG                           |
      | 5715_EML_PROD_CD_eq_VLR_SUB_PROD_eq_RC                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SC                           |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_SL                           |
      | 5715_EML_MK_INSURANCE_EMAIL_F_eq_NULL                            |

# Positive Scenarios with Multiple Accounts for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_Positive_MultipleAccount_BatchFile_Validation @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Validate Batch File details against Database and Pega for Positive test cases with Multiple Account
    Given load data from "TravelInsurance" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read Travel Insurance "TravelInsurance" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    # Need to Review and Change
    Then validate Travel Insurance offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                |
      | 5715_EML_multiple_insight_cd_insight1                                                     |
      | 5715_EML_ACTIVE_BB_Active_AC                                                              |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_RG_PROD_CD_eq_VGD_SUB_PROD_eq_SP_Prioritization       |
      | 5715_EML_PROD_CD_eq_VCL_SUB_PROD_eq_ST_BBACCT_ACACCT_Prioritization                       |
      | 5715_EML_PROD_CD_eq_VFA_SUB_PROD_eq_A3_BBACCT_ACACCT_Segment02                            |
      | 5715_EML_Credit_Card_Type_Prioritization_4_Accounts                                       |
      | 5715_EML_Credit_Card_Type_Prioritization_3_Accounts                                       |
      | 5715_EML_Credit_Card_Type_Prioritization_2_Accounts                                       |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_11_Active_AC_REWARD_TP_eq_T  |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_11_Active_AC_REWARD_TP_eq_S  |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_12_Active_AC_REWARD_TP_eq_T  |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_12_Active_AC_REWARD_TP_eq_S  |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_T |
      | 5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03_Active_AC_REWARD_TP_eq_S |



# Partial Negative Scenarios with Multiple Accounts for Travel Insurance Offer
  @TravelInsurance @TravelInsurance_PartialNegative_MultipleAccount_BatchFile_Validation @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Validate Batch File details against Database and Pega for Partial Negative test cases with Multiple Accounts
    Given load data from "TravelInsurance" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
#    And read Travel Insurance "TravelInsurance" extract file customer offer details
    And read "TravelInsurance" extract file
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    # Need to Review and Change
    Then validate Travel Insurance offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                      |
      | PN_5715_EML_Credit_Card_Type_Prioritization_4_Accounts_Prior1_SRC_ACCT_STAT_CD_ne_Open          |
      | PN_5715_EML_Credit_Card_Type_Prioritization_3_Accounts_Prior2_SRC_ACCT_STAT_CD_ne_Open          |
      | PN_5715_EML_Credit_Card_Type_Prioritization_2_Accounts_Prior3_SRC_ACCT_STAT_CD_ne_Open          |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_X    |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_NULL |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_10_Active_AC_REWARD_TP_eq_T     |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_7_SRC_SYS_SUB_PRD_CD_eq_NULL_Active_AC_REWARD_TP_eq_T   |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_5_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S     |
      | PN_5715_EML_ACTIVE_BB_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_01_Active_AC_REWARD_TP_eq_S  |
