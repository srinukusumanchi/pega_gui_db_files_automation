Feature: Batch file validation for D2D Engagement  DigitalPayment

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


  @D2DEngagementDigitalPayment @D2DEngagementDigitalPayment_DatFile_Positive_Validation_Unknown @Workstream-4 @4401 @EMAIL @WD18054
  Scenario Outline: D2D Engagement DigitalPayment_WD18054_4401_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "DigitalPayment" excel sheet
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
      | 4401_PRIM_CNTRY_CD= CA                                    |
      | 4401_CUST_TYP= PSNL                                       |
      | 4401_DO_NOT_SOLICIT_F=N                                   |
      | 4401_DO_NOT_SOLICIT_F=NULL                                |
      | 4401_LANG_CD=E                                            |
      | 4401_LANG_CD=EN                                           |
      | 4401_LANG_CD=F                                            |
      | 4401_LANG_CD=FR                                           |
      | 4401_LANG_CODE_USAGE=e                                    |
      | 4401_LANG_CODE_USAGE=en                                   |
      | 4401_LANG_CODE_USAGE=f                                    |
      | 4401_LANG_CODE_USAGE=fr                                   |
      | 4401_INDV_BRTH_DT_Greater than 16                         |
      | 4401_INDV_BRTH_DT_Equal to 16                             |
      | 4401_DoNotEmailFlag=N                                     |
      | 4401_INDV_FRST_NM !=NULL                                  |
      | 4401_INDV_LAST_NM !=NULL                                  |
      | 4401_VLD_EMAIL_F =Y                                       |
      | 4401_Prv_Bnk_Ind=N                                        |
      | 4401_Deceased_F=N                                         |
      | 4401_EMPLOYEE_STAFF_F=N                                   |
      | 4401_EMPLOYEE_STAFF_F=NULL                                |
      | 4401_CUST_AGE!=NULL                                       |
      | 4401_PRIM_EMAIL_ADDR!=NULL                                |
      | 4401_CC_VIP_IND !=2 and 9                                 |
      | 4401_CC_VIP_IND =NULL                                     |
      | 4401_Device_Tp != IOS                                     |
      | 4401_Device_Tp != Android                                 |
      | 4401_Device_Tp = NULL                                     |
      | 4401_Device_Tp = Blank                                    |
      | 4401_PRD CD- 01, SUB PRD CD -01                           |
      | 4401_PRD CD- 01, SUB PRD CD -02                           |
      | 4401_PRD CD- 01, SUB PRD CD -03                           |
      | 4401_PRD CD- 01, SUB PRD CD -04                           |
      | 4401_PRD CD-02, SUB PRD CD -01                            |
      | 4401_PRD CD-02, SUB PRD CD -02                            |
      | 4401_PRD CD-02, SUB PRD CD -03                            |
      | 4401_PRD CD-07, SUB PRD CD -11                            |
      | 4401_PRD CD-07, SUB PRD CD -12                            |
      | 4401_PRD CD-13, SUB PRD CD -01                            |
      | 4401_PRD CD-13, SUB PRD CD -03                            |
      | 4401_PRD CD-13, SUB PRD CD -07                            |
      | 4401_PRD CD-13, SUB PRD CD -08                            |
      | 4401_PRD CD-19, SUB PRD CD -01                            |
      | 4401_PRD CD-19, SUB PRD CD -02                            |
      | 4401_PRD CD-19, SUB PRD CD -03                            |
      | 4401_PRD CD-19, SUB PRD CD -04                            |
      | 4401_PRD CD-19, SUB PRD CD -07                            |
      | 4401_PRD CD-19, SUB PRD CD -08                            |
      | 4401_PRD CD-23, SUB PRD CD -01                            |
      | 4401_PRD CD-23, SUB PRD CD -03                            |
      | 4401_SRC_ACCT_STAT_CD=A                                   |
      | 4401_Account Open Date equal to 63 days                   |
      | 4401_Account Open Date >=63 and <=68 days                 |
      | 4401_Account Open Date equal to 68 days                   |
      | 4401_ACCT_SUBSYS_ID=BB                                    |
      | 4401_Primary_Acct_Holder_Flag = Y                         |
      | 4401_LAST_APPLE_PAY_TXN_TMSTMP = NULL                     |
      | 4401_LAST_APPLE_PAY_TXN_TMSTMP not within last 3 months   |
      | 4401_LAST_ANDROID_PAY_TXN_TMSTMP = NULL                   |
      | 4401_LAST_ANDROID_PAY_TXN_TMSTMP not within last 3 months |
      | 4401_LAST_SAMSUNG_PAY_TXN_TMSTMP = NULL                   |
      | 4401_LAST_SAMSUNG_PAY_TXN_TMSTMP not within last 3 months |
      | 4401_LAST_SCOTIA_PAY_TXN_TMSTMP = NULL                    |
      | 4401_LAST_SCOTIA_PAY_TXN_TMSTMP not within last 3 months  |


  @D2DEngagementDigitalPayment @D2DEngagementDigitalPayment_DatFile_Negative_Validation_Unknown @Workstream-4 @4401 @EMAIL @WD18054
  Scenario Outline: D2D Engagement DigitalPayment_WD18054_4401_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "DigitalPayment" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read purl cust information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    And read D2D "BatchD2D" extract file customer offer details
    Then validate D2D offer details should not display in batch file
    Examples:
      | Test cases                                              |
      | N_4401_PRIM_CNTRY_CD!= CA                               |
      | N_4401_PRIM_CNTRY_CD=NULL                               |
      | N_4401_CUST_TYP != PSNL                                 |
      | N_4401_CUST_TYP =  Null                                 |
      | N_4401_DO_NOT_SOLICIT_F=Y                               |
      | N_4401_LANG_CD=K                                        |
      | N_4401_LANG_CD=NE                                       |
      | N_4401_LANG_CD=Null                                     |
      | N_4401_Indv_Brth_Dt less than 16                        |
      | N_4401_DoNotEmailFlag=Y                                 |
      | N_4401_DoNotEmailFlag=NULL                              |
      | N_4401_INDV_FRST_NM =NULL                               |
      | N_4401_INDV_LAST_NM =NULL                               |
      | N_4401_VLD_EMAIL_F =N                                   |
      | N_4401_VLD_EMAIL_F =NULL                                |
      | N_4401_Prv_Bnk_Ind=Y                                    |
      | N_4401_Prv_Bnk_Ind=NULL                                 |
      | N_4401_Deceased_F=Y                                     |
      | N_4401_Deceased_F=NULL                                  |
      | N_4401_EMPLOYEE_STAFF_F=Y                               |
      | N_4401_CUST_AGE=NULL                                    |
      | N_4401_PRIM_EMAIL_ADDR = BLANK                          |
      | N_4401_PRIM_EMAIL_ADDR = NULL                           |
      | N_4401_CC_VIP_IND = 2                                   |
      | N_4401_CC_VIP_IND = 9                                   |
      | N_4401_Device_Tp = IOS                                  |
      | N_4401_Device_Tp = Android                              |
      | N_4401_PRD CD- 01, SUB PRD CD -07                       |
      | N_4401_PRD CD- 02, SUB PRD CD -11                       |
      | N_4401_PRD CD- 07, SUB PRD CD -01                       |
      | N_4401_PRD CD- 13, SUB PRD CD -04                       |
      | N_4401_PRD CD-18, SUB PRD CD -01                        |
      | N_4401_PRD CD-18, SUB PRD CD -07                        |
      | N_4401_PRD CD-18, SUB PRD CD -03                        |
      | N_4401_PRD CD-19, SUB PRD CD -11                        |
      | N_4401_PRD CD-23, SUB PRD CD -07                        |
      | N_4401_ACCT_STAT_CD!=A                                  |
      | N_4401_ACCT_STAT_CD=NULL                                |
      | N_4401_ACCT_SUBSYS_ID!=BB                               |
      | N_4401_ACCT_SUBSYS_ID=NULL                              |
      | N_4401_Account Open Date less than 63 days              |
      | N_4401_Account Open Date greater than 68 days           |
      | N_4401_Primary_Acct_Holder_Flag = N                     |
      | N_4401_Primary_Acct_Holder_Flag = NULL                  |
      | N_4401_Account Open Date equal to Null                  |
      | N_4401_LAST_APPLE_PAY_TXN_TMSTMP within last 3 months   |
      | N_4401_LAST_ANDROID_PAY_TXN_TMSTMP within last 3 months |
      | N_4401_LAST_SAMSUNG_PAY_TXN_TMSTMP within last 3 months |
      | N_4401_LAST_SCOTIA_PAY_TXN_TMSTMP within last 3 months  |