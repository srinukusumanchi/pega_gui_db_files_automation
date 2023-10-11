@PA_ULOC_TestData_5576_Email_CC_DM
Feature: Test data creation for EMAIL CC And DM PA ULOC

  @ULOC_5576_TestData_AllChannelsWithCustInsights
  Scenario Outline: PA ULOC_OP12020_5576_EMAIL CC and DM Create test data with Cust Insights
    Given load data from "PAULOC" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write Scotia Card number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "PA_CCUL_Customer" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_Customer" for "<Test cases>"
    Then insert customer details in "PA_CCUL_Customer" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                     |
      | 5576_EMAIL_Abandon Offer                       |
      | N-5576_EMAIL_Abandon Offer_Disposition Accept  |
      | N-5576_EMAIL_Abandon Offer_Disposition Decline |

  @ULOC_5576_TestData_AllChannelsWithOutCustInsights
  Scenario Outline: PA ULOC_OP12020_5576_EMAIL CC and DM Create test data With Out Cust Insights
    Given load data from "PAULOC" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write Scotia Card number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "PA_CCUL_Customer" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_Customer" for "<Test cases>"
    Then insert customer details in "PA_CCUL_Customer" table
    Examples:
      | Test cases                                                                                              |
      | 5576_ULOC_ALL_OutBound_Customer Not Deceased                                                            |
      | 5576_ULOC_ALL_OutBound_CUST_TP_CD = PSNL                                                                |
      | 5576_ULOC_ALL_OutBound_LANG_CD = E                                                                      |
      | 5576_ULOC_ALL_OutBound_LANG_CD = EN                                                                     |
      | 5576_ULOC_ALL_OutBound_LANG_CD = F                                                                      |
      | 5576_ULOC_ALL_OutBound_LANG_CD = FR                                                                     |
      | 5576_ULOC_ALL_OutBound_LANG_CD = LowerCase_e                                                            |
      | 5576_ULOC_ALL_OutBound_LANG_CD = LowerCase_en                                                           |
      | 5576_ULOC_ALL_OutBound_LANG_CD = LowerCase_f                                                            |
      | 5576_ULOC_ALL_OutBound_LANG_CD = LowerCase_fr                                                           |
      | 5576_ULOC_ALL_OutBound_CLOSEST_TRANSIT_NUM =NULL or RESP_TRNST_NUM =NULL or ASSIGNED_FA_TRANSIT !=NULL  |
      | 5576_ULOC_ALL_OutBound_CLOSEST_TRANSIT_NUM =NULL or RESP_TRNST_NUM !=NULL or ASSIGNED_FA_TRANSIT =NULL  |
      | 5576_ULOC_ALL_OutBound_CLOSEST_TRANSIT_NUM !=NULL or RESP_TRNST_NUM =NULL or ASSIGNED_FA_TRANSIT =NULL  |
      | 5576_ULOC_ALL_OutBound_PRIM_ADDR_LINE_1 !=NULL && PRIM_PROV_CD !=NULL                                   |
      | 5576_ULOC_ALL_OutBound_PRIM_CITY_NM !=NULL && PRIM_POST_CD !=NULL                                       |
      | 5576_ULOC_ALL_OutBound_INDV_FRST_NM !=NULL && INDV_LAST_NM !=NULL && GIVEN_NAME!=NULL                   |
      | 5576_ULOC_ALL_OutBound_ACCT_SUBSYS_ID!= KS && SRC_SYS_PRD_CD  = SCL and SRC_SYS_SUB_PRD_CD = INE        |
      | 5576_ULOC_ALL_OutBound_ACCT_SUBSYS_ID!= KS && SRC_SYS_PRD_CD  = SCL and SRC_SYS_SUB_PRD_CD = CS         |
      | 5576_ULOC_ALL_OutBound_ACCT_SUBSYS_ID!= KS && SRC_SYS_PRD_CD  = VIC and SRC_SYS_SUB_PRD_CD = RG         |
      | 5576_ULOC_ALL_OutBound_PA_CCUL_CUSTOMER.preapprvd start date!=NULL                                      |
      | 5576_ULOC_ALL_OutBound_PA_CCUL_CUSTOMER.preapprvd end date!=NULL                                        |
      | 5576_ULOC_ALL_OutBound_PA_CCUL_CUSTOMER.Primary Product Code = VIC                                      |
      | 5576_ULOC_ALL_OutBound_PA_CCUL_CUSTOMER.Primary Sub Product Code = RG                                   |
      | N-5576_ULOC_ALL_OutBound_DECEASED_F=Y                                                                   |
      | N-5576_ULOC_ALL_OutBound_DECEASED_F=NULL                                                                |
      | N-5576_ULOC_ALL_OutBound_CUST_TP_CD!= PSNL                                                              |
      | N-5576_ULOC_ALL_OutBound_LANG_CD = K                                                                    |
      | N-5576_ULOC_ALL_OutBound_LANG_CD = NE                                                                   |
      | N-5576_ULOC_ALL_OutBound_LANG_CD = NULL                                                                 |
      | N-5576_ULOC_ALL_OutBound_ACCT_SUBSYS_ID = KS && SRC_SYS_PRD_CD is SCL and SRC_SYS_SUB_PRD_CD is INE     |
      | N-5576_ULOC_ALL_OutBound_ACCT_SUBSYS_ID = KS && SRC_SYS_PRD_CD is SCL and SRC_SYS_SUB_PRD_CD is CS      |
      | N-5576_ULOC_ALL_OutBound_ACCT_SUBSYS_ID = KS && SRC_SYS_PRD_CD is VIC and SRC_SYS_SUB_PRD_CD is RG      |
      | N-5576_ULOC_ALL_OutBound_PA_CCUL_CUSTOMER.Primary Product Code != VIC                                   |
      | N-5576_ULOC_ALL_OutBound_PA_CCUL_CUSTOMER.Primary Sub Product Code != RG                                |
      | N-5576_ULOC_ALL_OutBound_CLOSEST_TRANSIT_NUM =NULL && RESP_TRNST_NUM =NULL && ASSIGNED_FA_TRANSIT =NULL |
      | N-5576_ULOC_ALL_OutBound_PRIM_ADDR_LINE_1 =NULL                                                         |
      | N-5576_ULOC_ALL_OutBound_PRIM_PROV_CD =NULL                                                             |
      | N-5576_ULOC_ALL_OutBound_PRIM_CITY_NM =NULL                                                             |
      | N-5576_ULOC_ALL_OutBound_PRIM_POST_CD =NULL                                                             |
      | N-5576_ULOC_ALL_OutBound_INDV_FRST_NM =NULL                                                             |
      | N-5576_ULOC_ALL_OutBound_INDV_LAST_NM =NULL                                                             |
      | N-5576_ULOC_ALL_OutBound_GIVEN_NAME =NULL                                                               |
      | N-5576_ULOC_ALL_OutBound_PA_CCUL_Customer.preapprvd start date  = After The Present Date                |
      | N-5576_ULOC_ALL_OutBound_PA_CCUL_Customer.preapprvd end date  = Before The Present Date                 |
