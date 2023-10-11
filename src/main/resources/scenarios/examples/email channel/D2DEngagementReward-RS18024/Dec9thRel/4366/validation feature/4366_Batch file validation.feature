Feature: Batch file validation for D2D Engagement Reward NoReward

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


  @D2DEngagementReward @D2DEngagementReward_DatFile_Positive_Validation_NoReward_4366 @Workstream-4 @4366 @EMAIL @RS18024
  Scenario Outline: D2D Engagement Reward_RS18024_4366_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Reward" excel sheet
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
    Then validate D2D reward offer details in batch file against database and pega
    Examples:
      | Test cases                                              |
      | 4366_ISSUE = Engagement and Group = D2D                 |
      | 4366_PRIM_CNTRY_CD= CA                                  |
      | 4366_CUST_TP_CD=PSNL                                    |
      | 4366_DO_NOT_SOLICIT_F=N                                 |
      | 4366_DO_NOT_SOLICIT_F= Null                             |
      | 4366_LANG_CD=E                                          |
      | 4366_LANG_CD=EN                                         |
      | 4366_LANG_CD=F                                          |
      | 4366_LANG_CD=FR                                         |
      | 4366_Language Code as small case=e                      |
      | 4366_Language Code as small case=en                     |
      | 4366_Language Code as small case=f                      |
      | 4366_Language Code as small case=fr                     |
      | 4366_CUST_AGE_Greater than 16                           |
      | 4366_CUST_AGE_Equal to 16                               |
      | 4366_Do not Email Flag=N                                |
      | 4366_INDV_FRST_NM!=NULL                                 |
      | 4366_INDV_LAST_NM!=NULL                                 |
      | 4366_VLD_EMAIL_F=Y                                      |
      | 4366_Prv_Bnk_Ind=N                                      |
      | 4366_Deceased_F=N                                       |
      | 4366_EMPLOYEE_STAFF_F=N                                 |
      | 4366_EMPLOYEE_STAFF_F=Null                              |
      | 4366_PRD CD-13, SUB PRD CD -01, REWARD_TP=X             |
      | 4366_PRD CD-13, SUB PRD CD -03, REWARD_TP=X             |
      | 4366_PRD CD-13, SUB PRD CD -07, REWARD_TP=X             |
      | 4366_PRD CD-13, SUB PRD CD -08, REWARD_TP=X             |
      | 4366_PRD CD-07, SUB PRD CD -11, REWARD_TP=X             |
      | 4366_PRD CD-07, SUB PRD CD -12, REWARD_TP=X             |
      | 4366_PRD CD-23, SUB PRD CD -01, REWARD_TP=X             |
      | 4366_PRD CD-23, SUB PRD CD -03, REWARD_TP=X             |
      | 4366_PRD CD-13, SUB PRD CD -01, REWARD_TP=L             |
      | 4366_PRD CD-13, SUB PRD CD -03, REWARD_TP=L             |
      | 4366_PRD CD-13, SUB PRD CD -07, REWARD_TP=L             |
      | 4366_PRD CD-13, SUB PRD CD -08, REWARD_TP=L             |
      | 4366_PRD CD-07, SUB PRD CD -11, REWARD_TP=L             |
      | 4366_PRD CD-07, SUB PRD CD -12, REWARD_TP=L             |
      | 4366_PRD CD-23, SUB PRD CD -01, REWARD_TP=L             |
      | 4366_PRD CD-23, SUB PRD CD -03, REWARD_TP=L             |
      | 4366_PRD CD-13, SUB PRD CD -01, REWARD_TP=O             |
      | 4366_PRD CD-13, SUB PRD CD -03, REWARD_TP=O             |
      | 4366_PRD CD-13, SUB PRD CD -07, REWARD_TP=O             |
      | 4366_PRD CD-13, SUB PRD CD -08, REWARD_TP=O             |
      | 4366_PRD CD-07, SUB PRD CD -11, REWARD_TP=O             |
      | 4366_PRD CD-07, SUB PRD CD -12, REWARD_TP=O             |
      | 4366_PRD CD-23, SUB PRD CD -01, REWARD_TP=O             |
      | 4366_PRD CD-23, SUB PRD CD -03, REWARD_TP=O             |
      | 4366_SRC_ACCT_STAT_CD-A                                 |
      | 4366_ACCT_SUBSYS_ID_BB                                  |
      | 4366_PRIM_EMAIL_ADDR !=NULL                             |
      | 4366_Account Open Date equal to 42 days                 |
      | 4366_Account Open Date equal to 45 days                 |
      | 4366_Account Open Date equal to 43 days(>42 and <45)    |
      | 4366_CC_VIP_IND!=2and9                                  |
      | 4366_CC_VIP_IND = NULL                                  |
      | 4366_Primary_Acct_Holder_Flag=Y                         |
      | 4366_REWARD_TP=X                                        |
      | 4366_REWARD_TP=Null                                     |
      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_13_03 |
      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_13_03 |
      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_07_11 |
      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_07_11 |
      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_23_01 |
      | 4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_23_01 |


