Feature: Batch file validation for D2D Engagement VisaDebit
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


  @D2DEngagementVisaDebit @D2DEngagementVisaDebit_DatFile_Positive_Validation @Workstream-4 @4368 @EMAIL @RS18040
  Scenario Outline: D2D Engagement VisaDebit_RS18040_4368_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "VisaDebit" excel sheet
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
      | 4368_ISSUE=EngagementandGroup=D2D                                                                                         |
      | 4368_CUST_TP_CD=PSNL                                                                                                      |
      | 4368_PRIM_CNTRY_CD=CA                                                                                                     |
      | 4368_DO_NOT_SOLICIT_F=N                                                                                                   |
      | 4368_DO_NOT_SOLICIT_F=NULL                                                                                                |
      | 4368_CUST_AGE_Greater than 16                                                                                             |
      | 4368_CUST_AGE_Equal to 16                                                                                                 |
      | 4368_DO_NOT_EMAIL_F=N                                                                                                     |
      | 4368_INDV_FRST_NM=NOT NULL                                                                                                |
      | 4368_INDV_FRST_NM!=NULL                                                                                                   |
      | 4368_INDV_LST_NM=NOT NULL                                                                                                 |
      | 4368_INDV_LST_NM!=NULL                                                                                                    |
      | 4368_VLD_EMAIL_F =Y                                                                                                       |
      | 4368_Deceased_F=N                                                                                                         |
      | 4368_LANG_CD=E                                                                                                            |
      | 4368_LANG_CD_Small Case=e                                                                                                 |
      | 4368_LANG_CD=EN                                                                                                           |
      | 4368_LANG_CD_Small Case=en                                                                                                |
      | 4368_LANG_CD=F                                                                                                            |
      | 4368_LANG_CD_Small Case=f                                                                                                 |
      | 4368_LANG_CD=FR                                                                                                           |
      | 4368_LANG_CD_Small Case=fr                                                                                                |
      | 4368_CUST_AGE!=NULL                                                                                                       |
      | 4368_SRC_ACCT_STAT_CD=A                                                                                                   |
      | 4368_PRIM_EMAIL_ADDR=NOT NULL                                                                                             |
      | 4368_ACCT_SUBSYS_ID=BB                                                                                                    |
      | 4368_PRD CD- 01, SUB PRD CD -01                                                                                           |
      | 4368_PRD CD- 01, SUB PRD CD -02                                                                                           |
      | 4368_PRD CD- 01, SUB PRD CD -03                                                                                           |
      | 4368_PRD CD- 01, SUB PRD CD -04                                                                                           |
      | 4368_PRD CD-02, SUB PRD CD -01                                                                                            |
      | 4368_PRD CD-02, SUB PRD CD -02                                                                                            |
      | 4368_PRD CD-02, SUB PRD CD -03                                                                                            |
      | 4368_PRD CD-13, SUB PRD CD -01                                                                                            |
      | 4368_PRD CD-13, SUB PRD CD -03                                                                                            |
      | 4368_PRD CD-13, SUB PRD CD -07                                                                                            |
      | 4368_PRD CD-13, SUB PRD CD -08                                                                                            |
      | 4368_PRD CD-07, SUB PRD CD -11                                                                                            |
      | 4368_PRD CD-07, SUB PRD CD -12                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -01                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -02                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -03                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -04                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -07                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -08                                                                                            |
      | 4368_PRD CD-23, SUB PRD CD -01                                                                                            |
      | 4368_PRD CD-23, SUB PRD CD -03                                                                                            |
      | 4368_Account Open Date equal to 56 days                                                                                   |
      | 4368_Account Open Date equal to 60days                                                                                    |
      | 4368_Account Open Date >=56 and <=60 days                                                                                 |
      | 4368_LAST_VD_VPOS_TXN_TMSTMP = Null                                                                                       |
      | 4368_LAST_VD_OPOS_TXN_TMSTMP = Null                                                                                       |
      | 4368_Primary_Acct_Holder_Flag =Y                                                                                          |
      | 4368_CC_VIP_IND!= 2and 9                                                                                                  |
      | 4368_CC_VIP_IND=NULL                                                                                                      |
      | 4368_Prv_Bnk_Ind=N                                                                                                        |
      | 4368_EMPLOYEE_STAFF_F=N                                                                                                   |
      | 4368_EMPLOYEE_STAFF_F=NULL                                                                                                |
      | 4368_EMPLOYEE_STAFF_F=Y                                                                                                   |
      | 4368_Prv_Bnk_Ind=Null                                                                                                     |
      | 4368_Prv_Bnk_Ind=Y                                                                                                        |
      | 4368_NOT_AML_KYC !=Y                                                                                                      |
      | 4368_NOT_AML_KYC = NULL                                                                                                   |
      | 4368_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         |