#      | 5576_ULOC_DIA_CCFile_PA_CCUL_CUSTOMER.Dialer_Channel_F = Y                                                       |
#      | 5576_ULOC_DIA_CCFile_DO_NOT_SOLICIT_F = N                                                                        |
#      | 5576_ULOC_DIA_CCFile_DO_NOT_SOLICIT_F = NULL                                                                     |
#      | 5576_ULOC_DIA_CCFile_DO_NOT_CALL_F = N                                                                           |
#      | N-5576_ULOC_DIA_CCFile_PA_CCUL_CUSTOMER.Dialer_Channel_F = N                                                     |
#      | N-5576_ULOC_DIA_CCFile_PA_CCUL_CUSTOMER.Dialer_Channel_F = NULL                                                  |
#      | N-5576_ULOC_DIA_CCFile_DO_NOT_SOLICIT_F = Y                                                                      |
#      | N-5576_ULOC_DIA_CCFile_DO_NOT_CALL_F = Y                                                                         |
#      | N-5576_ULOC_DIA_CCFile_DO_NOT_CALL_F = NULL                                                                      |
#      | 5576_ULOC_SOL_CCFile_ ACCT_DIM.ACCT_SUBSYS_ID = AC and ACCT_DIM.EDW_ACCT_STAT_CD = A                             |
#      | N-5576_ULOC_SOL_CCFile_ ACCT_DIM.ACCT_SUBSYS_ID != AC and ACCT_DIM.EDW_ACCT_STAT_CD = A                          |
#      | N-5576_ULOC_SOL_CCFile_ ACCT_DIM.ACCT_SUBSYS_ID = AC and ACCT_DIM.EDW_ACCT_STAT_CD != A                          |
#      | 5576_ULOC_CSA_FFT_PAL_CC FILE_Coexist product code_Sub Product code and Coexist_Preapproved_End_Date != NULL |
#      | 5576_ULOC_CC FILE_Channel Field_SOL                                                                              |
#      | 5576_ULOC_CC FILE_Channel Field_DIALER                                                                           |
#      | 5576_ULOC_CC FILE_Channel Field_DIALER_SOL                                                                       |
#      | 5576_ULOC_EMAIL FILE_PRIM_EMAIL_ADDR!= NULL                                                                      |
#      | 5576_ULOC_EMAIL FILE_VLD_EML_F = Y                                                                               |
#      | 5576_ULOC_EMAIL FILE_Customer Name!=NULL                                                                         |
#      | 5576_ULOC_EMAIL FILE_DO_NOT_EMAIL_F = N                                                                          |
#      | 5576_ULOC_EMAIL FILE_CUST_DIM.MK_LOC_LOANS_EMAIL =Y                                                              |
#      | 5576_ULOC_EMAIL FILE_CUST_DIM.MK_LOC_LOANS_EMAIL =NULL                                                           |
#      | 5576_ULOC_EMAIL_DM FILE_DO_NOT_SOLICIT_F =N                                                                      |
#      | 5576_ULOC_EMAIL_DM_FILE_DO_NOT_SOLICIT_F =NULL                                                                   |
#      | 5576_ULOC_DM FILE_PA_CCUL_CUSTOMER.Direct_Mail_Channel_F = Y                                                     |
#      | N-5576_ULOC_CSA_FFT_PAL_CC FILE_Coexist product code_Sub Produt code != NULL and Coexist_Preapproved_End_Date = NULL |
#      | N-5576_ULOC_EMAIL FILE_PRIM_EMAIL_ADDR= NULL                                                                     |
#      | N-5576_ULOC_EMAIL FILE_VLD_EML_F = N                                                                             |
#      | N-5576_ULOC_EMAIL FILE_VLD_EML_F = NULL                                                                          |
#      | 5576_ULOC_EMAIL FILE_Customer Name=NULL                                                                          |
#      | N-5576_ULOC_EMAIL FILE_DO_NOT_EMAIL_F = Y                                                                        |
#      | N-5576_ULOC_EMAIL FILE_CUST_DIM.MK_LOC_LOANS_EMAIL =N                                                            |
#      | N-5576_ULOC_EMAIL_DM FILE_DO_NOT_SOLICIT_F =Y                                                                    |
#      | N-5576_ULOC_DM FILE_PA_CCUL_CUSTOMER.Direct_Mail_Channel_F = N                                                   |
#      | N-5576_ULOC_DM FILE_PA_CCUL_CUSTOMER.Direct_Mail_Channel_F = NULL                                                |
      | N-5576_ULOC_ALL_OutBound_Title = NULL                                                                   |
      | 5576_CC File_ASSIGNED_FA_TRANSIT_ne_NULL                                                                |
      | 5576_RESP_TRNST_NUM_is_Valid                                                                            |
      | 5576_RESP_TRNST_NUM_is_InValid_CLOSEST_TRANSIT_NUM_ne_NULL                                              |
      | 5576_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_ne_NULL                                                 |
      | N-5576_ASSIGNED_FA_TRANSIT && RESP_TRNST_NUM && CLOSEST_TRANSIT_NUM = NULL                              |
      | N-5576_ASSIGNED_FA_TRANSIT && RESP_TRNST_NUM!=Transit.TR_Number && CLOSEST_TRANSIT_NUM = NULL           |
      | 5576_BRANCH_CHANNEL_F = Y                                                                               |
      | N-5576_BRANCH_CHANNEL_F != Y                                                                            |
      | N-5576_BRANCH_CHANNEL_F = NULL                                                                          |