# Negative Scenarios are NOT Required for Batch file validation
#  @D2DEngagementReward @D2DEngagementReward_DatFile_Negative_Validation_NoReward_4366 @Workstream-4 @4366 @EMAIL @RS18024
#  Scenario Outline: D2D Engagement Reward_RS18024_4366_EMAIL Validate batch file details against database and pega for Negative test cases
#    Given load data from "Reward" excel sheet
#    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
##    When read purl cust information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
#    And read D2D "BatchD2D" extract file customer offer details
#    Then validate D2D offer details should not display in batch file
#    Examples:
#      | Test cases                                                |
##      | N_4366_PRIM_CNTRY_CD!=CA Eg:- AC                          |
##      | N_4366_PRIM_CNTRY_CD=Null                                 |
##      | N_4366_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                 |
##      | N_4366_CUST_TP_CD =  Null                                 |
##      | N_4366_DO_NOT_SOLICIT_F= Y                                |
##      | N_4366_Indv_Brth_Dt Equal to 15                           |
##      | N_4366_Indv_Brth_Dt Equal to Null                         |
##      | N_4366_Indv_Brth_Dt with in range (1-14)                  |
##      | N_4366_PRD CD- 07, SUB PRD CD -08                         |
##      | N_4366_PRD CD- 13, SUB PRD CD -12                         |
##      | N_4366_PRD CD-18, SUB PRD CD -01                          |
##      | N_4366_PRD CD-18, SUB PRD CD -07                          |
##      | N_4366_PRD CD-18, SUB PRD CD -03                          |
##      | N_4366_PRD CD- 18, SUB PRD CD -02                         |
##      | N_4366_PRD CD-23, SUB PRD CD -02                          |
##      | N_4366_SRC_ACCT_STAT_CD-B                                 |
##      | N_4366_SRC_ACCT_STAT_CD-Null                              |
#      | N_4366_Account Open Date greater than 45 days             |
#      | N_4366_Account Open Date equal to Null                    |
#      | N_4366_Account Open Date less than 42                     |
##      | N_4366_Deceased_F=Y                                       |
##      | N_4366_Deceased_F=Null                                    |
##      | N_4366_LANG_CD=K                                          |
##      | N_4366_LANG_CD=NE                                         |
##      | N_4366_LANG_CD=Null                                       |
##      | N_4366_EMPLOYEE_STAFF_F=Y                                 |
##      | N_4366_ACCT_SUBSYS_ID_KS                                  |
##      | N_4366_Prv_Bnk_Ind=Null                                   |
##      | N_4366_Prv_Bnk_Ind=Y                                      |
##      | N_4366_Do not Email Flag=Y                                |
##      | N_4366_INDV_FRST_NM=NULL                                  |
##      | N_4366_INDV_LAST_NM=NULL                                  |
##      | N_4366_VLD_EMAIL_F=N                                      |
##      | N_4366_PRIM_EMAIL_ADDR =NULL                              |
##      | N_4366_CC_VIP_IND = 2                                     |
##      | N_4366_CC_VIP_IND = 9                                     |
##      | N_4366_Primary_Acct_Holder_Flag=N                         |
##      | N_4366_Primary_Acct_Holder_Flag=NULL                      |
##      | N_4366_REWARD_TP is S                                     |
##      | N_4366_REWARD_TP is T                                     |
##      | N_4366_PRD CD- 01, SUB PRD CD -01, REWARD_TP=X            |
##      | N_4366_PRD CD- 01, SUB PRD CD -02, REWARD_TP=X            |
##      | N_4366_PRD CD- 01, SUB PRD CD -03, REWARD_TP=X            |
##      | N_4366_PRD CD- 01, SUB PRD CD -04, REWARD_TP=X            |
##      | N_4366_PRD CD-02, SUB PRD CD -01, REWARD_TP=X             |
##      | N_4366_PRD CD-02, SUB PRD CD -02, REWARD_TP=X             |
##      | N_4366_PRD CD-02, SUB PRD CD -03, REWARD_TP=X             |
##      | N_4366_PRD CD-19, SUB PRD CD -01, REWARD_TP=X             |
##      | N_4366_PRD CD-19, SUB PRD CD -02, REWARD_TP=X             |
##      | N_4366_PRD CD-19, SUB PRD CD -03, REWARD_TP=X             |
##      | N_4366_PRD CD-19, SUB PRD CD -04, REWARD_TP=X             |
##      | N_4366_PRD CD-19, SUB PRD CD -07, REWARD_TP=X             |
##      | N_4366_PRD CD-19, SUB PRD CD -08, REWARD_TP=X             |
##      | N_4366_PRD CD- 01, SUB PRD CD -01, REWARD_TP=L            |
##      | N_4366_PRD CD- 01, SUB PRD CD -02, REWARD_TP=L            |
##      | N_4366_PRD CD- 01, SUB PRD CD -03, REWARD_TP=L            |
##      | N_4366_PRD CD- 01, SUB PRD CD -04, REWARD_TP=L            |
##      | N_4366_PRD CD-02, SUB PRD CD -01, REWARD_TP=L             |
##      | N_4366_PRD CD-02, SUB PRD CD -02, REWARD_TP=L             |
##      | N_4366_PRD CD-02, SUB PRD CD -03, REWARD_TP=L             |
##      | N_4366_PRD CD-19, SUB PRD CD -01, REWARD_TP=L             |
##      | N_4366_PRD CD-19, SUB PRD CD -02, REWARD_TP=L             |
##      | N_4366_PRD CD-19, SUB PRD CD -03, REWARD_TP=L             |
##      | N_4366_PRD CD-19, SUB PRD CD -04, REWARD_TP=L             |
##      | N_4366_PRD CD-19, SUB PRD CD -07, REWARD_TP=L             |
##      | N_4366_PRD CD-19, SUB PRD CD -08, REWARD_TP=L             |
##      | N_4366_PRD CD- 01, SUB PRD CD -01, REWARD_TP=O            |
##      | N_4366_PRD CD- 01, SUB PRD CD -02, REWARD_TP=O            |
##      | N_4366_PRD CD- 01, SUB PRD CD -03, REWARD_TP=O            |
##      | N_4366_PRD CD- 01, SUB PRD CD -04, REWARD_TP=O            |
##      | N_4366_PRD CD-02, SUB PRD CD -01, REWARD_TP=O             |
##      | N_4366_PRD CD-02, SUB PRD CD -02, REWARD_TP=O             |
##      | N_4366_PRD CD-02, SUB PRD CD -03, REWARD_TP=O             |
##      | N_4366_PRD CD-19, SUB PRD CD -01, REWARD_TP=O             |
##      | N_4366_PRD CD-19, SUB PRD CD -02, REWARD_TP=O             |
##      | N_4366_PRD CD-19, SUB PRD CD -03, REWARD_TP=O             |
##      | N_4366_PRD CD-19, SUB PRD CD -04, REWARD_TP=O             |
##      | N_4366_PRD CD-19, SUB PRD CD -07, REWARD_TP=O             |
##      | N_4366_PRD CD-19, SUB PRD CD -08, REWARD_TP=O             |
##      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=L_01_01 |
##      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_01_01 |
##      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_02_01 |
##      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=L_02_01 |
##      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=O_19_01 |
##      | N_4366_NTC_MCB_IND = Y_ARRV_DT < 3years_REWARD_TP=X_19_01 |
##      | N_4366_NONNTC_ONLYBB_ACC                                  |
##      | N_4366_NTC_ONLYBB_ACC                                     |
