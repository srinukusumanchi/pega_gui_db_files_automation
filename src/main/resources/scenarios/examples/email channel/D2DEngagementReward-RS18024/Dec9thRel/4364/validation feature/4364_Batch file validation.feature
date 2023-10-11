Feature: Batch file validation for D2D Engagement Reward SCENE

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


  @D2DEngagementReward @D2DEngagementReward_DatFile_Positive_Validation_Scene_4364 @Workstream-4 @4364 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4364_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Reward" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

#    Then validate D2D offer details without casl update in batch file against database and pega
    Then validate D2D reward offer details in batch file against database and pega

    Examples:
      | Test cases                                                                                                                |
      | 4364_ISSUE = Engagement and Group = D2D                                                                                   |
      | 4364_PRIM_CNTRY_CD= CA                                                                                                    |
      | 4364_CUST_TP_CD=PSNL                                                                                                      |
      | 4364_DO_NOT_SOLICIT_F=N                                                                                                   |
      | 4364_DO_NOT_SOLICIT_F= Null                                                                                               |
      | 4364_LANG_CD=E                                                                                                            |
      | 4364_LANG_CD=EN                                                                                                           |
      | 4364_LANG_CD=F                                                                                                            |
      | 4364_LANG_CD=FR                                                                                                           |
      | 4364_Language Code as small case=e                                                                                        |
      | 4364_Language Code as small case=en                                                                                       |
      | 4364_Language Code as small case=f                                                                                        |
      | 4364_Language Code as small case=fr                                                                                       |
      | 4364_CUST_AGE_Greater than 16                                                                                             |
      | 4364_CUST_AGE_Equal to 16                                                                                                 |
      | 4364_Do not Email Flag=N                                                                                                  |
      | 4364_INDV_FRST_NM!=NULL                                                                                                   |
      | 4364_INDV_LAST_NM!=NULL                                                                                                   |
      | 4364_VLD_EMAIL_F=Y                                                                                                        |
      | 4364_Deceased_F=N                                                                                                         |
      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=S_13_03                                                                   |
      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=T_13_03                                                                   |
      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=S_07_11                                                                   |
      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=T_07_11                                                                   |
      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=S_23_01                                                                   |
      | 4364_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=T_23_01                                                                   |
      | 4364_PRD CD-13, SUB PRD CD -01, REWARD_TP=S                                                                               |
      | 4364_PRD CD-13, SUB PRD CD -01, REWARD_TP=T                                                                               |
      | 4364_PRD CD-13, SUB PRD CD -03, REWARD_TP=S                                                                               |
      | 4364_PRD CD-13, SUB PRD CD -03, REWARD_TP=T                                                                               |
      | 4364_PRD CD-13, SUB PRD CD -07, REWARD_TP=S                                                                               |
      | 4364_PRD CD-13, SUB PRD CD -07, REWARD_TP=T                                                                               |
      | 4364_PRD CD-13, SUB PRD CD -08, REWARD_TP=S                                                                               |
      | 4364_PRD CD-13, SUB PRD CD -08, REWARD_TP=T                                                                               |
      | 4364_PRD CD-07, SUB PRD CD -11, REWARD_TP=S                                                                               |
      | 4364_PRD CD-07, SUB PRD CD -11, REWARD_TP=T                                                                               |
      | 4364_PRD CD-07, SUB PRD CD -12, REWARD_TP=S                                                                               |
      | 4364_PRD CD-07, SUB PRD CD -12, REWARD_TP=T                                                                               |
      | 4364_PRD CD-23, SUB PRD CD -01, REWARD_TP=S                                                                               |
      | 4364_PRD CD-23, SUB PRD CD -01, REWARD_TP=T                                                                               |
      | 4364_PRD CD-23, SUB PRD CD -03, REWARD_TP=S                                                                               |
      | 4364_PRD CD-23, SUB PRD CD -03, REWARD_TP=T                                                                               |
      | 4364_SRC_ACCT_STAT_CD-A                                                                                                   |
      | 4364_ACCT_SUBSYS_ID=BB                                                                                                    |
      | 4364_PRIM_EMAIL_ADDR !=NULL                                                                                               |
      | 4364_Account Open Date equal to 42 days                                                                                   |
      | 4364_Account Open Date equal to 45 days                                                                                   |
      | 4364_Account Open Date equal to 43 days(>42 and <45)                                                                      |
      | 4364_CC_VIP_IND !=2and9                                                                                                   |
      | 4364_CC_VIP_IND = NULL                                                                                                    |
      | 4364_Primary_Acct_Holder_Flag=Y                                                                                           |
      | 4364_REWARD_TP=S                                                                                                          |
      | 4364_PriotiseOver_4366                                                                                                    |
      | 4364_Prv_Bnk_Ind=N                                                                                                        |
      | 4364_EMPLOYEE_STAFF_F=N                                                                                                   |
      | 4364_EMPLOYEE_STAFF_F=Null                                                                                                |
      | 4364_Prv_Bnk_Ind=Null                                                                                                     |
      | 4364_Prv_Bnk_Ind=Y                                                                                                        |
      | 4364_EMPLOYEE_STAFF_F=Y                                                                                                   |
      | 4364_NOT_AML_KYC !=Y                                                                                                      |
      | 4364_NOT_AML_KYC = NULL                                                                                                   |
      | 4364_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     |
      | 4364_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         |