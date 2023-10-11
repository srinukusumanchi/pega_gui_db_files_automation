Feature: Batch file validation for D2D Acq 5748

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

  @D2DAcq_Email_5748_Batch_PositiveTCs_Validation
  Scenario Outline: D2D Acquisition 5748_RS22054_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "D2DAcqCrossSell" extract file with batch "MCBflag;CustAge;Abandoncount;recentlifeevent;upto_interest_rate;preferred_interest_rate;bonus_interest_rate;offer_duration_months;regular_interest_rate;premium_period_interest_rate;offer_duration_days;mass_offer_start_date;mass_offer_end_date;" Email Specific Text Header
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
#    need to add validation for most recent life event
    Then Validate D2D Acquisition offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                     |
      | 5748_DECEASED_F = N                                                                            |
#      | 5748_CUST_TP_CD = PSNL                                                                         |
      | 5748_PRIM_CNTRY_CD = CA                                                                        |
      | 5748_CUST_AGE = 18                                                                             |
#      | 5748_CUST_AGE = 65                                                                             |
#      | 5748_CUST_AGE>=18 AND <=65                                                                     |
#      | 5748_LANG_CD = en                                                                              |
#      | 5748_LANG_CD = fr                                                                              |
#      | 5748_EMPLOYEE_STAFF_F = N                                                                      |
#      | 5748_EMPLOYEE_STAFF_F = NULL                                                                   |
#      | 5748_MRKTBLE_F = Y                                                                             |
#      | 5748_NOT_AML_KYC !=  Y                                                                         |
#      | 5748_NOT_AML_KYC = NULL                                                                        |
#      | 5748_ITRADE_MCLEOD_F != Y                                                                      |
#      | 5748_ITRADE_MCLEOD_F = NULL                                                                    |
#      | 5748_DO_NOT_SOLICIT_F != Y                                                                     |
#      | 5748_DO_NOT_SOLICIT_F = NULL                                                                   |
#      | 5748_HAS_CLOSED_CHQ_F ! = Y                                                                    |
#      | 5748_HAS_CLOSED_CHQ_F = NULL                                                                   |
#      | 5748_VLD_EMAIL_F = Y                                                                           |
#      | 5748_PRIM_EMAIL_ADDR not null  or blank                                                        |
#      | 5748_INDV_FRST_NM not null or blank                                                            |
#      | 5748_DO_NOT_EMAIL_F  = N                                                                       |
#      | 5748_MK_BK_OFFERS_EMAIL != N                                                                   |
#      | 5748_MK_BK_OFFERS_EMAIL = NULL                                                                 |
#      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 1 and CURRENT DATE - EVENT_DATE < 8 days  |
#      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 2 and CURRENT DATE - EVENT_DATE = 8 days  |
#      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 3 and CURRENT DATE - EVENT_DATE = 8 days  |
#      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 4 and CURRENT DATE - EVENT_DATE < 8 days  |
#      | 5748_ACCT_SUBSYS_ID! = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts   |
#      | 5748_ACCT_SUBSYS_ID = NULL and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts  |
#      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and PROD_HIER_LEVEL_4 = Chequing Accounts   |
#      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = NULL and PROD_HIER_LEVEL_4 = Chequing Accounts |
#      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 != Chequing Accounts   |
#      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = NULL                 |


