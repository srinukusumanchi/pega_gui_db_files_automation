Feature: Batch file validation for BBA_BBP 4893

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

  @CrossSell_Email_4893_4892111901_SingleAcc_PositiveTCs_Validation
  Scenario Outline: CASL Flag Change Cross sell Ultimate 4893_RS19067_EMAIL Validate batch file details against database and pega for Positive test cases
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
      | Test cases                                       |
      | 4893_ISSUE = CrossSell and Group = Investment    |
      | 4893_DO_NOT_SOLICIT_F= Null                      |
      | 4893_INDV_BRTH_DT_Equal to 18                    |
      | 4893_LANG_CD=E                                   |
      | 4893_LANG_CD=EN                                  |
      | 4893_LANG_CD=F                                   |
      | 4893_LANG_CD=FR                                  |
      | 4893_LANG_CD_LowerCase=e                         |
      | 4893_LANG_CD_LowerCase=en                        |
      | 4893_LANG_CD_LowerCase=f                         |
      | 4893_LANG_CD_LowerCase=fr                        |
      | 4893_PRD CD- 01, SUB PRD CD -01                  |
      | 4893_PRD CD- 01, SUB PRD CD -02                  |
      | 4893_PRD CD- 01, SUB PRD CD -03                  |
      | 4893_PRD CD- 01, SUB PRD CD -04                  |
      | 4893_PRD CD- 02, SUB PRD CD -01                  |
      | 4893_PRD CD- 02, SUB PRD CD -02                  |
      | 4893_PRD CD- 02, SUB PRD CD -03                  |
      | 4893_PRD CD- 19, SUB PRD CD -01                  |
      | 4893_PRD CD- 19, SUB PRD CD -02                  |
      | 4893_PRD CD- 19, SUB PRD CD -03                  |
      | 4893_PRD CD- 19, SUB PRD CD -04                  |
      | 4893_PRD CD- 19, SUB PRD CD -07                  |
      | 4893_PRD CD- 19, SUB PRD CD -08                  |
      | 4893_Account Open Date equal to 28 days          |
      | 4893_Account Open Date equal to 33 days          |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0101_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0101_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0101_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0102_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0102_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0102_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0103_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0103_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0103_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0104_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0104_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0104_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0201_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0201_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0201_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0202_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0202_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0202_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0203_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0203_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0203_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1901_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1901_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1901_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1902_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1902_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1902_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1903_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1903_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1903_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1904_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1904_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1904_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1907_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1907_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1907_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1908_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1908_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1908_4893111901 |
      | 4893_NTC_MCB=Y_Arrival Date within 3 years       |
      | 4893_NTC_BBP_MCB=Y_Arrival Date within 3 years   |
      | 4893_NTP_CUST_OPND_DT >120                       |
      | 4893_NTP_CASL_CONSENT_F = Y                      |
      | 4893_NTP_HARDBOUNCE_EMAIL_F !=Y                  |
      | 4893_NTP_UNSUBSCRIBED_F !=Y                      |
      | 4893_NTB_CUST_OPND_DT < 120                      |
      | 4893_NTB_CUST_OPND_DT = 120                      |
      | 4893_NTB_CASL_CONSENT_F = Y                      |
      | 4893_NTB_CASL_CONSENT_F = N                      |
      | 4893_NTB_UNSUBSCRIBED_F !=Y                      |
      | 4893_NTB_HARDBOUNCE_EMAIL_F !=Y                  |


  @CrossSell_Email_4893_4893111901_SingleAcc_MultipleAccounts_NegativeTCs_IH_Validation
  Scenario Outline: CASL Flag Change Cross sell Ultimate 4893_RS19067_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details
    Then validate D2D offer details should not display in batch file
    Examples:
      | Test cases                                    |
      | N-4893_MPSA_Y_BBAAcc_0101_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0102_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0103_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0104_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0201_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0202_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0203_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1901_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1902_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1903_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1904_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1907_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1908_4893111901          |
      | N-4893_PRIM_CNTRY_CD!= CA                     |
      | N-4893_PRIM_CNTRY_CD= Null                    |
      | N-4893_CUST_TP_CD != PSNL                     |
      | N-4893_CUST_TP_CD =  Null                     |
      | N-4893_DO_NOT_SOLICIT_F= Y                    |
      | N-4893_Indv_Brth_Dt Equal to 17               |
      | N-4893_Indv_Brth_Dt Equal to Null             |
      | N-4893_Indv_Brth_Dt with in range (1-16)      |
      | N-4893_PRD CD- 01, SUB PRD CD -08             |
      | N-4893_PRD CD-02, SUB PRD CD -04              |
      | N-4893_PRD CD- 07, SUB PRD CD -08             |
      | N-4893_PRD CD-13, SUB PRD CD -12              |
      | N-4893_PRD CD- 18, SUB PRD CD -02             |
      | N-4893_PRD CD-19, SUB PRD CD -11              |
      | N-4893_PRD CD-23, SUB PRD CD -02              |
      | N-4893_SRC_ACCT_STAT_CD- B                    |
      | N-4893_SRC_ACCT_STAT_CD-Null                  |
      | N-4893_Account Open Date greater than 33 days |
      | N-4893_Account Open Date equal to Null        |
      | N-4893_Account Open Date less than 28         |
      | N-4893_Account Open Date equals to 27         |
      | N-4893_Account Open Date equals to 34         |
      | N-4893_Deceased_F= Y                          |
      | N-4893_Deceased_F= Null                       |
      | N-4893_LANG_CD= K                             |
      | N-4893_LANG_CD= NE                            |
      | N-4893_LANG_CD= Null                          |
      | N-4893_EMPLOYEE_STAFF_F= Y                    |
      | N-4893_ACCT_SUBSYS_ID_KS                      |
      | N-4893_Prv_Bnk_Ind= Null                      |
      | N-4893_Prv_Bnk_Ind= Y                         |
      | N-4893_MRKTBLE_F = N                          |
      | N-4893_MRKTBLE_F = NULL                       |
      | N-4893_Do Not Email Flag=Y                    |
      | N-4893_INDV_FRST_NM = Null                    |
      | N-4893_INDV_LAST_NM = Null                    |
      | N-4893_VLD_EMAIL_F = N                        |
      | N-4893_PRIM_EMAIL_ADDR  = BLANK               |
      | N-4893_PRIM_EMAIL_ADDR  = NULL                |
      | N-4893_Primary_Acct_Holder_Flag = N           |
      | N_4893_NTP_CASL_CONSENT_F = N                 |
      | N_4893_NTP_CASL_CONSENT_F = NULL              |
      | N_4893_NTP_HARDBOUNCE_EMAIL_F = Y             |
      | N_4893_NTP_UNSUBSCRIBED_F =Y                  |
      | N_4893_NTB_UNSUBSCRIBED_F =Y                  |
      | N_4893_NTB_HARDBOUNCE_EMAIL_F = Y             |
      | N_4893_NTB_CUST_OPND_DT > 120                 |
      | N_4893_CUST_OPND_DT = NULL                    |