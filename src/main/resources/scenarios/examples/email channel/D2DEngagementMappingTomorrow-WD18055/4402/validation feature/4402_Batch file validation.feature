Feature: Batch file validation for D2D Engagement MappingTomorrow

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


  @D2DEngagementMappingTomorrow  @D2DEngagementMappingTomorrow_DatFile_Positive_Validation_4402 @Workstream-4 @4402 @EMAIL @WD18055
  Scenario Outline: D2D Engagement MappingTomorrow_WD18055_4402_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "MappingTomorrow" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read purl cust information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    And read D2D "BatchD2D" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D offer details in batch file against database and pega
    Examples:
      | Test cases                                                |
      |4402_ISSUE = Engagement and Group = D2D                           |
      |4402_CUST_TP_CD=PSNL                                              |
      |4402_PRIM_CNTRY_CD= CA                                            |
      |4402_DO_NOT_SOLICIT_F= N                                          |
      |4402_DO_NOT_SOLICIT_F= NULL                                       |
      |4402_CUST_AGE_Greater than 18                                     |
      |4402_CUST_AGE_Equal to 18                                         |
      |4402_DO_NOT_EMAIL_F= N                                            |
      |4402_INDV_FRST_NM= NOT NULL                                       |
      |4402_INDV_FRST_NM!= NULL                                          |
      |4402_INDV_LST_NM= NOT NULL                                        |
      |4402_INDV_LST_NM!= NULL                                           |
      |4402_VLD_EMAIL_F = Y                                              |
      |4402_Deceased_F= N                                                |
      |4402_LANG_CD= E                                                   |
      |4402_LANG_CODE_USAGE=e                                            |
      |4402_LANG_CD= EN                                                  |
      |4402_LANG_CODE_USAGE=en                                           |
      |4402_LANG_CD= F                                                   |
      |4402_LANG_CODE_USAGE=f                                            |
      |4402_LANG_CD= FR                                                  |
      |4402_LANG_CODE_USAGE=fr                                           |
      |4402_Prv_Bnk_Ind= N                                               |
      |4402_EMPLOYEE_STAFF_F= N                                          |
      |4402_EMPLOYEE_STAFF_F= NULL                                       |
      |4402_CUST_AGE!= NULL                                              |
      |4402_SRC_ACCT_STAT_CD-A                                           |
      |4402_PRIM_EMAIL_ADDR= NOT NULL                                    |
      |4402_ACCT_SUBSYS_ID= BB                                           |
      |4402_PRD CD- 01, SUB PRD CD -01                                   |
      |4402_PRD CD- 01, SUB PRD CD -02                                   |
      |4402_PRD CD- 01, SUB PRD CD -03                                   |
      |4402_PRD CD- 01, SUB PRD CD -04                                   |
      |4402_PRD CD-02, SUB PRD CD -01                                    |
      |4402_PRD CD-02, SUB PRD CD -02                                    |
      |4402_PRD CD-02, SUB PRD CD -03                                    |
      |4402_PRD CD-13, SUB PRD CD -01                                    |
      |4402_PRD CD-13, SUB PRD CD -03                                    |
      |4402_PRD CD-13, SUB PRD CD -07                                    |
      |4402_PRD CD-13, SUB PRD CD -08                                    |
      |4402_PRD CD-07, SUB PRD CD -11                                    |
      |4402_PRD CD-07, SUB PRD CD -12                                    |
      |4402_PRD CD-19, SUB PRD CD -01                                    |
      |4402_PRD CD-19, SUB PRD CD -02                                    |
      |4402_PRD CD-19, SUB PRD CD -03                                    |
      |4402_PRD CD-19, SUB PRD CD -04                                    |
      |4402_PRD CD-19, SUB PRD CD -07                                    |
      |4402_PRD CD-19, SUB PRD CD -08                                    |
      |4402_PRD CD-23, SUB PRD CD -01                                    |
      |4402_PRD CD-23, SUB PRD CD -03                                    |
      |4402_Account Open Date equal to 70 days                           |
      |4402_Account Open Date equal to 75days                            |
      |4402_Account Open Date >=70 and <=75 days                         |
      |4402_mappng_tmrw_excl_f=N                                         |
      |4402_Primary_Acct_Holder_Flag =Y                                  |
      |4402_CC_VIP_IND!= 2and 9                                          |
      |4402_CC_VIP_IND=NULL                                              |


 @D2DEngagementMappingTomorrow  @D2DEngagementMappingTomorrow_DatFile_Negative_Validation_4402 @Workstream-4 @4402 @EMAIL @WD18055
  Scenario Outline: D2D Engagement MappingTomorrow_WD18055_4402_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "MappingTomorrow" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read purl cust information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    And read D2D "BatchD2D" extract file customer offer details
    Then validate D2D offer details should not display in batch file
    Examples:
      | Test cases                                              |
      |N_4402_PRIM_CNTRY_CD!=CA Eg:- AC                                  |
      |N_4402_PRIM_CNTRY_CD=Null                                         |
      |N_4402_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                         |
      |N_4402_CUST_TP_CD = Null                                          |
      |N_4402_DO_NOT_SOLICIT_F= Y                                        |
      |N_4402_CUST_AGE_ Equal to Null                                    |
      |N_4402_CUST_AGE_ with in range (1-18)                             |
      |N_4402_DO_NOT_EMAIL_F= Y                                          |
      |N_4402_INDV_FRST_NM= NULL                                         |
      |N_4402_VLD_EMAIL_F = N                                            |
      |N_4402_INDV_LST_NM= NULL                                          |
      |N_4402_Prv_Bnk_Ind= Null                                          |
      |N_4402_Prv_Bnk_Ind= Y                                             |
      |N_4402_Deceased_F= Y                                              |
      |N_4402_Deceased_F= Null                                           |
      |N_4402_EMPLOYEE_STAFF_F= Y                                        |
      |N-4402_PRD CD- 01, SUB PRD CD -11                                 |
      |N_4402_PRD CD- 02, SUB PRD CD -04                                 |
      |N_4402_PRD CD- 07, SUB PRD CD -08                                 |
      |N_4402_PRD CD- 13, SUB PRD CD -12                                 |
      |N_4402_PRD CD-18, SUB PRD CD -01                                  |
      |N_4402_PRD CD-18, SUB PRD CD -07                                  |
      |N_4402_PRD CD-18, SUB PRD CD -03                                  |
      |N_4402_PRD CD- 19, SUB PRD CD -11                                 |
      |N_4402_PRD CD-23, SUB PRD CD -02                                  |
      |N_4402_SRC_ACCT_STAT_CD-B                                         |
      |N_4402_SRC_ACCT_STAT_CD-Null                                      |
      |N_4402_Account Open Date greater than 75 days                     |
      |N_4402_Account Open Date equal to Null                            |
      |N_4402_Account Open Date less than 70                             |
      |N_4402_Account Open Date equal to 66                              |
      |N_4402_LANG_CD= K                                                 |
      |N_4402_LANG_CD= NE                                                |
      |N_4402_LANG_CD= Null                                              |
      |N_4402_ACCT_SUBSYS_ID_KS                                          |
      |N_4402_PRIM_EMAIL_ADDR= NULL                                      |
      |N_4402_Primary_Acct_Holder_Flag =N                                |
      |N_4402_CC_VIP_IND=2                                               |
      |N_4402_CC_VIP_IND=9                                               |
      |N_4402_PRIM_EMAIL_ADDR= BLANK                                     |
      |N_4402_mappng_tmrw_excl_f=Y                                       |