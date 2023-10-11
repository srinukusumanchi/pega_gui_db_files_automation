@MPSAWelcomeBonus_5893_BatchValidation
Feature: Batch file validation for MPSA_Welcome Bonus RS22116
#  Properties	            Description	              Mandatory (Y/N)	Pega Source	       Database Table	    Database Field	      Comments
#  CUST_ID	                Customer ID	              Y	                Database	                CUST_DIM	CIS_CUST_ID
#  PRIM_EMAIL_ADDR	        Email Address	          Y	                Database	                CUST_DIM	PRIM_EMAIL_ADDR
#  INDV_TTL_NM	            Individual Title	      N	                Database	                CUST_DIM	INDV_TTL_NM
#  INDV_FRST_NM	            Individual First Name	  Y	                Database	                CUST_DIM	INDV_FRST_NM
#  INDV_LAST_NM	            Individual Last Name	  Y	                Database	                CUST_DIM	INDV_LAST_NM
#  LanguageCode	            Language Code	          Y	                Database	                CUST_DIM	LANG_CD	Format: Uppercase first letter (i.e. 'E')
#  OfferExpiry	            Offer expiry date	      Y             	Database	                CUST_INSIGHTS	"take value from EVENT_DATE (YYYY-MM-DD) where #INSIGHT_CD = 'MPSA_WELCOME_BONUS'"
#  Offer Code	            OfferID (pyName)	      Y	                Action	        pyName	Last 4 digits (remove 'CIE')
#  Campaign Code	        Campaign code	          Y	                Action	        Campaign Code
#  CreativeID	            CreativeID	              Y	                Action or Strategy	Creative ID		Default will be from Action. Strategy can overwrite if there is segmentation logic.
#  pxInteractionID	        Pega's Interaction ID	  Y	                Strategy	Foundation
#  Response tracking code	Pega's Response tracking code	Y	        Strategy	Foundation	InteractionID+'_'pyName
#  Mail ID	                Mail ID	                  N		                                Leave blank
#  Emailspecifictext	    bonus_interest_rate	      Y	                Database	CUST_INSIGHTS	"take value from CURR_VAL (take 2 decimals - e.g. 1.70) where INSIGHT_CD =   'MPSA_WELCOME_BONUS'"
#                           upto_interest_rate	      Y	                DSS		    DSS Name: 'MPSA_Welcome_RS22116_Upto_Rate'	DSS is a decimal (e.g. 1.70)
#                           account_open_date	      Y	                Database	ACCT_DIM	"ACCT_ODT (from target MPSA account after insight join) YYYY-MM-DD"
#  Preference Category		                          Y			        eBK_INF


  @MPSAWelcomeBonusEmail @MPSAWelcomeBonusEmail_DatFile_Positive_Validation_5893 @5893 @EMAIL @RS22116
  Scenario Outline: MPSA Welcome Bonus Email_RS21097_5893_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "MPSAWelcomeBonus" extract file with batch "bonus_interest_rate;upto_interest_rate;account_open_date;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate MPSA Welcome Bonus offer details in batch file against database and pega
    Examples:
      | Test cases                                                                           |
      | 5839_EML_BASE_01                                                                     |
      | 5839_EML_BASE_02                                                                     |
      | 5839_EML_BASE_03                                                                     |
      | 5839_EML_CUST_AGE_eq_18                                                              |
      | 5839_EML_LANG_CD_eq_fr                                                               |
      | 5839_EML_NOT_AML_KYC_eq_NULL                                                         |
      | 5839_EML_MD_FINANCIAL_F_eq_NULL                                                      |
      | 5839_EML_ITRADE_MCLEOD_F_eq_NULL                                                     |
      | 5839_EML_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                        |
      | 5839_EML_UNSUBSCRIBED_F_eq_NULL                                                      |
      | 5839_EML_HARDBOUNCE_EMAIL_F_eq_NULL                                                  |
      | 5839_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                            |
      | 5839_EML_DO_NOT_SOLICIT_F_eq_NULL                                                    |
      | 5839_EML_ACCT_ODT_eq_30                                                              |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_CONTROL_CURR_VAL_ne_1                    |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_CONTROL_CURR_VAL_eq_NULL                 |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_TARGET_CURR_VAL_ne_1                     |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_TARGET_CURR_VAL_eq_NULL                  |
      | 5839_EML_CURR_VAL_ne_1                                                               |
      | 5839_EML_INDV_LAST_NM_eq_NULL                                                        |
      | 5839_EML_MRKTBLE_F_eq_N_AND_DO_NOT_SOLICIT_F_eq_N_AND_CASL_CONSENT_F_eq_Y            |
      | 5839_EML_MRKTBLE_F_eq_Y_AND_DO_NOT_SOLICIT_F_eq_Y_AND_CASL_CONSENT_F_eq_Y            |
      | 5839_EML_MRKTBLE_F_eq_NULL_AND_DO_NOT_SOLICIT_F_eq_NULL_AND_CASL_CONSENT_F_eq_N      |
      | 5839_EML_MRKTBLE_F_eq_N_AND_DO_NOT_SOLICIT_F_eq_Y_AND_CASL_CONSENT_F_eq_N            |
      | 5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_Y_DNE_eq_N |
      | 5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_N_DNE_eq_N |



