Feature: Batch file validation for D2D Engagement PAD Payment

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


  @D2DEngagementEngagementPADPayment @D2DEngagementPADPayment_DatFile_Positive_Validation_Unknown @Workstream-4 @4316 @EMAIL @RS18023
  Scenario Outline: D2D Engagement PADPayment_RS18023_4316_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "BillPayment" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D offer details without casl update in batch file against database and pega
    Examples:
      | Test cases                                                                                                                |
      | 4316_ISSUE = Engagement and Group = D2D                                                                                                 |
      | 4316_PRIM_CNTRY_CD= CA                                                                                                                  |
      | 4316_CUST_TP_CD=PSNL                                                                                                                    |
      | 4316_DO_NOT_SOLICIT_F=N                                                                                                                 |
      | 4316_DO_NOT_SOLICIT_F= Null                                                                                                             |
      | 4316_LANG_CD=E                                                                                                                          |
      | 4316_LANG_CD=EN                                                                                                                         |
      | 4316_LANG_CD=F                                                                                                                          |
      | 4316_LANG_CD=FR                                                                                                                         |
      | 4316_LANG_CD small case =e                                                                                                              |
      | 4316_LANG_CD small case =en                                                                                                             |
      | 4316_LANG_CD small case =f                                                                                                              |
      | 4316_LANG_CD small case =fr                                                                                                             |
      | 4316_CUST_AGE_Greater than 16                                                                                                           |
      | 4316_CUST_AGE_Equal to 16                                                                                                               |
      | 4316_Do not Email Flag=N                                                                                                                |
      | 4316_INDV_FRST_NM Is NOT NULL                                                                                                           |
      | 4316_INDV_FRST_NM!=NULL                                                                                                                 |
      | 4316_INDV_LAST_NM Is NOT NULL                                                                                                           |
      | 4316_INDV_LAST_NM!=NULL                                                                                                                 |
      | 4316_VLD_EMAIL_F=Y                                                                                                                      |
      | 4316_Deceased_F=N                                                                                                                       |
      | 4316_PRD CD- 01, SUB PRD CD -01                                                                                                         |
      | 4316_PRD CD- 01, SUB PRD CD -02                                                                                                         |
      | 4316_PRD CD- 01, SUB PRD CD -03                                                                                                         |
      | 4316_PRD CD- 01, SUB PRD CD -04                                                                                                         |
      | 4316_PRD CD-02, SUB PRD CD -01                                                                                                          |
      | 4316_PRD CD-02, SUB PRD CD -02                                                                                                          |
      | 4316_PRD CD-02, SUB PRD CD -03                                                                                                          |
      | 4316_PRD CD-13, SUB PRD CD -01                                                                                                          |
      | 4316_PRD CD-13, SUB PRD CD -03                                                                                                          |
      | 4316_PRD CD-13, SUB PRD CD -07                                                                                                          |
      | 4316_PRD CD-13, SUB PRD CD -08                                                                                                          |
      | 4316_PRD CD-07, SUB PRD CD -11                                                                                                          |
      | 4316_PRD CD-07, SUB PRD CD -12                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -01                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -02                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -03                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -04                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -07                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -08                                                                                                          |
      | 4316_PRD CD-23, SUB PRD CD -01                                                                                                          |
      | 4316_PRD CD-23, SUB PRD CD -03                                                                                                          |
      | 4316_SRC_ACCT_STAT_CD-A                                                                                                                 |
      | 4316_ACCT_SUBSYS_ID=BB                                                                                                                  |
      | 4316_PRIM_EMAIL_ADDR !=NULL                                                                                                             |
      | 4316_Account Open Date equal to 25 days                                                                                                 |
      | 4316_Account Open Date equal to 23 days                                                                                                 |
      | 4316_Account Open Date equal to 24 days                                                                                                 |
      | 4316_LAST_BILL_PAYMENT =2020-10-10                                                                                                      |
      | 4316_PAC_PAD_F !=1                                                                                                                      |
      | 4316_PAC_PAD_F !=2                                                                                                                      |
      | 4316_CC_VIP_IND !=2,9                                                                                                                   |
      | 4316_CC_VIP_IND =NULL                                                                                                                   |
      | 4316_Primary_Acct_Holder_Flag=Y                                                                                                         |
      | 4316_Customer has a Multiple BB Accounts and can have billpayment date on any of accounts with the PAC_PAD_F other than 1 or 2          |
      | 4316_Customer has a Multiple BB Accounts and can have billpayment date on any of accounts with the PAC_PAD_F other than 1 or 2_Account2 |
      | 4316_Prv_Bnk_Ind=N                                                                                                        |
      | 4316_EMPLOYEE_STAFF_F=N                                                                                                   |
      | 4316_EMPLOYEE_STAFF_F=Null                                                                                                |
      | 4316_EMPLOYEE_STAFF_F=Y                                                                                                   |
      | 4316_Prv_Bnk_Ind=Null                                                                                                     |
      | 4316_Prv_Bnk_Ind=Y                                                                                                        |
      | 4316_NOT_AML_KYC !=Y                                                                                                      |
      | 4316_NOT_AML_KYC = NULL                                                                                                   |
      | 4316_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         |
#Added for Feb 18 Rls 2023
      | 4316_HAS_CLOSED_CHQ_F !=Y      |
      | 4316_HAS_CLOSED_CHQ_F =Y       |
      | 4316_HAS_CLOSED_CHQ_F =NULL    |

