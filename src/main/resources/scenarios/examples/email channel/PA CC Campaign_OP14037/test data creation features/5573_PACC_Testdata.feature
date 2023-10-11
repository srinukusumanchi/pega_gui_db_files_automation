@PA_CC_TestData_5573_Email_CC_DM_IVR_SB
Feature: Test data creation for EMAIL CC And DM PA ULOC

  @PACC_5573_TestData_AllChannelsWithCustInsights
  Scenario Outline: PA CC_OP14037_5573_EMAIL Create test data with Cust Insights
    Given load data from "PACC" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write Scotia Card number into "ACCT_DIM" sheet for "<Test cases>"
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
      | 5573_EMAIL_Abandon Offer                       |
      | N-5573_EMAIL_Abandon Offer_Disposition Accept  |
      | N-5573_EMAIL_Abandon Offer_Disposition Decline |

  @PACC_5573_TestData_AllChannelsWithOutCustInsights
  Scenario Outline: PA CC_OP14037_5573_Create test data for outbound channels with out Cust Insights
    Given load data from "PACC" excel sheet
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
      | Test cases                                                                                                       |
      | 5573_Customer Not Deceased                                                                                       |
      | 5573_CUST_TP_CD = PSNL                                                                                           |
      | 5573_DO_NOT_SOLICIT_F = N                                                                                        |
      | 5573_DO_NOT_SOLICIT_F = NULL                                                                                     |
      | 5573_LANG_CD in Capital Letter E                                                                                 |
      | 5573_LANG_CD in Capital Letter EN                                                                                |
      | 5573_LANG_CD in Capital Letter F                                                                                 |
      | 5573_LANG_CD in Capital Letter FR                                                                                |
      | 5573_LANG_CD in Small Letter e                                                                                   |
      | 5573_LANG_CD in Small Letter en                                                                                  |
      | 5573_LANG_CD in Small Letter f                                                                                   |
      | 5573_LANG_CD in Small Letter fr                                                                                  |
      | 5573_ACCT_SUBSYS_ID!= KS && SRC_SYS_PRD_CD! in (VCL,VLR,VGD,AXG,AXP,AXS,VFF,VFA,VUS) && SRC_ACCT_STAT_CD!=Active |
      | 5573_PA_CCUL_Customer.preapprvd start date ! = NULL                                                              |
      | 5573_PA_CCUL_Customer.preapprvd end date ! = NULL                                                                |
      | 5573_PA_CCUL_Customer.Primary Product Code = AXG                                                                 |
      | 5573_PA_CCUL_Customer.Primary Sub Product Code = GC                                                              |
      | 5573_CC File_FIRST NAME,LAST NAME,GIVEN NAME,TTL_NAME ! = NULL                                                   |
      | 5573_CC File_ADDR LINE1,PROV_CD,POST_CD,CITY_NM ! = NULL                                                         |
      | 5573_CC File(367)_SB FILE(112)_ ASSIGNED_FA_TRANSIT is not null                                                  |
      | 5573_CC File(367)_SB FILE(112)_ ASSIGNED_FA_TRANSIT is null_scenario1                                            |
      | 5573_CC File(367)_ SB FILE(112)_ASSIGNED_FA_TRANSIT is null_scenario2                                            |
      | 5573_CC FILE_DIA_PA_CCUL_CUSTOMER.Dialer_Channel_F = Y                                                           |
      | 5573_CC FILE_DIA_DO_NOT_CALL_F = N                                                                               |
      | 5573_CC FILE_SOL_Customer Has Scotiacard  ACCT_DIM.ACCT_SUBSYS_ID = AC and ACCT_DIM.EDW_ACCT_STAT_CD = A         |
      | 5573_CC FILE_FFT_PAL_Coexist product code and Sub Produt code != NULL                                            |
      | 5573_CC FILE_Channel Field(419)_SOL                                                                              |
      | 5573_CC FILE_Channel Field(419)_DIALER                                                                           |
      | 5573_CC FILE_Channel Field(419)_ABM                                                                              |
