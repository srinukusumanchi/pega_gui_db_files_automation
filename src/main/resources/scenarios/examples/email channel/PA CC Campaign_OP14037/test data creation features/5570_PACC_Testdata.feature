@PA_CC_TestData_5570_Email_CC_DM_IVR_SB
Feature: Test data creation for EMAIL CC And DM PA ULOC

  @PACC_5570_TestData_AllChannelsWithCustInsights
  Scenario Outline: PA CC_OP14037_5570_EMAIL Create test data "<Test cases>" with Cust Insights
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
    When write startdate"<PREAPPROVEDSTARTDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When write enddate"<PREAPPROVEDENDDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                     |PREAPPROVEDSTARTDATE | PREAPPROVEDENDDATE |
      | 5570_EMAIL_Abandon Offer                       |01                   | 25                 |
      | N-5570_EMAIL_Abandon Offer_Disposition Accept  |01                   | 25                 |
      | N-5570_EMAIL_Abandon Offer_Disposition Decline |01                   | 25                 |

  @PACC_5570_TestData_AllChannelsWithOutCustInsights
  Scenario Outline: PA CC_OP14037_5570_Create test data "<Test cases>" for outbound channels with out Cust Insights
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
    When write startdate"<PREAPPROVEDSTARTDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When write enddate"<PREAPPROVEDENDDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_Customer" for "<Test cases>"
    Then insert customer details in "PA_CCUL_Customer" table
    Examples:
      | Test cases                                                                                                       | PREAPPROVEDSTARTDATE | PREAPPROVEDENDDATE |
      | 5570_Customer Not Deceased                                                                                       | 01                   | 25                 |
      | 5570_CUST_TP_CD = PSNL                                                                                           | 01                   | 25                 |
      | 5570_DO_NOT_SOLICIT_F = N                                                                                        | 01                   | 25                 |
      | 5570_DO_NOT_SOLICIT_F = NULL                                                                                     | 01                   | 25                 |
      | 5570_LANG_CD in Capital Letter E                                                                                 | 01                   | 25                 |
      | 5570_LANG_CD in Capital Letter EN                                                                                | 01                   | 25                 |
      | 5570_LANG_CD in Capital Letter F                                                                                 | 01                   | 25                 |
      | 5570_LANG_CD in Capital Letter FR                                                                                | 01                   | 25                 |
      | 5570_LANG_CD in Small Letter e                                                                                   | 01                   | 25                 |
      | 5570_LANG_CD in Small Letter en                                                                                  | 01                   | 25                 |
      | 5570_LANG_CD in Small Letter f                                                                                   | 01                   | 25                 |
      | 5570_LANG_CD in Small Letter fr                                                                                  | 01                   | 25                 |
      | 5570_ACCT_SUBSYS_ID!= KS && SRC_SYS_PRD_CD! in (VCL,VLR,VGD,AXG,AXP,AXS,VFF,VFA,VUS) && SRC_ACCT_STAT_CD!=Active | 01                   | 25                 |
      | 5570_PA_CCUL_Customer.preapprvd start date ! = NULL                                                              | 01                   | 25                 |
      | 5570_PA_CCUL_Customer.preapprvd end date ! = NULL                                                                | 01                   | 25                 |
