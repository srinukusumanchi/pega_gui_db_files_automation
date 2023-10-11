Feature: Batch file validation for D2D Engagement Welcome Student Banking

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


  @D2DEngagementWelcome @D2DEngagementWelcomeStudentBanking_DatFile_Positive_Validation @Workstream-4 @4334 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome_RS17103_4334_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Welcome" excel sheet
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
      | Test cases                                        |
##      | 4334_EMPLOYEE_STAFF_F=NULL                        |
##      | 4334_INDV_BRTH_DT_Equal to 16                     |
##      | 4334_LANG_CD=E                                    |
##      | 4334_LANG_CD=EN                                   |
##      | 4334_LANG_CD=F                                    |
##      | 4334_LANG_CD=FR                                   |
##      | 4334_LANG_CD small case =e                        |
##      | 4334_LANG_CD small case = en                      |
##      | 4334_LANG_CD small case  =f                       |
##      | 4334_LANG_CD small case =fr                       |
##      | 4334_EMPLOYEE_STAFF_F=NULL                        |
##      | 4334_PRD CD- 07, SUB PRD CD -11                   |
##      | 4334_PRD CD- 07, SUB PRD CD -12                   |
##      | 4334_Account Open Date Less Than Equal to 10 days |
##      | 4334_Account Open Date equal to 10 days           |
##      | 4334_4334092102_MCB_IND = Y                       |
##      | 4334_4334092102_ARRV_DT < 3 years                 |
##      | N-4334_4334092102_ARRV_DT = 3 years               |
##      | N-4334_4334092102_ARRV_DT > 3 years               |
##      | N-4334_4334092102_MCB_IND = N                     |
##      | N-4334_4334092102_MCB_IND = NULL                  |
##      | N-4334_4334092102_Account>1                       |
#      |   4334_NTC Creative_NTP_CUST_OPND_DT >120              |
#      |   4334_NTC Creative_NTP_CASL_CONSENT_F = Y             |
#      |   4334_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y         |
#      |   4334_NTC Creative_NTP_UNSUBSCRIBED_F !=Y             |
#      |   4334_NTC Creative_NTB_CUST_OPND_DT < 120             |
#      |   4334_NTC Creative_NTB_CUST_OPND_DT = 120             |
#      |   4334_NTC Creative_NTB_CASL_CONSENT_F = Y             |
#      |   4334_NTC Creative_NTB_CASL_CONSENT_F = N             |
##      |   4334_NTC Creative_NTB_CASL_CONSENT_F = NULL          |
#      |   4334_NTC Creative_NTB_UNSUBSCRIBED_F !=Y             |
#      |   4334_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y         |
#      |   4334_NTP_CUST_OPND_DT >120                           |
#      |   4334_NTP_CASL_CONSENT_F = Y                          |
#      |   4334_NTP_HARDBOUNCE_EMAIL_F !=Y                      |
#      |   4334_NTP_UNSUBSCRIBED_F !=Y                          |
#      |   4334_NTB_CUST_OPND_DT < 120                          |
#      |   4334_NTB_CUST_OPND_DT = 120                          |
#      |   4334_NTB_CASL_CONSENT_F = Y                          |
#      |   4334_NTB_CASL_CONSENT_F = N                          |
##      |   4334_NTB_CASL_CONSENT_F = NULL                       |
#      |   4334_NTB_UNSUBSCRIBED_F !=Y                          |
#      |   4334_NTB_HARDBOUNCE_EMAIL_F !=Y                      |

# Sep 15 2022 Release
      | 4334_EMPLOYEE_STAFF_F=NULL_NTC              |
      | 4334_Prv_Bnk_Ind=Null                       |
      | 4334_Prv_Bnk_Ind=Y                          |
      | 4334_EMPLOYEE_STAFF_F=Y                     |
      | 4334_NTC Creative_NTP_CUST_OPND_DT >120     |
      | 4334_NTC Creative_NTP_CASL_CONSENT_F = Y    |
      | 4334_NTC Creative_NTB_CUST_OPND_DT < 120    |
      | 4334_NTC Creative_NTB_CUST_OPND_DT = 120    |
      | 4334_NTC Creative_NTB_CASL_CONSENT_F = Y    |
      | 4334_NTC Creative_NTB_CASL_CONSENT_F = N    |
      | 4334_NTP_CUST_OPND_DT >120                  |
      | 4334_NTB_CUST_OPND_DT < 120                 |
      | 4334_NTB_CUST_OPND_DT = 120                 |
      | 4334_NOT_AML_KYC_ne_Y                       |
      | 4334_NOT_AML_KYC_eq_Null                    |