#      | 5573_CC FILE_Channel Field(419)_DIALER_SOL                                                                       |
      | 5573_CC FILE_Channel Field(419)_DIALER_ABM                                                                       |
      | 5573_CC FILE_Channel Field(419)_SOL_ABM                                                                          |
      | 5573_CC FILE_Channel Field(419)_DIALER_SOL_ABM                                                                   |
      | 5573_CC FILE_Product name Field(41)                                                                              |
      | 5573_DM FILE_PA_CCUL_CUSTOMER.Direct_Mail_Channel_F = Y                                                          |
      | 5573_EMAIL FILE_PRIM_EMAIL_ADDR!= NULL                                                                           |
      | 5573_EMAIL FILE_VLD_EML_F = Y                                                                                    |
      | 5573_EMAIL FILE_DO_NOT_EMAIL_F = N                                                                               |
      | 5573_EMAIL FILE_MK_CC_OFFERS_EMAIL != N                                                                          |
      | 5573_SB FILE_Secondary Customer ID_Secondary Customer Name field(57,72)                                          |
      | 5573_SB FILE LAYOUT_BB Account_URL                                                                               |
      | 5573_EMAIL                                                                                                       |
      | 5573_SB                                                                                                          |
      | 5573_IVR                                                                                                         |
      | 5573_DM                                                                                                          |
      | N-5573_DECEASED_F = Y                                                                                            |
      | N-5573_DECEASED_F = NULL                                                                                         |
      | N-5573_DO_NOT_SOLICIT_F = Y                                                                                      |
      | N-5573_LANG_CD = K                                                                                               |
      | N-5573_LANG_CD = NE                                                                                              |
      | N-5573_LANG_CD = NULL                                                                                            |
      | N-5573_CUST_TP_CD = NULL                                                                                         |
      | N-5573_CUST_TP_CD != PSNL                                                                                        |
      | N-5573_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VCL && SRC_ACCT_STAT_CD=Active                                     |
      | N-5573_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VLR && SRC_ACCT_STAT_CD=Active                                     |
      | N-5573_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VGD && SRC_ACCT_STAT_CD=Active                                     |
      | N-5573_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in AXG && SRC_ACCT_STAT_CD=Active                                     |
      | N-5573_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in AXP && SRC_ACCT_STAT_CD=Active                                     |
      | N-5573_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in AXS && SRC_ACCT_STAT_CD=Active                                     |
      | N-5573_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VFF && SRC_ACCT_STAT_CD=Active                                     |
      | N-5573_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VFA && SRC_ACCT_STAT_CD=Active                                     |
      | N-5573_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VUS && SRC_ACCT_STAT_CD=Active                                     |
      | N-5573_PA_CCUL_CUSTOMER.Primary Product Code != AXG                                                              |
      | N-5573_PA_CCUL_CUSTOMER.Primary Sub Product Code != GC                                                           |
