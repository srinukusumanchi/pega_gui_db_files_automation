Feature: Batch file validation for ScotiaOne 4892

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

  @CrossSell_Email_4892_4892111901_SingleAcc_PositiveTCs_Validation
  Scenario Outline: CASL Flag Change Cross sell Ultimate 4892_RS19067_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "D2DCrossSellLatest" excel sheet
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
      | Test cases                                                                  |
      | 4892_NTP_CUST_OPND_DT >120                                                  |
      | 4892_NTP_CASL_CONSENT_F = Y                                                 |
      | 4892_NTP_HARDBOUNCE_EMAIL_F !=Y                                             |
      | 4892_NTP_UNSUBSCRIBED_F !=Y                                                 |
      | 4892_NTB_CUST_OPND_DT < 120                                                 |
      | 4892_NTB_CUST_OPND_DT = 120                                                 |
      | 4892_NTB_CASL_CONSENT_F = Y                                                 |
      | 4892_NTB_CASL_CONSENT_F = N                                                 |
      | 4892_NTB_UNSUBSCRIBED_F !=Y                                                 |
      | 4892_NTB_HARDBOUNCE_EMAIL_F !=Y                                             |
      | 4892_NTC Creative_NTP_CUST_OPND_DT >120                                     |
      | 4892_NTC Creative_NTP_CASL_CONSENT_F = Y                                    |
      | 4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                                |
      | 4892_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                    |
      | 4892_NTC Creative_NTB_CUST_OPND_DT < 120                                    |
      | 4892_NTC Creative_NTB_CUST_OPND_DT = 120                                    |
      | 4892_NTC Creative_NTB_CASL_CONSENT_F = Y                                    |
      | 4892_NTC Creative_NTB_CASL_CONSENT_F = N                                    |
      | 4892_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                    |
      | 4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                                |
# Added by Sujoy on 2022-03-26
      | 4892_NTP_UNSUBSCRIBED_F =NULL                                               |
      | 4892_NTP_HARDBOUNCE_EMAIL_F =NULL                                           |
      | 4892_NTB_UNSUBSCRIBED_F =NULL                                               |
      | 4892_NTB_HARDBOUNCE_EMAIL_F =NULL                                           |
      | 4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F =NULL                              |
      | 4892_NTC Creative_NTP_UNSUBSCRIBED_F =NULL                                  |
      | 4892_NTC Creative_NTB_UNSUBSCRIBED_F =NULL                                  |
      | 4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F =NULL                              |



      # OLD
