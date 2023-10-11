Feature: Batch file validation for D2D Engagement Welcome BBP

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


  @D2DEngagementWelcome @D2DEngagementWelcomeBBP_DatFile_Positive_Validation @Workstream-4 @4331 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome_RS17103_4331_EMAIL Validate batch file details against database and pega for Positive test cases
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
      | Test cases |
##      | 4331_DO_NOT_SOLICIT_F= Null              |
##      | 4331_INDV_BRTH_DT_Equal to 16            |
##      | 4331_LANG_CD=E                           |
##      | 4331_LANG_CD=EN                          |
##      | 4331_LANG_CD=F                           |
##      | 4331_LANG_CD=FR                          |
##      | 4331_LANG_CD small case =e               |
##      | 4331_LANG_CD small case = en             |
##      | 4331_LANG_CD small case  =f              |
##      | 4331_LANG_CD small case =fr              |
##      | 4331_EMPLOYEE_STAFF_F=NULL               |
##      | 4331_PRD CD- 19, SUB PRD CD -01          |
##      | 4331_PRD CD- 19, SUB PRD CD -02          |
##      | 4331_PRD CD- 19, SUB PRD CD -03          |
##      | 4331_PRD CD- 19, SUB PRD CD -04          |
##      | 4331_PRD CD- 19, SUB PRD CD -07          |
##      | 4331_PRD CD- 19, SUB PRD CD -08          |
##      | 4331_Account Open Date equal to 03 days  |
##      | 4331_Account Open Date equal to 10 days  |
#      | 4331_NTP_CUST_OPND_DT >120      |
#      | 4331_NTP_CASL_CONSENT_F = Y     |
#      | 4331_NTP_HARDBOUNCE_EMAIL_F !=Y |
#      | 4331_NTP_UNSUBSCRIBED_F !=Y     |
#      | 4331_NTB_CUST_OPND_DT < 120     |
#      | 4331_NTB_CUST_OPND_DT = 120     |
#      | 4331_NTB_CASL_CONSENT_F = Y     |
#      | 4331_NTB_CASL_CONSENT_F = N     |
##      | 4331_NTB_CASL_CONSENT_F = NULL  |
#      | 4331_NTB_UNSUBSCRIBED_F !=Y     |
#      | 4331_NTB_HARDBOUNCE_EMAIL_F !=Y |


# Sep. 15 2022 Release
      | 4331_EMPLOYEE_STAFF_F=NULL_NTC |
      | 4331_Prv_Bnk_Ind=Null          |
      | 4331_Prv_Bnk_Ind=Y             |
      | 4331_EMPLOYEE_STAFF_F=Y        |
      | 4331_NTP_CUST_OPND_DT >120     |
      | 4331_NTB_CUST_OPND_DT < 120    |
      | 4331_NTB_CUST_OPND_DT = 120    |
      | 4331_NOT_AML_KYC_ne_Y          |
      | 4331_NOT_AML_KYC_eq_Null       |



#
#  @D2DEngagementWelcome @D2DEngagementWelcomeBBP_DatFile_Negative_Validation @Workstream-4 @4331 @EMAIL @RS17103
#  Scenario Outline: D2D Engagement Welcome_RS17103_4331_EMAIL Validate batch file details against database and pega for Negative test cases
#    Given load data from "Welcome" excel sheet
#    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    When read purl cust information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
#    And read D2D "BatchD2D" extract file with Preference customer offer details
#    Then validate D2D offer details should not display in batch file
#    Examples:
#      | Test cases                        |
##      | N-4331_PRIM_CNTRY_CD!=CA                     |
##      | N-4331_PRIM_CNTRY_CD=Null                    |
##      | N-4331_CUST_TP_CD != PSNL                    |
##      | N-4331_CUST_TP_CD =  Null                    |
##      | N-4331_DO_NOT_SOLICIT_F = Y                  |
##      | N-4331_Indv_Brth_Dt Equal to 15              |
##      | N-4331_Indv_Brth_Dt Equal to Null            |
##      | N-4331_Indv_Brth_Dt with in range (1-14)     |
##      | N-4331_Deceased_F = Y                        |
##      | N-4331_Deceased_F=Null                       |
##      | N-4331_Prv_Bnk_Ind=Null                      |
##      | N-4331_Prv_Bnk_Ind=Y                         |
##      | N-4331_CC_VIP_IND should be 2                |
##      | N-4331_CC_VIP_IND should be 9                |
##      | N-4331_PRIM_EMAIL_ADDR = Null                |
##      | N-4331_INDV_INDV_FRST_NM =  Null             |
##      | N-4331_INDV_LAST_NM = Null                   |
##      | N-4331_Do not Email Flag-Y                   |
##      | N-4331_Do not Email Flag-Null                |
##      | N-4331_VLD_EMAIL_F -N                        |
##      | N-4331_VLD_EMAIL_F -Null                     |
##      | N-4331_EMPLOYEE_STAFF_F=Y                    |
##      | N-4331_LANG_CD = K                           |
##      | N-4331_LANG_CD = NE                          |
##      | N-4331_ACCT_SUBSYS_ID = KS                   |
##      | N-4331_PRD CD- 19, SUB PRD CD -05            |
##      | N-4331_PRD CD- 18, SUB PRD CD -01            |
##      | N-4331_SRC_ACCT_STAT_CD = B                  |
##      | N-4331_SRC_ACCT_STAT_CD-Null                 |
##      | N-4331_Account Open Date less than 03 days    |
##      | N-4331_Account Open Date greater than 10 days |
##      | N-4331_Account Open Date equal to Null       |
##      | N-4331_PRIM_ACCT_HOLDER_F = Null             |
##      | N-4331_PRIM_ACCT_HOLDER_F = N                |
#      | N_4331_NTP_CASL_CONSENT_F = N     |
#      | N_4331_NTP_CASL_CONSENT_F = NULL  |
#      | N_4331_NTP_HARDBOUNCE_EMAIL_F = Y |
#      | N_4331_NTP_UNSUBSCRIBED_F =Y      |
#      | N_4331_NTB_UNSUBSCRIBED_F =Y      |
#      | N_4331_NTB_HARDBOUNCE_EMAIL_F = Y |
#      | N_4331_NTB_CUST_OPND_DT > 120     |



    


