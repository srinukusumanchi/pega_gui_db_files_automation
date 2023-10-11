Feature: Batch file validation for D2D Engagement Digital Adoption

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


  @D2DEngagementDigitalAdoption @D2DEngagementDigitalAdoption_DatFile_Positive_Validation @Workstream-4 @4235 @EMAIL @RS17104
  Scenario Outline: D2D Engagement Digital Adoption_RS17104_4235_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "DigitalAdoption" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    When read purl cust information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details

#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

    Then validate D2D offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                            |
      | 4235_DO_NOT_SOLICIT_F=NULL                                                                            |
      | 4235_CUST.AGE_Equal to 16                                                                             |
      | 4235_LANG_CD=E                                                                                        |
      | 4235_LANG_CD=EN                                                                                       |
      | 4235_LANG_CD=F                                                                                        |
      | 4235_LANG_CD=FR                                                                                       |
      | 4235_LANG_CD small case =e                                                                            |
      | 4235_LANG_CD small case =en                                                                           |
      | 4235_LANG_CD small case =f                                                                            |
      | 4235_LANG_CD small case =fr                                                                           |
      | 4235_CC_VIP_IND=NULL                                                                                  |
      | 4235_EMPLOYEE_STAFF_F=Null                                                                            |
      | 4235_PRD CD- 01, SUB PRD CD -01                                                                       |
      | 4235_PRD CD- 01, SUB PRD CD -02                                                                       |
      | 4235_PRD CD- 01, SUB PRD CD -03                                                                       |
      | 4235_PRD CD- 01, SUB PRD CD -04                                                                       |
      | 4235_PRD CD- 02, SUB PRD CD -01                                                                       |
      | 4235_PRD CD- 02, SUB PRD CD -02                                                                       |
      | 4235_PRD CD- 02, SUB PRD CD -03                                                                       |
      | 4235_PRD CD- 07, SUB PRD CD -11                                                                       |
      | 4235_PRD CD- 07, SUB PRD CD -12                                                                       |
      | 4235_PRD CD- 13, SUB PRD CD -01                                                                       |
      | 4235_PRD CD- 13, SUB PRD CD -03                                                                       |
      | 4235_PRD CD- 13, SUB PRD CD -07                                                                       |
      | 4235_PRD CD- 13, SUB PRD CD -08                                                                       |
      | 4235_PRD CD- 19, SUB PRD CD -01                                                                       |
      | 4235_PRD CD- 19, SUB PRD CD -02                                                                       |
      | 4235_PRD CD- 19, SUB PRD CD -03                                                                       |
      | 4235_PRD CD- 19, SUB PRD CD -04                                                                       |
      | 4235_PRD CD- 19, SUB PRD CD -07                                                                       |
      | 4235_PRD CD- 19, SUB PRD CD -08                                                                       |
      | 4235_PRD CD- 23, SUB PRD CD -01                                                                       |
      | 4235_PRD CD- 23, SUB PRD CD -03                                                                       |
      | 4235_Account Open Date equal to 12 days                                                               |
      | 4235_Account Open Date equal to 15 days                                                               |
      | 4235_SOL_LAST_LOGIN_DT beyond 90 Days and MOB_LAST_LOGIN_DT beyond 90 Days (Creative Id - 4235121701) |
      | 4235_SOL_LAST_LOGIN_DT as NULL and MOB_LAST_LOGIN_DT as NULL (Creative Id - 4235121701)               |
      | 4235_SOL_LAST_LOGIN_DT beyond 90 daya and MOB_LAST_LOGIN_DT within 90 Days (Creative Id - 4235121702) |
      | 4235_SOL_LAST_LOGIN_DT as Null and MOB_LAST_LOGIN_DT within 90 Days (Creative Id - 4235121702)        |
      | 4235_SOL_LAST_LOGIN_DT within 90 Days and MOB_LAST_LOGIN_DT beyond 90 days (Creative Id - 4235121703) |
      | 4235_SOL_LAST_LOGIN_DT within 90 Days and MOB_LAST_LOGIN_DT as Null (Creative Id - 4235121703)        |
      | 4235_NTP_CUST_OPND_DT >120                                                                            |
      | 4235_NTP_CASL_CONSENT_F = Y                                                                           |
      | 4235_NTP_HARDBOUNCE_EMAIL_F !=Y                                                                       |
      | 4235_NTP_UNSUBSCRIBED_F !=Y                                                                           |
      | 4235_NTB_CUST_OPND_DT < 120                                                                           |
      | 4235_NTB_CUST_OPND_DT = 120                                                                           |
      | 4235_NTB_CASL_CONSENT_F = Y                                                                           |
      | 4235_NTB_CASL_CONSENT_F = N                                                                           |
#      | 4235_NTB_CASL_CONSENT_F = NULL                                                                        |
      | 4235_NTB_UNSUBSCRIBED_F !=Y                                                                           |
      | 4235_NTB_HARDBOUNCE_EMAIL_F !=Y                                                                       |
      | 4235_NTC Creative_NTP_CUST_OPND_DT >120                                                               |
      | 4235_NTC Creative_NTP_CASL_CONSENT_F = Y                                                              |
      | 4235_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                                                          |
      | 4235_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                                              |
      | 4235_NTC Creative_NTB_CUST_OPND_DT < 120                                                              |
      | 4235_NTC Creative_NTB_CUST_OPND_DT = 120                                                              |
      | 4235_NTC Creative_NTB_CASL_CONSENT_F = Y                                                              |
      | 4235_NTC Creative_NTB_CASL_CONSENT_F = N                                                              |
#      | 4235_NTC Creative_NTB_CASL_CONSENT_F = NULL                                                           |
      | 4235_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                                              |
      | 4235_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                                                          |
      # Added for April 27th 2023 Release
      | 4235_Seg_08_SEGMENT_eq_Early_Career                        |
      | 4235_Seg_08_SEGMENT_eq_HENRY                               |
      # Prioritization TCs
      | 4235_Prioritize_Seg_05_SEGMENT_eq_Early_Career_with_NTC    |
      | 4235_Prioritize_Seg_05_SEGMENT_eq_HENRY_with_NTC           |
      | 4235_Prioritize_Seg_08_SEGMENT_eq_Early_Career_without_NTC |
      | 4235_Prioritize_Seg_08_SEGMENT_eq_HENRY_without_NTC        |
      | 4235_Prioritize_Seg_01_SEGMENT_eq_NULL                     |









