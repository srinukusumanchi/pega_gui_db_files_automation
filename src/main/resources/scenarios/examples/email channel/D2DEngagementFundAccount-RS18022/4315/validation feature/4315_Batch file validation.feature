Feature: Batch file validation for D2D Engagement FundAccount

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


  @D2DEngagementFundAccount @D2DEngagementFundAccount_DatFile_Positive_Validation_4315 @Workstream-4 @4315 @EMAIL @RS18022 @D2DEngagementFundAccount_DatFile_Positive_BatchValidation_exec
  Scenario Outline: D2D Engagement FundAccount_RS18022_4315_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "FundAccount" excel sheet
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
      | Test cases                                                                                                                |
      | 4315_DO_NOT_SOLICIT_F=NULL                                                                                                |
      | 4315_CUST_AGE_Equal to 16                                                                                                 |
      | 4315_LANG_CD=E                                                                                                            |
      | 4315_LANG_CD_Small Case=e                                                                                                 |
      | 4315_LANG_CD=EN                                                                                                           |
      | 4315_LANG_CD_Small Case =en                                                                                               |
      | 4315_LANG_CD=F                                                                                                            |
      | 4315_LANG_CD_Small Case =f                                                                                                |
      | 4315_LANG_CD=FR                                                                                                           |
      | 4315_LANG_CD_Small Case =fr                                                                                               |
      | 4315_PRIM_EMAIL_ADDR=NOT NULL                                                                                             |
      | 4315_PRD CD- 01, SUB PRD CD -01                                                                                           |
      | 4315_PRD CD- 01, SUB PRD CD -02                                                                                           |
      | 4315_PRD CD- 01, SUB PRD CD -03                                                                                           |
      | 4315_PRD CD- 01, SUB PRD CD -04                                                                                           |
      | 4315_PRD CD-02, SUB PRD CD -01                                                                                            |
      | 4315_PRD CD-02, SUB PRD CD -02                                                                                            |
      | 4315_PRD CD-02, SUB PRD CD -03                                                                                            |
      | 4315_PRD CD-13, SUB PRD CD -01                                                                                            |
      | 4315_PRD CD-13, SUB PRD CD -03                                                                                            |
      | 4315_PRD CD-13, SUB PRD CD -07                                                                                            |
      | 4315_PRD CD-13, SUB PRD CD -08                                                                                            |
      | 4315_PRD CD-07, SUB PRD CD -11                                                                                            |
      | 4315_PRD CD-07, SUB PRD CD -12                                                                                            |
      | 4315_PRD CD-19, SUB PRD CD -01                                                                                            |
      | 4315_PRD CD-19, SUB PRD CD -02                                                                                            |
      | 4315_PRD CD-19, SUB PRD CD -03                                                                                            |
      | 4315_PRD CD-19, SUB PRD CD -04                                                                                            |
      | 4315_PRD CD-19, SUB PRD CD -07                                                                                            |
      | 4315_PRD CD-19, SUB PRD CD -08                                                                                            |
      | 4315_PRD CD-23, SUB PRD CD -01                                                                                            |
      | 4315_PRD CD-23, SUB PRD CD -03                                                                                            |
      | 4315_Account Open Date equal to 16 days                                                                                   |
      | 4315_Account Open Date equal to 20days                                                                                    |
      | 4315_CC_VIP_IND=NULL                                                                                                      |
      | 4315_CRNT_BAL_AMT equal to zero                                                                                           |
      | 4315_CRNT_BAL_AMT greater than zero                                                                                       |
      | 4315_CRNT_BAL_AMT less than zero                                                                                          |
      | 4315_NTP_CUST_OPND_DT >120                                                                                                |
      | 4315_NTP_CASL_CONSENT_F = Y                                                                                               |
      | 4315_NTP_HARDBOUNCE_EMAIL_F !=Y                                                                                           |
      | 4315_NTP_UNSUBSCRIBED_F !=Y                                                                                               |
      | 4315_NTB_CUST_OPND_DT < 120                                                                                               |
      | 4315_NTB_CUST_OPND_DT = 120                                                                                               |
      | 4315_NTB_CASL_CONSENT_F = Y                                                                                               |
      | 4315_NTB_CASL_CONSENT_F = N                                                                                               |
      | 4315_NTB_UNSUBSCRIBED_F !=Y                                                                                               |
      | 4315_NTB_HARDBOUNCE_EMAIL_F !=Y                                                                                           |
      | 4315_Prv_Bnk_Ind=N                                                                                                        |
      | 4315_EMPLOYEE_STAFF_F=NULL                                                                                                |
      | 4315_Prv_Bnk_Ind=Null                                                                                                     |
      | 4315_Prv_Bnk_Ind=Y                                                                                                        |
      | 4315_EMPLOYEE_STAFF_F=Y                                                                                                   |
      | 4315_EMPLOYEE_STAFF_F=N                                                                                                   |
      | 4315_NOT_AML_KYC !=Y                                                                                                      |
      | 4315_NOT_AML_KYC = NULL                                                                                                   |
      | 4315_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         |
      | 4315_HAS_CLOSED_CHQ_F !=Y                                                                                                 |
      | 4315_HAS_CLOSED_CHQ_F =Y                                                                                                  |
      | 4315_HAS_CLOSED_CHQ_F =NULL                                                                                               |

