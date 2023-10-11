Feature: Batch file validation for D2D Engagement Welcome New to Bank

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
#  Example: “AcctNum:” + .ACCT_NUM + “|LastName:”+”.INDV_LAST_NM+”|AcctBal:”+.ACCT_BAL_AMT


  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_BatchFile_Base_Validation @Workstream-4 @5821 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome_RS17103_5821_EMAIL Validate batch file details against database and pega for Base test cases
    Given load data from "WelcomeNTB" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5821_EML_BASE_01 |


  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_BatchFile_Positive_Validation @Workstream-4 @5821 @EMAIL @RS17103 @D2DEngagementWelcomeNTB_BatchFile_Positive_NTB
  Scenario Outline: D2D Engagement Welcome_RS17103_5821_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "WelcomeNTB" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                     |
#      | 5821_EML_LANG_CD_eq_fr                                                                         |
#      | 5821_EML_CUST_AGE_eq_16                                                                        |
#      | 5821_EML_DO_NOT_SOLICIT_F_eq_NULL                                                              |
#      | 5821_EML_NOT_AML_KYC_eq_NULL                                                                   |
#      | 5821_EML_CUST_OPND_DT_eq_120_days                                                              |
#      | 5821_EML_CC_VIP_IND_eq_NULL                                                                    |
#      | 5821_EML_MK_BK_INFO_ACCTS_EMAIL_eq_NULL                                                        |
#      | 5821_EML_UNSUBSCRIBED_F_eq_NULL                                                                |
#      | 5821_EML_HARDBOUNCE_EMAIL_F_eq_NULL                                                            |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_01                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_02_NTC                |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_03                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_04                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_01                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_02                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_03_NTC                |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_01                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_02                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_03                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_04_NTC                |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_07                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_08                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11                    |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03_NTC                |
#      | 5821_EML_BB_Account_ACCT_ODT_LT_10_days                                                        |
#      | 5821_EML_BB_Account_ACCT_ODT_Eq_10_days                                                        |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_NTC_Prioritization |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12_NTC_Prioritization |

## Removed
#      | 5821_EML_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_NULL_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL     |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_09_ACCT_ODT_lt_180days_AFIL   |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_NULL_ACCT_ODT_lt_180days_AFIL |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_gt_180days_AFIL   |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_NULL_AFIL      |

  |5821_HAS_CLOSED_CHQ_F !=Y                                                                       |
  |5821_HAS_CLOSED_CHQ_F =Y                                                                        |
  |5821_HAS_CLOSED_CHQ_F =NULL                                                                     |