#      | 4892_ISSUE = CrossSell and Group = Investment                               |
#      | 4892_DO_NOT_SOLICIT_F= Null                                                 |
#      | 4892_INDV_BRTH_DT_Equal to 18                                               |
#      | 4892_LANG_CD=E                                                              |
#      | 4892_LANG_CD=EN                                                             |
#      | 4892_LANG_CD=F                                                              |
#      | 4892_LANG_CD=FR                                                             |
#      | 4892_LANG_CD_LowerCase=e                                                    |
#      | 4892_LANG_CD_LowerCase=en                                                   |
#      | 4892_LANG_CD_LowerCase=f                                                    |
#      | 4892_LANG_CD_LowerCase=fr                                                   |
#      | 4892_PRD CD- 13, SUB PRD CD -01                                             |
#      | 4892_PRD CD- 13, SUB PRD CD -03                                             |
#      | 4892_PRD CD- 13, SUB PRD CD -07                                             |
#      | 4892_PRD CD- 13, SUB PRD CD -08                                             |
#      | 4892_Account Open Date equal to 28 days                                     |
#      | 4892_Account Open Date equal to 33 days                                     |
#      | 4892_MPSA_Prod_CD_BBB_ScotiaOneAcc_1301_4892111901                          |
#      | 4892_MPSA_SubSysId_AB_ScotiaOneAcc_1301_4892111901                          |
#      | 4892_MPSA_Status_InActive_ScotiaOneAcc_1301_4892111901                      |
#      | 4892_MPSA_Prod_CD_BBB_ScotiaOneAcc_1303_4892111901                          |
#      | 4892_MPSA_SubSysId_AB_ScotiaOneAcc_1303_4892111901                          |
#      | 4892_MPSA_Status_InActive_ScotiaOneAcc_1303_4892111901                      |
#      | 4892_MPSA_Prod_CD_BBB_ScotiaOneAcc_1307_4892111901                          |
#      | 4892_MPSA_SubSysId_AB_ScotiaOneAcc_1307_4892111901                          |
#      | 4892_MPSA_Status_InActive_ScotiaOneAcc_1307_4892111901                      |
#      | 4892_MPSA_Prod_CD_BBB_ScotiaOneAcc_1308_4892111901                          |
#      | 4892_MPSA_SubSysId_AB_ScotiaOneAcc_1308_4892111901                          |
#      | 4892_MPSA_Status_InActive_ScotiaOneAcc_1308_4892111901                      |
#      | 4892_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=01          |
#      | 4892_N-NTC_MCB=N_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=01        |
#      | 4892_N-NTC_MCB=N_Arrival Date greater than 3 years_PRD CD=13_SUB PRD CD=03  |
#      | 4892_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=03          |
#      | 4892_N-NTC_MCB=N_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=07        |
#      | 4892_N-NTC_MCB=Y_Arrival Date  greater than 3 years_PRD CD=13_SUB PRD CD=07 |
#      | 4892_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=08          |
#      | 4892_N-NTC_MCB=N_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=08        |
#      | N-4892_ARRV_DT = 3 years                                                    |
#      | N-4892_MCB_IND = NULL                                                       |
#      | N-4892_Account>1                                                            |
#      | N-4892_MultipleAccounts_Active_Non-Active                                   |
#      | 4892_NTP_CUST_OPND_DT >120                                                  |
#      | 4892_NTP_CASL_CONSENT_F = Y                                                 |
#      | 4892_NTP_HARDBOUNCE_EMAIL_F !=Y                                             |
#      | 4892_NTP_UNSUBSCRIBED_F !=Y                                                 |
#      | 4892_NTB_CUST_OPND_DT < 120                                                 |
#      | 4892_NTB_CUST_OPND_DT = 120                                                 |
#      | 4892_NTB_CASL_CONSENT_F = Y                                                 |
#      | 4892_NTB_CASL_CONSENT_F = N                                                 |
#      | 4892_NTB_UNSUBSCRIBED_F !=Y                                                 |
#      | 4892_NTB_HARDBOUNCE_EMAIL_F !=Y                                             |
#      | 4892_NTC Creative_NTP_CUST_OPND_DT >120                                     |
#      | 4892_NTC Creative_NTP_CASL_CONSENT_F = Y                                    |
#      | 4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                                |
#      | 4892_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                    |
#      | 4892_NTC Creative_NTB_CUST_OPND_DT < 120                                    |
#      | 4892_NTC Creative_NTB_CUST_OPND_DT = 120                                    |
#      | 4892_NTC Creative_NTB_CASL_CONSENT_F = Y                                    |
#      | 4892_NTC Creative_NTB_CASL_CONSENT_F = N                                    |
#      | 4892_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                    |
#      | 4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                                |


  @CrossSell_Email_4892_4892111901_SingleAcc_MultipleAccounts_NegativeTCs_IH_Validation
  Scenario Outline: CASL Flag Change Cross sell Ultimate 4892_RS19067_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details
    Then validate D2D offer details should not display in batch file
    Examples:
      | Test cases                                     |
      | N-4892_Do Not Email Flag=Y                     |
      | N-4892_INDV_FRST_NM = Null                     |
      | N-4892_INDV_LAST_NM = Null                     |
      | N-4892_VLD_EMAIL_F = N                         |
      | N-4892_PRIM_EMAIL_ADDR  = BLANK                |
      | N-4892_PRIM_EMAIL_ADDR  = NULL                 |
      | N_4892_NTP_CASL_CONSENT_F = N                  |
      | N_4892_NTP_HARDBOUNCE_EMAIL_F = Y              |
      | N_4892_NTP_UNSUBSCRIBED_F =Y                   |
      | N_4892_NTB_UNSUBSCRIBED_F =Y                   |
      | N_4892_NTB_HARDBOUNCE_EMAIL_F = Y              |
      | N_4892_NTB_CUST_OPND_DT > 120                  |
      | N_4892_CUST_OPND_DT = NULL                     |
      | N_4892_NTC Creative_NTP_CASL_CONSENT_F = N     |
      | N_4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y |
      | N_4892_NTC Creative_NTP_UNSUBSCRIBED_F =Y      |
      | N_4892_NTC Creative_NTB_UNSUBSCRIBED_F =Y      |
      | N_4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y |
      | N_4892_NTC Creative_NTB_CUST_OPND_DT > 120     |
      | N_4892_NTC Creative_CUST_OPND_DT = NULL        |