#      | N-5573_PA_CCUL_CUSTOMER.Primary Product Code = AXG && PA_CCUL_CUSTOMER.Primary Sub Product Code = NULL           |
#      | N-5573_PA_CCUL_CUSTOMER.Primary Product Code = NULL && PA_CCUL_CUSTOMER.Primary Sub Product Code = GC            |
#      | N-5573_PA_CCUL_CUSTOMER.Primary Product Code = NULL && PA_CCUL_CUSTOMER.Primary Sub Product Code = NULL          |
#      | N-5573_PA_CCUL_Customer is Blank                                                                                 |
      | N-5573_PA_CCUL_Customer.preapprvd start date  = NULL                                                             |
      | N-5573_PA_CCUL_Customer.preapprvd end date  = NULL                                                               |
      | N-5573_CC File_CLOSEST_TRANSIT_NUM =NULL && RESP_TRNST_NUM =NULL && ASSIGNED_FA_TRANSIT =NULL                    |
      | N-5573_CC File_FIRST NAME = NULL                                                                                 |
      | N-5573_CC File_LAST NAME = NULL                                                                                  |
      | N-5573_CC File_EMAIL File_GIVEN NAME = NULL                                                                      |
      | N-5573_CC File_TTL NAME = NULL                                                                                   |
      | N-5573_CC File_PRIM_ADDR_LINE1 = NULL                                                                            |
      | N-5573_CC File_PRIM_PROV_CD = NULL                                                                               |
      | N-5573_CC File_PRIM_POST_CD = NULL                                                                               |
      | N-5573_CC File_PRIM_CITY_CD = NULL                                                                               |
      | N-5573_CC FILE_DIA_PA_CCUL_CUSTOMER.Dialer_Channel_F = N                                                         |
      | N-5573_CC FILE_DIA_PA_CCUL_CUSTOMER.Dialer_Channel_F = NULL                                                      |
      | N-5573_CC FILE_DIA_DO_NOT_CALL_F = Y                                                                             |
      | N-5573_CC FILE_DIA_DO_NOT_CALL_F = NULL                                                                          |
      | N-5573_CC FILE_SOL_Customer Has  Scotiacard  && ACCT_DIM.ACCT_SUBSYS_ID != AC and ACCT_DIM.EDW_ACCT_STAT_CD = A  |
      | N-5573_CC FILE_SOL_Customer Has  Scotiacard  && ACCT_DIM.ACCT_SUBSYS_ID = AC and ACCT_DIM.EDW_ACCT_STAT_CD != A  |
      | N-5573_CC FILE_FFT_PAL_Coexist product code = NULL and Sub Produt code != NULL                                   |
      | N-5573_CC FILE_FFT_PAL_Coexist product code != NULL and Sub Produt code = NULL                                   |
      | N-5573_DM FILE_PA_CCUL_CUSTOMER.Direct_Mail_Channel_F = N                                                        |
      | N-5573_DM FILE_PA_CCUL_CUSTOMER.Direct_Mail_Channel_F = NULL                                                     |
      | N-5573_EMAIL FILE_PRIM_EMAIL_ADDR = NULL                                                                         |
      | N-5573_EMAIL FILE_PRIM_EMAIL_ADDR = BLANK                                                                        |
      | N-5573_EMAIL FILE_VLD_EML_F = N                                                                                  |
      | N-5573_EMAIL FILE_VLD_EML_F = NULL                                                                               |
      | N-5573_EMAIL FILE_VLD_EML_F = BLANK                                                                              |
      | N-5573_EMAIL FILE_DO_NOT_EMAIL_F = Y                                                                             |
      | N-5573_EMAIL FILE_DO_NOT_EMAIL_F = NULL                                                                          |
      | N-5573_EMAIL FILE_DO_NOT_EMAIL_F = BLANK                                                                         |
      | N-5573_EMAIL FILE_MK_CC_OFFERS_EMAIL = N                                                                         |
      | N-5573_EMAIL FILE_MK_CC_OFFERS_EMAIL = NULL                                                                      |
      | N-5573_EMAIL FILE_MK_CC_OFFERS_EMAIL = BLANK                                                                     |
      | 5573_PA CC Primary Product_ULOC Coexist Product                                                                  |
      | N_5573_SB FILE_DIA_PA_CCUL_CUSTOMER.BRANCH_Channel_F = N                                                         |
      | N-5573_SB FILE_DIA_PA_CCUL_CUSTOMER.BRANCH_Channel_F = NULL                                                      |

  @PACC_5573_TestData_SOLNEGATIVEChannelsWithOutCustInsights
  Scenario Outline: PA CC_OP14037_5573_Create test data for outbound channels with out Cust Insights
    Given load data from "PACC" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
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
      | Test cases                                                                                                       |
      | N-5573_CC FILE_SOL_Customer Has NO Scotiacard  && ACCT_DIM.ACCT_SUBSYS_ID = AC and ACCT_DIM.EDW_ACCT_STAT_CD = A |
