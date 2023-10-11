Feature: Batch file validation for D2D Engagement InteracFlash
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


  @D2DEngagementInteracFlash @D2DEngagementInteracFlash_DatFile_Positive_Validation @Workstream-4 @4367 @EMAIL @RS18039
  Scenario Outline: D2D Engagement InteracFlash_RS18039_4367_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "InteracFlash" excel sheet
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
      | Test cases                                |
      |4367_PRIM_CNTRY_CD= CA                                |
      |4367_CUST_TYP= PSNL                                   |
      |4367_DO_NOT_SOLICIT_F=N                               |
      |4367_DO_NOT_SOLICIT_F=NULL                            |
      |4367_LANG_CD=E                                        |
      |4367_LANG_CD=EN                                       |
      |4367_LANG_CD=F                                        |
      |4367_LANG_CD=FR                                       |
      |4367_LANG_CODE_USAGE=e                                |
      |4367_LANG_CODE_USAGE=en                               |
      |4367_LANG_CODE_USAGE=f                                |
      |4367_LANG_CODE_USAGE=fr                               |
      |4367_CUST_AGE_Greater than 16                         |
      |4367_CUST_AGE_Equal to 16                             |
      |4367_DoNotEmailFlag=N                                 |
      |4367_INDV_FRST_NM !=NULL                              |
      |4367_INDV_LAST_NM !=NULL                              |
      |4367_VLD_EMAIL_F =Y                                   |
      |4367_Prv_Bnk_Ind=N                                    |
      |4367_Deceased_F=N                                     |
      |4367_EMPLOYEE_STAFF_F=N                               |
      |4367_EMPLOYEE_STAFF_F=NULL                            |
      |4367_CUST_AGE!=NULL                                   |
      |4367_PRD CD- 01, SUB PRD CD -01                       |
      |4367_PRD CD- 01, SUB PRD CD -02                       |
      |4367_PRD CD- 01, SUB PRD CD -03                       |
      |4367_PRD CD- 01, SUB PRD CD -04                       |
      |4367_PRD CD-02, SUB PRD CD -01                        |
      |4367_PRD CD-02, SUB PRD CD -02                        |
      |4367_PRD CD-02, SUB PRD CD -03                        |
      |4367_PRD CD-07, SUB PRD CD -11                        |
      |4367_PRD CD-07, SUB PRD CD -12                        |
      |4367_PRD CD-13, SUB PRD CD -01                        |
      |4367_PRD CD-13, SUB PRD CD -03                        |
      |4367_PRD CD-13, SUB PRD CD -07                        |
      |4367_PRD CD-13, SUB PRD CD -08                        |
      |4367_PRD CD-19, SUB PRD CD -01                        |
      |4367_PRD CD-19, SUB PRD CD -02                        |
      |4367_PRD CD-19, SUB PRD CD -03                        |
      |4367_PRD CD-19, SUB PRD CD -04                        |
      |4367_PRD CD-19, SUB PRD CD -07                        |
      |4367_PRD CD-19, SUB PRD CD -08                        |
      |4367_PRD CD-23, SUB PRD CD -01                        |
      |4367_PRD CD-23, SUB PRD CD -03                        |
      |4367_ACCT_STAT_CD=A                                   |
      |4367_PRIM_EMAIL_ADDR!=NULL                            |
      |4367_ACCT_SUBSYS_ID=BB                                |
      |4367_Account Open Date equal to 55 days               |
      |4367_Account Open Date >=49 and <=55 days             |
      |4367_Account Open Date equal to 49 days               |
      |4367_LAST_FLASH_TXN_DT = Null                         |
      |4367_Primary_Acct_Holder_Flag = Y                     |
      |4367_CC_VIP_IND !=2 and 9                             |
      |4367_CC_VIP_IND =NULL                                 |


  @D2DEngagementInteracFlash @D2DEngagementInteracFlash_DatFile_Negative_Validation @Workstream-4 @4367 @EMAIL @RS18039
  Scenario Outline: D2D Engagement InteracFlash_RS18039_4367_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "InteracFlash" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read purl cust information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    And read D2D "BatchD2D" extract file customer offer details
    Then validate D2D offer details should not display in batch file
    Examples:
      | Test cases                                    |
      |N_4367_PRIM_CNTRY_CD!= CA                                      |
      |N_4367_PRIM_CNTRY_CD=NULL                                      |
      |N_4367_CUST_TYP != PSNL                                        |
      |N_4367_CUST_TYP =  Null                                        |
      |N_4367_DO_NOT_SOLICIT_F=Y                                      |
      |N_4367_LANG_CD=K                                               |
      |N_4367_LANG_CD=NE                                              |
      |N_4367_LANG_CD=Null                                            |
      |N_4367_Indv_Brth_Dt less than 16                               |
      |N_4367_DoNotEmailFlag=Y                                        |
      |N_4367_DoNotEmailFlag=NULL                                     |
      |N_4367_INDV_FRST_NM =NULL                                      |
      |N_4367_INDV_LAST_NM =NULL                                      |
      |N_4367_VLD_EMAIL_F =N                                          |
      |N_4367_Prv_Bnk_Ind=Y                                           |
      |N_4367_Prv_Bnk_Ind=NULL                                        |
      |N_4367_Deceased_F=Y                                            |
      |N_4367_Deceased_F=NULL                                         |
      |N_4367_EMPLOYEE_STAFF_F=Y                                      |
      |N_4367_CUST_AGE=NULL                                           |
      |N_4367_PRD CD- 01, SUB PRD CD -07                              |
      |N_4367_PRD CD- 02, SUB PRD CD -11                              |
      |N_4367_PRD CD- 07, SUB PRD CD -01                              |
      |N_4367_PRD CD- 13, SUB PRD CD -04                              |
      |N_4367_PRD CD-18, SUB PRD CD -01                               |
      |N_4367_PRD CD-18, SUB PRD CD -07                               |
      |N_4367_PRD CD-18, SUB PRD CD -03                               |
      |N_4367_PRD CD-19, SUB PRD CD -11                               |
      |N_4367_PRD CD-23, SUB PRD CD -07                               |
      |N_4367_ACCT_STAT_CD!=A                                         |
      |N_4367_ACCT_STAT_CD=NULL                                       |
      |N_4367_PRIM_EMAIL_ADDR = BLANK                                 |
      |N_4367_PRIM_EMAIL_ADDR = NULL                                  |
      |N_4367_ACCT_SUBSYS_ID!=BB                                      |
      |N_4367_ACCT_SUBSYS_ID=NULL                                     |
      |N_4367_Account Open Date less than 49 days                     |
      |N_4367_Account Open Date gretaer than 55 days                  |
      |N_4367_LAST_FLASH_TXN_DT! = Null                               |
      |N_4367_LAST_FLASH_TXN_DT! = Blank                              |
      |N_4367_Primary_Acct_Holder_Flag = N                            |
      |N_4367_Primary_Acct_Holder_Flag = NULL                         |
      |N_4367_CC_VIP_IND = 2                                          |
      |N_4367_CC_VIP_IND = 9                                          |