# Added by Sujoy on 2022-03-26
      | N-4892_VLD_EMAIL_F = NULL                      |
      | N-4892_Do Not Email Flag=NULL                  |



      # OLD
#      | N-4892_PRIM_CNTRY_CD!= CA                      |
#      | N-4892_PRIM_CNTRY_CD= Null                     |
#      | N-4892_CUST_TP_CD != PSNL                      |
#      | N-4892_CUST_TP_CD =  Null                      |
#      | N-4892_DO_NOT_SOLICIT_F= Y                     |
#      | N-4892_Indv_Brth_Dt Equal to 17                |
#      | N-4892_Indv_Brth_Dt Equal to Null              |
#      | N-4892_Indv_Brth_Dt with in range (1-16)       |
#      | N-4892_PRD CD- 01, SUB PRD CD -08              |
#      | N-4892_PRD CD-02, SUB PRD CD -04               |
#      | N-4892_PRD CD- 07, SUB PRD CD -08              |
#      | N-4892_PRD CD-13, SUB PRD CD -12               |
#      | N-4892_PRD CD- 18, SUB PRD CD -02              |
#      | N-4892_PRD CD-19, SUB PRD CD -11               |
#      | N-4892_PRD CD-23, SUB PRD CD -02               |
#      | N-4892_SRC_ACCT_STAT_CD- B                     |
#      | N-4892_SRC_ACCT_STAT_CD-Null                   |
#      | N-4892_Account Open Date greater than 33 days  |
#      | N-4892_Account Open Date equal to Null         |
#      | N-4892_Account Open Date less than 28          |
#      | N-4892_Account Open Date equals to 27          |
#      | N-4892_Account Open Date equals to 34          |
#      | N-4892_Deceased_F= Y                           |
#      | N-4892_Deceased_F= Null                        |
#      | N-4892_LANG_CD= K                              |
#      | N-4892_LANG_CD= NE                             |
#      | N-4892_LANG_CD= Null                           |
#      | N-4892_EMPLOYEE_STAFF_F= Y                     |
#      | N-4892_ACCT_SUBSYS_ID_KS                       |
#      | N-4892_Prv_Bnk_Ind= Null                       |
#      | N-4892_Prv_Bnk_Ind= Y                          |
#      | N-4892_MRKTBLE_F = N                           |
#      | N-4892_MRKTBLE_F = NULL                        |
#      | N-4892_Do Not Email Flag=Y                     |
#      | N-4892_INDV_FRST_NM = Null                     |
#      | N-4892_INDV_LAST_NM = Null                     |
#      | N-4892_VLD_EMAIL_F = N                         |
#      | N-4892_PRIM_EMAIL_ADDR  = BLANK                |
#      | N-4892_PRIM_EMAIL_ADDR  = NULL                 |
#      | N-4892_Primary_Acct_Holder_Flag = N            |
#      | N-4892_MPSA_Y_ScotiaOneAcc_1301_4892111901     |
#      | N-4892_MPSA_Y_ScotiaOneAcc_1303_4892111901     |
#      | N-4892_MPSA_Y_ScotiaOneAcc_1307_4892111901     |
#      | N-4892_MPSA_Y_ScotiaOneAcc_1308_4892111901     |
#      | N_4892_NTP_CASL_CONSENT_F = N                  |
#      | N_4892_NTP_CASL_CONSENT_F = NULL               |
#      | N_4892_NTP_HARDBOUNCE_EMAIL_F = Y              |
#      | N_4892_NTP_UNSUBSCRIBED_F =Y                   |
#      | N_4892_NTB_UNSUBSCRIBED_F =Y                   |
#      | N_4892_NTB_HARDBOUNCE_EMAIL_F = Y              |
#      | N_4892_NTB_CUST_OPND_DT > 120                  |
#      | N_4892_CUST_OPND_DT = NULL                     |
#      | N_4892_NTC Creative_NTP_CASL_CONSENT_F = N     |
#      | N_4892_NTC Creative_NTP_CASL_CONSENT_F = NULL  |
#      | N_4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y |
#      | N_4892_NTC Creative_NTP_UNSUBSCRIBED_F =Y      |
#      | N_4892_NTC Creative_NTB_UNSUBSCRIBED_F =Y      |
#      | N_4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y |
#      | N_4892_NTC Creative_NTB_CUST_OPND_DT > 120     |
#      | N_4892_NTC Creative_CUST_OPND_DT = NULL        |