#
#  @D2DEngagementWelcome @D2DEngagementWelcomeStudentBanking_DatFile_Negative_Validation @Workstream-4 @4334 @EMAIL @RS17103
#  Scenario Outline: D2D Engagement Welcome_RS17103_4334_EMAIL Validate batch file details against database and pega for Negative test cases
#    Given load data from "Welcome" excel sheet
#    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    When read purl cust information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
#    And read D2D "BatchD2D" extract file with Preference customer offer details
#    Then validate D2D offer details should not display in batch file
#    Examples:
#      | Test cases                                    |
##      | N-4334_PRIM_CNTRY_CD!=CA                      |
##      | N-4334_PRIM_CNTRY_CD=Null                     |
##      | N-4334_CUST_TP_CD != PSNL                     |
##      | N-4334_CUST_TP_CD =  Null                     |
##      | N-4334_DO_NOT_SOLICIT_F = Y                   |
##      | N-4334_Indv_Brth_Dt Equal to 15               |
##      | N-4334_Indv_Brth_Dt Equal to Null             |
##      | N-4334_Indv_Brth_Dt with in range (1-14)      |
##      | N-4334_Deceased_F = Y                         |
##      | N-4334_Deceased_F=Null                        |
##      | N-4334_Prv_Bnk_Ind=Null                       |
##      | N-4334_Prv_Bnk_Ind=Y                          |
##      | N-4334_CC_VIP_IND should be 2                 |
##      | N-4334_CC_VIP_IND should be 9                 |
##      | N-4334_PRIM_EMAIL_ADDR = Null                 |
##      | N-4334_INDV_INDV_FRST_NM =  Null              |
##      | N-4334_INDV_LAST_NM = Null                    |
##      | N-4334_Do not Email Flag-Y                    |
##      | N-4334_Do not Email Flag-Null                 |
##      | N-4334_VLD_EMAIL_F -N                         |
##      | N-4334_VLD_EMAIL_F -Null                      |
##      | N-4334_EMPLOYEE_STAFF_F=Y                     |
##      | N-4334_LANG_CD = K                            |
##      | N-4334_LANG_CD = NE                           |
##      | N-4334_ACCT_SUBSYS_ID = KS                    |
##      | N-4334_PRD CD- 07, SUB PRD CD -10             |
##      | N-4334_PRD CD-07, SUB PRD CD -13              |
##      | N-4334_SRC_ACCT_STAT_CD = B                   |
##      | N-4334_SRC_ACCT_STAT_CD-Null                  |
##      | N-4334_Account Open Date equal to 11 days     |
##      | N-4334_Account Open Date greater than 10 days |
##      | N-4334_Account Open Date equal to Null        |
##      | N-4334_PRIM_ACCT_HOLDER_F = Null              |
##      | N-4334_PRIM_ACCT_HOLDER_F = N                 |
#      |    N_4334_NTC Creative_NTP_CASL_CONSENT_F = N               |
#      |    N_4334_NTC Creative_NTP_CASL_CONSENT_F = NULL            |
#      |    N_4334_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y           |
#      |    N_4334_NTC Creative_NTP_UNSUBSCRIBED_F =Y                |
#      |    N_4334_NTC Creative_NTB_UNSUBSCRIBED_F =Y                |
#      |    N_4334_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y           |
#      |    N_4334_NTC Creative_NTB_CUST_OPND_DT > 120               |
#      |    N_4334_NTP_CASL_CONSENT_F = N                            |
#      |    N_4334_NTP_CASL_CONSENT_F = NULL                         |
#      |    N_4334_NTP_HARDBOUNCE_EMAIL_F = Y                        |
#      |    N_4334_NTP_UNSUBSCRIBED_F =Y                             |
#      |    N_4334_NTB_UNSUBSCRIBED_F =Y                             |
#      |    N_4334_NTB_HARDBOUNCE_EMAIL_F = Y                        |
#      |    N_4334_NTB_CUST_OPND_DT > 120                            |