#      | 5570_PA_CCUL_Customer.Primary Product Code = VCL                                                                 | 01                   | 25                 |
#      | 5570_PA_CCUL_Customer.Primary Sub Product Code = DM                                                              | 01                   | 25                 |
#      | 5570_CC File_FIRST NAME,LAST NAME,GIVEN NAME,TTL_NAME ! = NULL                                                   | 01                   | 25                 |
#      | 5570_CC File_ADDR LINE1,PROV_CD,POST_CD,CITY_NM ! = NULL                                                         | 01                   | 25                 |
#      | 5570_CC File(367)_SB FILE(112)_ ASSIGNED_FA_TRANSIT is not null                                                  | 01                   | 25                 |
#      | 5570_CC File(367)_SB FILE(112)_ ASSIGNED_FA_TRANSIT is null_scenario1                                            | 01                   | 25                 |
#      | 5570_CC File(367)_ SB FILE(112)_ASSIGNED_FA_TRANSIT is null_scenario2                                            | 01                   | 25                 |
#      | 5570_CC FILE_DIA_PA_CCUL_CUSTOMER.Dialer_Channel_F = Y                                                           | 01                   | 25                 |
#      | 5570_CC FILE_DIA_DO_NOT_CALL_F = N                                                                               | 01                   | 25                 |
#      | 5570_CC FILE_SOL_Customer Has Scotiacard  ACCT_DIM.ACCT_SUBSYS_ID = AC and ACCT_DIM.EDW_ACCT_STAT_CD = A         | 01                   | 25                 |
#      | 5570_CC FILE_FFT_PAL_Coexist product code and Sub Produt code != NULL                                            | 01                   | 25                 |
#      | 5570_CC FILE_Channel Field(419)_SOL                                                                              | 01                   | 25                 |
#      | 5570_CC FILE_Channel Field(419)_DIALER                                                                           | 01                   | 25                 |
#      | 5570_CC FILE_Channel Field(419)_ABM                                                                              | 01                   | 25                 |
#      | 5570_CC FILE_Channel Field(419)_DIALER_ABM                                                                       | 01                   | 25                 |
#      | 5570_CC FILE_Channel Field(419)_SOL_ABM                                                                          | 01                   | 25                 |
#      | 5570_CC FILE_Channel Field(419)_DIALER_SOL_ABM                                                                   | 01                   | 25                 |
#      | 5570_CC FILE_Product name Field(41)                                                                              | 01                   | 25                 |
#      | 5570_DM FILE_PA_CCUL_CUSTOMER.Direct_Mail_Channel_F = Y                                                          | 01                   | 25                 |
#      | 5570_EMAIL FILE_PRIM_EMAIL_ADDR!= NULL                                                                           | 01                   | 25                 |
#      | 5570_EMAIL FILE_VLD_EML_F = Y                                                                                    | 01                   | 25                 |
#      | 5570_EMAIL FILE_DO_NOT_EMAIL_F = N                                                                               | 01                   | 25                 |
#      | 5570_EMAIL FILE_MK_CC_OFFERS_EMAIL != N                                                                          | 01                   | 25                 |
#      | 5570_SB FILE_Secondary Customer ID_Secondary Customer Name field(57,72)                                          | 01                   | 25                 |
#      | 5570_SB FILE LAYOUT_BB Account_URL                                                                               | 01                   | 25                 |
#      | 5570_EMAIL                                                                                                       | 01                   | 25                 |
#      | 5570_SB                                                                                                          | 01                   | 25                 |
#      | 5570_IVR                                                                                                         | 01                   | 25                 |
#      | 5570_DM                                                                                                          | 01                   | 25                 |
#      | N-5570_DECEASED_F = Y                                                                                            | 01                   | 25                 |
#      | N-5570_DECEASED_F = NULL                                                                                         | 01                   | 25                 |
#      | N-5570_DO_NOT_SOLICIT_F = Y                                                                                      | 01                   | 25                 |
#      | N-5570_LANG_CD = K                                                                                               | 01                   | 25                 |
#      | N-5570_LANG_CD = NE                                                                                              | 01                   | 25                 |
#      | N-5570_LANG_CD = NULL                                                                                            | 01                   | 25                 |
#      | N-5570_CUST_TP_CD = NULL                                                                                         | 01                   | 25                 |
#      | N-5570_CUST_TP_CD != PSNL                                                                                        | 01                   | 25                 |
#      | N-5570_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VCL && SRC_ACCT_STAT_CD=Active                                     | 01                   | 25                 |
#      | N-5570_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VLR && SRC_ACCT_STAT_CD=Active                                     | 01                   | 25                 |
#      | N-5570_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VGD && SRC_ACCT_STAT_CD=Active                                     | 01                   | 25                 |
#      | N-5570_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in AXG && SRC_ACCT_STAT_CD=Active                                     | 01                   | 25                 |
#      | N-5570_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in AXP && SRC_ACCT_STAT_CD=Active                                     | 01                   | 25                 |
#      | N-5570_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in AXS && SRC_ACCT_STAT_CD=Active                                     | 01                   | 25                 |
#      | N-5570_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VFF && SRC_ACCT_STAT_CD=Active                                     | 01                   | 25                 |
#      | N-5570_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VFA && SRC_ACCT_STAT_CD=Active                                     | 01                   | 25                 |
#      | N-5570_ACCT_SUBSYS_ID= KS &&SRC_SYS_PRD_CD in VUS && SRC_ACCT_STAT_CD=Active                                     | 01                   | 25                 |
#      | N-5570_PA_CCUL_CUSTOMER.Primary Product Code != VCL                                                              | 01                   | 25                 |
#      | N-5570_PA_CCUL_CUSTOMER.Primary Sub Product Code != DM                                                           | 01                   | 25                 |
#      | N-5570_CC File_CLOSEST_TRANSIT_NUM =NULL && RESP_TRNST_NUM =NULL && ASSIGNED_FA_TRANSIT =NULL                    | 01                   | 25                 |
#      | N-5570_CC File_FIRST NAME = NULL                                                                                 | 01                   | 25                 |
#      | N-5570_CC File_LAST NAME = NULL                                                                                  | 01                   | 25                 |
#      | N-5570_CC File_EMAIL File_GIVEN NAME = NULL                                                                      | 01                   | 25                 |
#      | N-5570_CC File_TTL NAME = NULL                                                                                   | 01                   | 25                 |
#      | N-5570_CC File_PRIM_ADDR_LINE1 = NULL                                                                            | 01                   | 25                 |
#      | N-5570_CC File_PRIM_PROV_CD = NULL                                                                               | 01                   | 25                 |
#      | N-5570_CC File_PRIM_POST_CD = NULL                                                                               | 01                   | 25                 |
#      | N-5570_CC File_PRIM_CITY_CD = NULL                                                                               | 01                   | 25                 |
#      | N-5570_CC FILE_DIA_PA_CCUL_CUSTOMER.Dialer_Channel_F = N                                                         | 01                   | 25                 |
#      | N-5570_CC FILE_DIA_PA_CCUL_CUSTOMER.Dialer_Channel_F = NULL                                                      | 01                   | 25                 |
#      | N-5570_CC FILE_DIA_DO_NOT_CALL_F = Y                                                                             | 01                   | 25                 |
#      | N-5570_CC FILE_DIA_DO_NOT_CALL_F = NULL                                                                          | 01                   | 25                 |
#      | N-5570_CC FILE_SOL_Customer Has  Scotiacard  && ACCT_DIM.ACCT_SUBSYS_ID != AC and ACCT_DIM.EDW_ACCT_STAT_CD = A  | 01                   | 25                 |
#      | N-5570_CC FILE_SOL_Customer Has  Scotiacard  && ACCT_DIM.ACCT_SUBSYS_ID = AC and ACCT_DIM.EDW_ACCT_STAT_CD != A  | 01                   | 25                 |
#      | N-5570_CC FILE_FFT_PAL_Coexist product code = NULL and Sub Produt code != NULL                                   | 01                   | 25                 |
#      | N-5570_CC FILE_FFT_PAL_Coexist product code != NULL and Sub Produt code = NULL                                   | 01                   | 25                 |
#      | N-5570_DM FILE_PA_CCUL_CUSTOMER.Direct_Mail_Channel_F = N                                                        | 01                   | 25                 |
#      | N-5570_DM FILE_PA_CCUL_CUSTOMER.Direct_Mail_Channel_F = NULL                                                     | 01                   | 25                 |
#      | N-5570_EMAIL FILE_PRIM_EMAIL_ADDR = NULL                                                                         | 01                   | 25                 |
#      | N-5570_EMAIL FILE_PRIM_EMAIL_ADDR = BLANK                                                                        | 01                   | 25                 |
#      | N-5570_EMAIL FILE_VLD_EML_F = N                                                                                  | 01                   | 25                 |
#      | N-5570_EMAIL FILE_VLD_EML_F = NULL                                                                               | 01                   | 25                 |
#      | N-5570_EMAIL FILE_VLD_EML_F = BLANK                                                                              | 01                   | 25                 |
#      | N-5570_EMAIL FILE_DO_NOT_EMAIL_F = Y                                                                             | 01                   | 25                 |
#      | N-5570_EMAIL FILE_DO_NOT_EMAIL_F = NULL                                                                          | 01                   | 25                 |
#      | N-5570_EMAIL FILE_DO_NOT_EMAIL_F = BLANK                                                                         | 01                   | 25                 |
#      | N-5570_EMAIL FILE_MK_CC_OFFERS_EMAIL = N                                                                         | 01                   | 25                 |
#      | N-5570_EMAIL FILE_MK_CC_OFFERS_EMAIL = NULL                                                                      | 01                   | 25                 |
#      | N-5570_EMAIL FILE_MK_CC_OFFERS_EMAIL = BLANK                                                                     | 01                   | 25                 |
#      | 5570_PA CC Primary Product_ULOC Coexist Product                                                                  | 01                   | 25                 |
#      | N_5570_SB FILE_DIA_PA_CCUL_CUSTOMER.BRANCH_Channel_F = N                                                         | 01                   | 25                 |
#      | N-5570_SB FILE_DIA_PA_CCUL_CUSTOMER.BRANCH_Channel_F = NULL                                                      | 01                   | 25                 |


  @PACC_5570_TestData_SOLNEGATIVEChannelsWithOutCustInsights
  Scenario Outline: PA CC_OP14037_5570_Create test data "<Test cases>" for outbound channels with out Cust Insights
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
    When write startdate"<PREAPPROVEDSTARTDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When write enddate"<PREAPPROVEDENDDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_Customer" for "<Test cases>"
    Then insert customer details in "PA_CCUL_Customer" table
    Examples:
      | Test cases                                                                                                       | PREAPPROVEDSTARTDATE | PREAPPROVEDENDDATE |
      | N-5570_CC FILE_SOL_Customer Has NO Scotiacard  && ACCT_DIM.ACCT_SUBSYS_ID = AC and ACCT_DIM.EDW_ACCT_STAT_CD = A | 01                   | 25                 |

  @PACC_NegativeTestCases_5570
  Scenario Outline: PA CC_OP14037_5570_Create test data "<Test cases>" for outbound channels with out PA CC Table
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
    Examples:
      | Test cases                       |
      | N-5570_PA_CCUL_Customer is Blank |

  @PACC_NegativeTestCases_5570
  Scenario Outline: PA CC_OP14037_5570_Create test data "<Test cases>" for outbound channels with Negative test cases in  PA CC Table
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
    When write startdate greaterthan"<PREAPPROVEDSTARTDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When write enddate"<PREAPPROVEDENDDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_Customer" for "<Test cases>"
    Then insert customer details in "PA_CCUL_Customer" table
    Examples:
      | Test cases                                           | PREAPPROVEDSTARTDATE | PREAPPROVEDENDDATE |
      | N-5570_PA_CCUL_Customer.preapprvd start date  = NULL | 5                    | 31                 |

  @PACC_NegativeTestCases_5570
  Scenario Outline: PA CC_OP14037_5570_Create test data "<Test cases>" for outbound channels with Negative test cases in  PA CC Table
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
    When write startdate"<PREAPPROVEDSTARTDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When write enddate lessthan"<PREAPPROVEDENDDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_Customer" for "<Test cases>"
    Then insert customer details in "PA_CCUL_Customer" table
    Examples:
      | Test cases                                         | PREAPPROVEDSTARTDATE | PREAPPROVEDENDDATE |
      | N-5570_PA_CCUL_Customer.preapprvd end date  = NULL | 01                   | -1                 |

