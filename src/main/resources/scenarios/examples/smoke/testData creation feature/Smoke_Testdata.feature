@Smoke_TestDataCreation
Feature: Create test data for Smoke scenarios for all channels

  ##########################EMAIL#############################
  #  Single accounts
  @EMAIL @Workstream-4
    @D2DEngagementWelcome_Sanity  @4330 @4331 @4332 @4334 @4658 @RS17103
    @D2DEngagementReward @4363 @4364 @4366 @RS18024
    @D2DEngagementMappingTomorrow @4402 @WD18055
    @D2DEngagementFundAccount @4315 @RS18022
    @D2DEngagementDigitalAdoption @4235 @RS17104
    @D2DEngagementPADPayment @4316 @4380 @RS18023

  Scenario Outline: D2D Engagement Email Create test data for single accounts smoke
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases                      | Acct_Odt |
      | 4330_D2D Welcome_BBA            | 11        |
      | 4331_D2D Welcome_BBP            | 11        |
      | 4332_D2D Welcome_ScotiaOne      | 11        |
      | 4334_D2D Welcome_StudentBanking | 11        |
      | 4658_D2D Welcome_Ultimate       | 11        |
      | 4363_Reward Reinforcement       | 42       |
      | 4366_Reward Reinforcement       | 42       |
      | 4402_MappingTomorrow            | 70       |
      | 4315_Fund Account               | 16       |
      | 4235_D2D Digital Adoption       | 12       |
      | 4316_Bill Payment               | 23       |
      | 4380_Bill Payment               | 23       |
#  @Email @D2DEngagementDigitalAdoption_Positive_TestData_Sanity_4235 @Workstream-4 @4235 @EMAIL @RS17104
  Scenario Outline: D2D Engagement Digital Adoption_RS17104_4235_EMAIL sanity Create test data for positive test cases
    Given load data from "DigitalAdoption" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And  write MOB_LAST_LOGIN_DT "<MOB_LAST_LOGIN_DT>" value into sheet "CUST_DIM" for "<Test cases>"
    And  write SOL_LAST_LOGIN_DT "<SOL_LAST_LOGIN_DT>" value into sheet "CUST_DIM" for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_OPND_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts


    Examples:
      | Test cases                                                                                            | ACCT_ODT_Val | MOB_LAST_LOGIN_DT | SOL_LAST_LOGIN_DT | CUST_OPND_DT | Arriving_Date | Acct_Cnt |
      | 4235_PRDCD_07_SUB PRDCD_11_4235072310_NTC                                                             | 14           | NULL              | NULL              | 125          | 45            | 1        |
      | 4235_PRD CD- 07, SUB PRD CD -11                                                                       | 14           | NULL              | NULL              | 125          | NULL          | 1        |

  @Workstream-4 @EMAIL
    @ChannelAdoptionEngagementPromoteMobileDeposit_Sanity @RDC @4272 @RS18016
  Scenario Outline: RDC Email Create test data for single accounts smoke
    Given load data from "Smoke" excel sheet
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
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write "<CURR_VAL_UPDT_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                  | CURR_VAL_UPDT_TMSTMP |
      | 4272_Remote Deposit Capture | -1                   |

  @Workstream-4 @EMAIL @EMOB_TestData_Sanity
    @Touch-7  @2437 @2438 @2441 @2445 @2446 @2447 @4749 @4954 @4955 @4957 @5894 @VS16008 @bvtsmoke_feb2023
  Scenario Outline: EMOB Email Create test data for single accounts smoke for EMOB Touch 7
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases       | Acct_Odt |
      | 2437_Touch7_EMOB | 11        |
      | 2438_Touch7_EMOB | 11        |
      | 2441_Touch7_EMOB | 11        |
      | 2445_Touch7_EMOB | 11        |
      | 2446_Touch7_EMOB | 11        |
      | 2447_Touch7_EMOB | 11        |
      | 4749_Touch7_EMOB | 11       |
      | 4954_Touch7_EMOB | 11        |
      | 4955_Touch7_EMOB | 11        |
      | 4957_Touch7_EMOB | 11        |
      | 5894_Touch7_EMOB | 11       |

  @Workstream-4 @EMAIL @EMOB_TestData_Sanity
    @Touch-14 @4751 @4752_Sanity @4753 @4754 @4755 @4756 @4757 @4758 @4759 @4762 @4763 @4764 @4765 @4766 @4884 @VS1608C
  Scenario Outline: EMOB Email Create test data for single accounts smoke for EMOB Touch 14
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases        | Acct_Odt |
      | 4751_Touch14_EMOB | 14       |
      | 4752_Touch14_EMOB | 14       |
      | 4753_Touch14_EMOB | 14       |
      | 4754_Touch14_EMOB | 14       |
      | 4755_Touch14_EMOB | 14       |
      | 4756_Touch14_EMOB | 14       |
      | 4757_Touch14_EMOB | 14       |
      | 4758_Touch14_EMOB | 14       |
      | 4759_Touch14_EMOB | 14       |
      | 4762_Touch14_EMOB | 14       |
      | 4763_Touch14_EMOB | 14       |
      | 4764_Touch14_EMOB | 14       |
      | 4765_Touch14_EMOB | 14       |
      | 4766_Touch14_EMOB | 14       |
      | 4884_Touch14_EMOB | 14       |

  @Workstream-4 @EMAIL @EMOB_TestData_Sanity @Touch-21  @4963 @4962 @4961 @4960 @4959 @4750  @2462 @2461 @2460 @2459 @2458 @2457 @2456 @2454 @2453 @VS1608B
  Scenario Outline: EMOB Email Create test data for single accounts smoke for EMOB Touch 21
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases        | Acct_Odt |
      | 2453_Touch21_EMOB | 21       |
      | 2454_Touch21_EMOB | 21       |
      | 2456_Touch21_EMOB | 21       |
      | 2457_Touch21_EMOB | 21       |
      | 2458_Touch21_EMOB | 21       |
      | 2459_Touch21_EMOB | 21       |
      | 2460_Touch21_EMOB | 21       |
      | 2461_Touch21_EMOB | 21       |
      | 2462_Touch21_EMOB | 21       |
      | 4750_Touch21_EMOB | 21       |
      | 4959_Touch21_EMOB | 21       |
      | 4960_Touch21_EMOB | 21       |
      | 4961_Touch21_EMOB | 21       |
      | 4962_Touch21_EMOB | 21       |
      | 4963_Touch21_EMOB | 21       |

  @Workstream-4 @EMAIL @EMOB_TestData_Sanity @Touch-28 @4784 @4786 @4787 @4788 @4789 @4790  @4793 @4794 @4795 @4796 @4797 @4885 @VS1608D
  Scenario Outline: EMOB Email Create test data for single accounts smoke for EMOB Touch 28
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases        | Acct_Odt |
      | 4784_Touch28_EMOB | 28       |
      | 4786_Touch28_EMOB | 28       |
      | 4787_Touch28_EMOB | 28       |
      | 4788_Touch28_EMOB | 28       |
      | 4789_Touch28_EMOB | 28       |
      | 4790_Touch28_EMOB | 28       |
      | 4793_Touch28_EMOB | 28       |
      | 4794_Touch28_EMOB | 28       |
      | 4795_Touch28_EMOB | 28       |
      | 4796_Touch28_EMOB | 28       |
      | 4797_Touch28_EMOB | 28       |
      | 4885_Touch28_EMOB | 28       |

  @Workstream-4 @EMAIL @EMOB_TestData_Sanity
    @Touch-34 @4798 @VS1608E
  Scenario Outline: EMOB Email Create test data for single accounts smoke for EMOB Touch 34
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases   | Acct_Odt |
      | Touch34_EMOB | 34       |

  @Workstream-4 @EMAIL
    @NTC @RS20034 @5043
  Scenario Outline: NTC Email Create test data for single accounts smoke
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write BBDWSC_SC_EXPIRY_DATE "<BBDWSC_SC_EXPIRY_DATE>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases | BBDWSC_SC_EXPIRY_DATE |
      | 5043_NTC   | 63                    |

  @Workstream-4 @EMAIL
    @CrossSell @4891 @4892 @4893 @4894 @RS19067
  Scenario Outline: D2D Engagement Cross sell Email Create test data for dual accounts smoke
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases     | Acct_Odt | CUST_OPND_DT |
      | 4891_CrossSell | 28       | 20           |
      | 4892_CrossSell | 28       | 24           |
      | 4893_CrossSell | 28       | 24           |
      | 4894_CrossSell | 28       | 24           |

  @Workstream-5 @EMAIL
    @GICRenewalEmail_Sanity @1210 @4587 @Email @ET14061
  Scenario Outline: GIC Renewal ET14061 Email Create test data for dual accounts smoke
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases     | MAT_DT |
      | 1210_GIC_EMAIL | 25     |
      | 4587_GIC_EMAIL | 25     |

  @PA_ULOC_5576_TestData_AllChannelsWithOutCustInsights_Sanity @EMAIL
  Scenario Outline: PA ULOC_OP12020_5576_EMAIL CC and DM Create test data With Out Cust Insights
    Given load data from "Smoke" excel sheet
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
      | Test cases      | PREAPPROVEDSTARTDATE | PREAPPROVEDENDDATE |
      | 5576_ULOC_EMAIL | 01                   | 25                 |

  @PACC_5570_5571_5572_5573_5574_5575_TestData_EMAIL_AllChannelsWithOutCustInsights @5570 @5571 @5572 @5573 @5574 @5575 @EMAIL
  Scenario Outline: PA CC_OP14037_5570_Create test data for outbound channels with out Cust Insights
    Given load data from "Smoke" excel sheet
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
      | Test cases      | PREAPPROVEDSTARTDATE | PREAPPROVEDENDDATE |
      | 5570_PACC_EMAIL | 01                   | 25                 |
      | 5571_PACC_EMAIL | 01                   | 25                 |
      | 5572_PACC_EMAIL | 01                   | 25                 |
      | 5573_PACC_EMAIL | 01                   | 25                 |
      | 5574_PACC_EMAIL | 01                   | 25                 |
      | 5575_PACC_EMAIL | 01                   | 25                 |
      | 4354_PACC_EMAIL | 01                   | 25                 |

  @ULOC_CLI @ULOC_CLI_CIE6001_Base_TestData_EML @6001 @ULOC_CLI_EML @RS23043
  Scenario Outline: ULOC_CLI_RS23043_6001_EML Create test data for Base test cases
    Given load data from "ULOC_CLI" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "CLI_OFR_ST_DT" field with "<CLI_OFR_ST_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "CLI_OFR_EXP_DT" field with "<CLI_OFR_EXP_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | CLI_OFR_ST_DT_Val | CLI_OFR_EXP_DT_Val |
      | 6001_EML_BASE_Creative_01 | 2        | 3                 | -40                |
      | 6001_EML_BASE_Creative_02 | 2        | 3                 | -40                |

  @ULOC_CLI @ULOC_CLI_CIE6002_Base_TestData_EML @6002 @ULOC_CLI_EML @RS23043
  Scenario Outline: ULOC_CLI_RS23043_6002_EML Create test data for Base test cases
    Given load data from "ULOC_CLI_Ofr" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "CLI_OFR_ST_DT" field with "<CLI_OFR_ST_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "CLI_OFR_EXP_DT" field with "<CLI_OFR_EXP_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | CLI_OFR_ST_DT_Val | CLI_OFR_EXP_DT_Val |
      | 6002_EML_BASE_Creative_01 | 2        | 3                 | -40                |
      | 6002_EML_BASE_Creative_02 | 2        | 3                 | -40                |


  #  Dual accounts
  @EMAIL @Workstream-4
    @D2DEngagementVisaDebit @4368 @RS18040
    @D2DEngagementInteracFlash @4367 @RS18039
    @D2DEngagementDigitalPayment @4399 @4400 @4401 @WD18054
  Scenario Outline: D2D Engagement Email Create test data for dual accounts smoke
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid and account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    Then insert customer in "PURL_CUST_PROFILE" table having "2" accounts

    Examples:
      | Test cases                    | Acct_Odt |
      | 4364_Reward Reinforcement     | 33       |
      | 4364_Reward Reinforcement_NTC | 33       |
      | 4366_Reward Reinforcement     | 33       |
      | 4366_Reward Reinforcement_NTC | 33       |
      | 4368_Visa Debit               | 56       |
      | 4367_Interac Flash            | 50       |
      | 4399_Digital Payment          | 64       |
      | 4400_Digital Payment          | 64       |
      | 4401_Digital Payment          | 64       |

  @EMAIL_CrossSell_Sanity @Workstream-4
    @TFSACrossSell @5464
    @MPSACrossSell @5467
    @RESPCrossSell @5466
    @RRSPCrossSell @5465

  Scenario Outline:  Cross Sell offers EMAIL Create test data for smoke
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LAST_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LAST_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write "<CURR_VAL_UPDT_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases             | CUST_OPND_DT | Acct_Odt | SOL_LAST_LOGIN | MOB_LAST_LOGIN | CURR_VAL_UPDT_TMSTMP |
      | 5464_TFSACrossSell     | 100          | 100      | NULL           | NULL           | -50                  |
      | 5467_MPSACrossSell     | NULL         | 100      | NULL           | NULL           | -50                  |
      | 5465_RRSPCrossSell     | 100          | 100      | NULL           | NULL           | -50                  |
      | 5466_RESPCrossSell     | 100          | 100      | NULL           | NULL           | -50                  |
      | 5504_MPSAFund          | NULL         | 100      | NULL           | NULL           | -50                  |


  @EMAIL_Contribution_Sanity @Workstream-4
    @TFSAFund @5501
    @MPSAFund @5504
    @RESPFund @5503
    @RRSPFund @5502
  Scenario Outline:  Contribution offers EMAIL Create test data for smoke
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    And write "<CURR_VAL_UPDT_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write "<CURR_VAL_UPDT_TMSTMP_Dual_Account>" for dual accounts into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts

    Examples:
      | Test cases    | Acct_Odt | CUST_OPND_DT | CURR_VAL_UPDT_TMSTMP | CURR_VAL_UPDT_TMSTMP_Dual_Account |
      | 5501_TFSAFund | 100      | 100          | -50                  | -50                               |
      | 5502_RRSPFund | 100      | 100          | -50                  | -50                               |
      | 5503_RESPFund | 100      | 100          | -50                  | -50                               |

  @MortgageAcquisitionEmail_Sanity @MortgageAcquisitionEmail_CC @5021 @Email @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition 5021 RS19029 Email Create test data for positive test cases
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    And  write MLS Added Date "<MLS_ADDED_AT_DT>" value into sheet "CUST_DIM" for "<Testcases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LOGIN>" value into sheet "CUST_DIM" for "<Testcases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LOGIN>" value into sheet "CUST_DIM" for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Testcases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Testcases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Testcases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Testcases        | MLS_ADDED_AT_DT | MOB_LOGIN | SOL_LOGIN |
      | 5021_MA_Email_CC | 5               | 10        | 5         |

  @MortgageAcquisitionEmail_Sanity @MortgageAcquisitionEmail_SB @5021 @Email @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition 5021 RS19029 Email Create test data for positive test cases
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    And  write MLS Added Date "<MLS_ADDED_AT_DT>" value into sheet "CUST_DIM" for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    Examples:
      | Testcases        | MLS_ADDED_AT_DT |
      | 5021_MA_Email_SB | 5               |

  @CreditLimitIncrease @CLI_Positive_TestData_Single_Account_Sanity  @Email @VS18076
  Scenario Outline: Credit Limit Increase VS18076 Email Create test data for positive test cases
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write startdate"<CLI_OFR_ST_DT>" into "ACCT_DIM" sheet for "<Test cases>"
    When write enddate"<CLI_OFR_EXP_DT>" into "ACCT_DIM"  sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                 | CLI_OFR_ST_DT | CLI_OFR_EXP_DT |
      | 4481_Credit Limit Increase | 01            | 25             |
      | 4482_Credit Limit Increase | 01            | 25             |


  @CreditLimitIncrease @CLI_Positive_TestData_Dual_Account_Sanity  @Email @VS18076
  Scenario Outline: Credit Limit Increase VS18076 Email Create test data for positive test cases
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write CLI account number into "ACCT_DIM" sheet for "<Test cases>" having 2 accounts
    When write startdate"<CLI_OFR_ST_DT>" into "ACCT_DIM" sheet for "<Test cases>"
    When write enddate"<CLI_OFR_EXP_DT>" into "ACCT_DIM"  sheet for "<Test cases>"
    Then insert CLI customer account details in "ACCT_DIM" table having "2" accounts
    When write CLI cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert CLI customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                 | CLI_OFR_ST_DT | CLI_OFR_EXP_DT |
      | 4479_Credit Limit Increase | 01            | 25             |
      | 4480_Credit Limit Increase | 01            | 25             |


  @5616_Smoke_Positive
  Scenario Outline: Bill Payment Txn_RS21133_5616_EMAIL Create test data "<Test cases>" for positive scenarios
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write Event data "<EVENT_DATE>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases          | EVENT_DATE | Acct_Odt | MOB_LOGIN | SOL_LOGIN |
      | 5616_BillPaymentTxn | 1          | 100      | NULL      | 92        |

  @5615_Smoke_Positive @issues
  Scenario Outline: Visa Debit Acq_RS21132_5615_EMAIL Create test data "<Test cases>" for positive scenarios
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    When write dual same account number into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" insights
    And write "<CURR_VAL_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write "<CURR_VAL_TMSTMP_Dual_Account>" for dual accounts into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event data "<EVENT_DATE>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases        | CURR_VAL_TMSTMP | CURR_VAL_TMSTMP_Dual_Account | EVENT_DATE | Acct_Odt | MOB_LOGIN | SOL_LOGIN |
      | 5615_VisaDebitAcq | -101            | -92                          | -1         | 100      | 10        | 10        |

  @ODPRightSizing_Email_5614_Sanity
  Scenario Outline: ODP Right Sizing_RS21131_5614_EMAIL Create test data for 1111
    Given load data from "Smoke" excel sheet
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
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases            | Event_Date |
      | 5614_ODP Right Sizing | 4          |

  @NTCCreditHistory_Email_5619_111
  Scenario Outline: NTC Credit History_RS2098A_5619_EMAIL Create test data for 111
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases              | Acct_Odt |
      | 5619_NTC Credit History | 32       |


  @CC_CreditorInsurance_OPM_Base_TestData_2423_Sanity
  Scenario Outline: CC Creditor Insurance_VS17084_2423_OPM Create Test Data for Base Line Scenarios
    Given load data from "CIOptimaInitial" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val |
      | 2423_OPM_BASE_Creative_04 | 1        | 0           | 5            |
      | 2423_OPM_BASE_Creative_05 | 1        | 0           | 400          |



  @5648_ReTargeting_Optima_Positive_Testdata_Sanity
  Scenario Outline: Creditor Insurance_ReTargeting Offer_VS17084_5648_Optima Create test data "<Test cases>" for positive scenarios
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                     | Acct_Odt | Event_Date |
      | 5648_Creditor Insurance_Optima | 54       | 3          |

  @5648_ReTargeting_Email_Positive_Testdata_Sanity
  Scenario Outline: Creditor Insurance_ReTargeting Offer_VS17084_5648_EMAIL Create test data "<Test cases>" for positive scenarios
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                    | Acct_Odt | Event_Date |
      | 5648_Creditor Insurance_Email | 54       | 3          |

  @CC_CreditorInsurance_EML_Base_TestData_2423_Sanity
  Scenario Outline: CC Creditor Insurance_VS17084_2423_EMAIL Create Test Data for Base Line Scenarios
    Given load data from "CIEmailInitial" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_DT_val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases            | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val | MOB_LAST_LOGIN_DT_val | SOL_LAST_LOGIN_DT_val |
      | 2423_BASE_Creative_01 | 1        | 0           | 20           | NULL                  | NULL                  |
      | 2423_BASE_Creative_04 | 1        | 0           | 190          | NULL                  | NULL                  |

  @NTCEngagementMappingTomorrow_PositiveTcs_Sanity @5151 @EMAIL @RS2098C
  Scenario Outline: NTC Engagement CurriCulum Mapping Tomorrow_RS2098C_5151_EMAIL Create test data for smoke test cases
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test Cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test Cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test Cases>"
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test Cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test Cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test Cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test Cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test Cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test Cases                           | Acct_Odt |
      | 5151_NTC Engagement Mapping Tomorrow | 183      |

  @NTCMortgageAcquisionEmail @NTCMA_Email_5152_Sanity @EMAIL @RS2098D
  Scenario Outline: NTCMortgageAcquisition_EMAIL Create test data for positive test cases
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt excluding today "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                         | Acct_Odt |
      | 5152_NTC Mortgage Acuisition_Email | 272      |

  @EarlyTenureIndirectMtgLeads @EarlyTenureIndirectMtgLeads_5688_SANITY @5688  @RS21128 @EMAIL @SB @issues
  Scenario Outline: EarlyTenureIndirectMtgLeads_RS21128_5688_EMAIL Create test data for 111
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write Mortgage Funding Date "<MORT_FNDNG_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                    | MORT_FNDNG_DT |
      | 5688_Indirect MTG Leads_Email | 35            |
      | 5688_Indirect MTG Leads_SB    | 35            |

  @SPSPLoanRepayment @EMAIL @SPSPLoanRepayment_5701_5702_Sanity @5701 @5702 @EMAIL @SB
  Scenario Outline: SPSPLoanRepayment_RS20027_5701_EMAIL Create test data for positive test cases
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write study end date "<std_end_dt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                     | std_end_dt |
      | 5701_SPSP_LOAN_REPAYMENT_Email | 121        |
      | 5701_SPSP_LOAN_REPAYMENT_SB    | 121        |
      | 5702_SPSP_LOAN_REPAYMENT_Email | 141        |

  @TravelInsurance @TravelInsurance_Base_TestData_5715_Sanity @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Create test data for Base test cases for Sanity
    Given load data from "Smoke" excel sheet
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
    When write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write Event Date "<Event_Dt>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases            | Event_Dt |
      | 5715_Travel Insurance | 9        |

  @D2DPaymentMethods @D2DPaymentMethods_Base_TestData_5725_Sanity @5725 @EMAIL @RS22056 @issues
  Scenario Outline: D2DPaymentMethods_RS22056_5725_EMAIL Create test data for Base test cases
    Given load data from "Smoke" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write customer open date excluding today "<cust_opnd_dt>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    When write account odt excluding today "<Acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts

    Examples:
      | Test cases               | cust_opnd_dt | Account_cnt | Acct_odt |
      | 5725_D2D Payment Methods | 9            | 2           | 14       |

  @D2DACQCrossSell_Sanity @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for sanity
    Given load data from "D2DAcqCrossSell" excel sheet
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
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                        |
      | 5747_EML_D2DAcquisition_CrossSell |

  @D2DACQCrossSell_Sanity  @5748 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5748_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
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
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                        | Event_Date |
      | 5748_EML_D2DAcquisition_CrossSell | 1          |

  @D2DACQCrossSell_Sanity @D2DAcqCrossSell_SB_Positive_TestData  @5747 @SB @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_SB Create test data for positive test cases
    Given load data from "D2DAcqCrossSell_SB" excel sheet
    #CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write "MLS_ADDED_AT_DT" for "<V_MLS_DT>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When write "MARRIAGE_LIFE_EVENT_DT " for "<V_MARRIAGE_DT>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When write "GRADUATION_LIFE_EVENT_DT " for "<V_GRADUATION_DT>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    #ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write "CRD_RENEWAL_DT " for "<V_CRD_RENEWAL_DT>" into "ACCT_DIM" sheet for "<Test cases>" for increment in days
    When write "ACCT_ODT" for "<V_ACCT_ODT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    And write Mortgage Funding Date "<V_MORT_FNDNG_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write "MAT_DT" for "<V_MAT_DT>" into "ACCT_DIM" sheet for "<Test cases>" for increment in days
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    #CUST_ACCT_RLTNP_DIM
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    #CUST_INSIGHTS
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                      | Acct_Cnt | Insight_Cnt | V_CRD_RENEWAL_DT | V_ACCT_ODT | V_MORT_FNDNG_DT | V_MAT_DT | V_MLS_DT | V_MARRIAGE_DT | V_GRADUATION_DT |
      | 5747_SB_D2DAcuisition_CrossSell | 1        | 0           | NULL             | NULL       | NULL            | NULL     | NULL     | NULL          | NULL            |

  @RSP_RIF_Conversion_Sanity @RSP_RIF_Conversion_SB_5723_Positive_TestData_Sanity  @5723 @SB @ET02003
  Scenario Outline: RSP RIF Conversion 5723_SB Create test data for positive test cases
    Given load data from "RSP_RIF_Conv" excel sheet
    #CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write birth date "<DoB>" and "<DD>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    #ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    #CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases      | Acct_Cnt | DoB | DD |
      | 5723_SB_BASE_01 | 2        | 1   | 01 |

  @RSP_RIF_Conversion_Sanity @RSP_RIF_Conversion_SB_5724_Positive_TestData_Sanity  @5724 @SB @ET02003
  Scenario Outline: RSP RIF Conversion 5724_SB Create test data for positive test cases
    Given load data from "RSP_RIF_Conv" excel sheet
    #CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write birth date "<DoB>" and "<DD>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    #ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    #CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases      | Acct_Cnt | DoB | DD |
      | 5724_SB_BASE_01 | 1        | 1   | 01 |

  @RSP_RIF_Conversion_Sanity @RSP_RIF_Conversion_MAT_5723_Positive_TestData_Sanity  @5723 @MAT @ET02003
  Scenario Outline: RSP RIF Conversion 5723_MAT Create test data for positive test cases
    Given load data from "RSP_RIF_Conv_MAT" excel sheet
    #CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write birth date "<DoB>" and "<DD>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    #ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    #CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases       | Acct_Cnt | DoB | DD |
      | 5723_MAT_BASE_01 | 2        | 1   | 01 |


  @RSP_RIF_Conversion_Sanity @RSP_RIF_Conversion_MAT_5724_Positive_TestData_Sanity  @5724 @MAT @ET02003
  Scenario Outline: RSP RIF Conversion 5724_MAT Create test data for positive test cases
    Given load data from "RSP_RIF_Conv_MAT" excel sheet
    #CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write birth date "<DoB>" and "<DD>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    #ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    #CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases       | Acct_Cnt | DoB | DD |
      | 5724_MAT_BASE_01 | 1        | 1   | 01 |


  @ULOCInsurance_Sanity @5761_Positive_Optima_Base
  Scenario Outline: ULOC Insurance_RS22065_5761_OPTIMA Create test data "<Test cases>" for base scenarios
    Given load data from "ULOCInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write "ACCT_ODT" for "<V_ACCT_ODT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Acct_RLTNP_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases              | Acct_Cnt | Insight_Cnt | V_ACCT_ODT |
      | 5761_OPM_BASE_01_Seg_04 | 1        | 0           | 5          |
      | 5761_OPM_BASE_02_Seg_05 | 1        | 1           | 190        |

  @ULOCInsurance_Sanity @5762_Positive_Optima_Base
  Scenario Outline: ULOC Insurance_RS22065_5762_OPTIMA Create test data "<Test cases>" for base scenarios
    Given load data from "ULOCInsurance" excel sheet
    # Cust_Dim
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    # Acct_Dim
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write "ACCT_ODT" for "<V_ACCT_ODT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Acct_RLTNP_Dim
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    # Cust_Insights
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    When write "EVENT_DATE" for "<V_Event_Date>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases              | Acct_Cnt | Insight_Cnt | V_ACCT_ODT | V_Event_Date |
      | 5762_OPM_BASE_01_Seg_01 | 1        | 1           | 55         | 1            |


  @ULOC_Insurance_EML @ULOC_Insurance_EML_Base_TestData_5761_Sanity @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Create test data for Base Line test cases
    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val |
      | 5761_EML_BASE_Creative_01 | 1        | 0           | 90           |
      | 5761_EML_BASE_Creative_02 | 1        | 0           | 90           |
      | 5761_EML_BASE_Creative_03 | 1        | 0           | 20           |
      | 5761_EML_BASE_Creative_04 | 1        | 0           | 20           |



  @ULOCInsurance_Sanity @ULOCInsurance_Email_Positive_TestData @Workstream-5 @5762 @EMAIL @RS22065
  Scenario Outline: PAULOCInsurance_RS22065_5762_EMAIL Create test data for positive test cases
    Given load data from "ULOCIns" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<Acct_Odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write "EVENT_DATE" for "<event_dt>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases              | Acct_Odt | event_dt |
      | 5762_EML_ULOC_Insurance | 51       | 1        |

  @InsuranceClaimReminder_Sanity  @InsuranceClaimReminder_5784 @RS22075 @5784
  Scenario Outline: InsuranceClaimReminder_RS22075_5784_EMAIL Create test data for Base test cases
    Given load data from "InsuranceClaimReminder_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And write Credit Card Number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write "INSUR_STAT_LAST_CHNG_DT" for "<INSUR_STAT_LAST_CHNG_DT_Val>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" for decrement in days
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases       | INSUR_STAT_LAST_CHNG_DT_Val |
      | 5784_EML_BASE_01 | NULL                        |

  @ODPAcquisition_CCFile_5787_positive_Sanity
  Scenario Outline: ODP Acquisition_OP13028_5787_CCFile Create test data for positive testcases
    Given load data from "ODPAcq_CCFILE" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                     |
      | 5787_CCFile_ODPAcquisition_PreApprovedCustomer |
      | 5787_CCFile_ODPAcquisition_PayrollCustomer     |


  @ODPAcquisition_Email_5787_positive_Sanity
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Create test data for positive testcases
    Given load data from "ODPAcq_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write "PA_TU_FILE_DT" for "15" into "CUST_DIM" sheet for "<Test cases>" for previous month
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                  |
      | 5787_EML_ODPAcquisition_PreApprovedCustomer |
      | 5787_EML_ODPAcquisition_PayrollCustomer     |

  @SSM_Always_On_5795_5796_Sanity @EMAIL @SSM_Always_On_5795_BASE_TESTDATA @RS22071 @5795 @Smoke_TestDataCreation1
  Scenario Outline: SSM_Always_On_RS22071_5795_EMAIL Create test data for Base test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    And write Different Event Dates "<Event_Duration>" and "<Event_Duration_2>" values into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases       | Acct_Cnt | Insight_Cnt | Event_Duration | Event_Duration_2 |
      | 5795_EML_BASE_01 | 1        | 1           | 5              | NULL             |
      | 5796_EML_BASE_01 | 1        | 1           | 46             | NULL             |

  @Proactive_Dormancy_5805_Sanity @EMAIL @Proactive_Dormancy_5805_BASE_TESTDATA @ZZ22087 @5805 @Smoke_TestDataCreation1
  Scenario Outline: Proactive_Dormancy_ZZ22087_5805_FFT Create test data for Base test cases
    Given load data from "ProactiveDormancy_CC_FFT" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "1" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "1" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "1" accounts
    And write Event Date "<Event_Duration>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    And write account number last "9" digits into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "1" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "1" accounts

    Examples:
      | Test cases                         | Event_Duration |
      | 5805_FFT_ProactiveDormancy_BASE_01 | -5             |

  @MissingAndInvalidEmail_Sanity @InvalidEmail_Base_TestData_FFT @5778 @InvalidEMAIL_FFT @RS22069 @Sanity_FFT
  Scenario Outline: Invalid Email_RS22069_5778_FFT Create test data for Base test cases
    Given load data from "InvalidEmail_FFT" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
#    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table


    Examples:
      | Test cases                | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5778_FFT_BASE_Creative_01 | 120              | 120              |

  @MissingAndInvalidEmail_Sanity @MissingEmail_Base_TestData_FFT @5779 @MissingEMAIL_FFT @RS22069 @Sanity_FFT
  Scenario Outline: Missing Email_RS22069_5779_FFT Create test data for Base test cases
    Given load data from "MissingEmail_FFT" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:

      | Test cases                | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5779_FFT_BASE_Creative_01 | 120              | 120              |


  @D2DEngagementWelcome_Add_Sanity @D2DEngagementWelcomeNTB_Base_TestData @Workstream-4 @5821 @EMAIL @RS17103 @Smoke_TestDataCreation1
  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Create test data for Base test cases
    Given load data from "WelcomeNTB" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_Open_Date>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    And write account odt excluding today "<ACCT_OPENED_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases       | CUST_Open_Date | ACCT_OPENED_DT |
      | 5821_EML_BASE_01 | NULL             | 11              |

  @NTB_AdvicePlus_5822 @EMAIL @NTB_AdvicePlus_5822_BASE_TESTDATA_Sanity @RS22111 @5822 @Smoke_TestDataCreation1
  Scenario Outline: NTB_AdvicePlus_RS22111_5822_EMAIL Create test data for Base test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write Generic Date in "CUST_OPND_DT" field with "<CUST_Open_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When write Generic Date in "ARRV_DT" field with "<Arriving_Date>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write Generic Date in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    And write account odt "<ACCT_OPENED_DT>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases       | Acct_Cnt | Arriving_Date | CUST_Open_Date | ACCT_OPENED_DT |
      | 5822_EML_BASE_01 | 1        | NULL          | 90             | 55             |
      | 5822_EML_BASE_02 | 1        | 45            | 90             | 55             |
      | 5822_EML_BASE_03 | 1        | NULL          | 90             | 55             |
      | 5822_EML_BASE_04 | 1        | NULL          | 90             | 55             |
      | 5822_EML_BASE_05 | 1        | NULL          | 90             | 55             |
      | 5822_EML_BASE_06 | 1        | 45            | 90             | 55             |


  @MPSAWelcomeBonus @MPSAWelcomeBonus_Positive_Base_TestData_Sanity @5839 @MPSAWelcomeBonusEMAIL @RS22116 @Smoke_TestDataCreation1
  Scenario Outline: MPSA Welcome Bonus_RS22116_5839_EMAIL Create test data for Base test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<acct_odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases       | acct_odt |
      | 5839_EML_BASE_01 | 20       |
      | 5839_EML_BASE_02 | 20       |
      | 5839_EML_BASE_03 | 20       |

  @ODPAcquisition_SF_5787_positive_Sanity @Smoke_TestDataCreation1
  Scenario Outline: ODP Acquisition_OP13028_5787_SF Create test data for positive testcases
    Given load data from "ODPAcq_SF" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When write "PA_TU_FILE_DT" for "15" into "CUST_DIM" sheet for "<Test cases>" for previous month
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write "MAT_DT" column value with increment of "<months>"  into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                             | months |
      | 5787_BASE SCENARIO_PreapprovedCustomer | 5      |
      | 5787_BASE SCENARIO_PayrollCustomer     | 5      |

  @AdviceCheckInLeadsSF_Base_TestData_6003_Sanity
  Scenario Outline: Advice Check in Leads 6003 RS23041 SF Create test data for Base test cases

    Given load data from "Active_Leads" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                  | Acct_Cnt | ADVISOR_LAST_CONTACT_DT_Val |
      | 6003_SF_Base_Creative_1_REL1_NoAdvicePlus   | 1        | 190                         |
      | 6003_SF_Base_Creative_2_CVI1-2_NoAdvicePlus | 1        | 190                         |
      | 6003_SF_Base_Creative_3_Mid_Career          | 1        | 190                         |


  @LongTermInvestingAdviceSF @LongTermInvestingAdviceSF_Base_TestData_6065_Sanity @6065 @SFM @RS23078
  Scenario Outline: LongTermInvestingAdvice 6065 RS23078 SF Create test data for Base Line for positive test cases

    Given load data from "LongTermAdvice" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer information details in "CUST_DIM" table
    # ACCT_DIM
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
  # CUST_ACCT_RLTNP_DIM
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
      # CUST_INSIGHTS
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases              | Acct_Cnt | ADVISOR_LAST_CONTACT_DT_Val |
      | 6065_SF_Base_Creative_1 | 1        | 376                         |


  @LongTermInvestingAdvice_MAT_Base_TestData_6065_Sanity
  Scenario Outline: LongTermInvestingAdvice 6065 RS23078 MAT Create test data for Base Line test cases
    Given load data from "LongTermAdvice_MAT" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "EVENT_DATE" field with "<EVENT_DATE_Val>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    # CUST_EV_EB
    When write cid into "CUST_EV_EB" sheet for "<Test cases>"  having "<CUST_EV_EB_Cnt>" accounts
    Then write Timestamp in "INSRT_PROCESS_TMSTMP" field into "CUST_EV_EB" sheet for "<Test cases>" having "<CUST_EV_EB_Cnt>" accounts
    Then insert customer details in "CUST_EV_EB" table having "<CUST_EV_EB_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases               | Acct_Cnt | Insight_Cnt | CUST_EV_EB_Cnt | EXT_TABLE_Cnt | ADVISOR_LAST_CONTACT_DT_Val | EVENT_DATE_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6065_MAT_Base_Creative_1 | 1        | 1           | 1              | 0             | 376                         | 45             | NULL                 | NULL               |




  @MortgageAcquisitionSFM_Sanity @MortgageAcquisitionSFM_Positive_TestData_5021 @5021 @SFM @RS19029 @LeadType1 @LeadType3 @LeadType4 @Smoke_TestDataCreation1
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SFM Create test data for positive test cases

    Given load data from "MortAcq_SFM" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When write "SOL_LAST_LOGIN_DT" for "<Sol_Login>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "MLS_ADDED_AT_DT" for "<MLS_DT>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "CUST_OPND_DT" for "<Cust_Open_Dt>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table

    Examples:
      | Testcases                    | Sol_Login | MLS_DT | Cust_Open_Dt |
      | 5021_SFM_BASE_01_LeadType_01 | 55        | 15     | 365          |
      | 5021_SFM_BASE_03_LeadType_03 | 55        | NULL   | 4100         |
      | 5021_SFM_BASE_04_LeadType_04 | NULL      | NULL   | 4100         |

  @MortgageAcquisitionSFM_Sanity @MortgageAcquisitionSFM_Positive_Neative_TestData_5021_LeadType2 @5021 @SFM @RS19029 @LeadType2 @Smoke_TestDataCreation1
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SFM Create test data for LeadType2 positive test cases
    Given load data from "MortAcq_SFM" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When write "SOL_LAST_LOGIN_DT" for "<Sol_Login>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "MLS_ADDED_AT_DT" for "<MLS_DT>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When write "CUST_OPND_DT" for "<Cust_Open_Dt>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write cid in the "CLICKSTREAM" sheet for "<Testcases>"
    When read clickstrem information details from excel sheet "CLICKSTREAM" for "<Testcases>"
    Then insert clickstream information details in "CLICKSTREAM" table

    Examples:
      | Testcases                    | Sol_Login | MLS_DT | Cust_Open_Dt |
      | 5021_SFM_BASE_02_LeadType_02 | 130       | NULL   | 1200         |

  @TFSAFundRemainder_Email_1111
  Scenario Outline: TFSA Fund_RS21092_5927_EMAIL Create test data for 1111
    Given load data from "TFSAFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write "ACCT_ODT" for "<Acct_Odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases   | Acct_Odt |
      | 5927_Base_01 | 10       |
      | 5927_Base_02 | 72       |

  @RRSPFundRemainder_Email_1111
  Scenario Outline: RRSPFundRemainder_RS21094_5502_EMAIL Create test data for 1111
    Given load data from "RRSPFund" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write "ACCT_ODT" for "<Acct_Odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases   | Acct_Odt |
      | 5955_BASE_01 | 10       |
      | 5955_BASE_02 | 70       |

  @MissingAndInvalidEmail @InvalidEmail_Base_Sanity_TestData @5778 @InvalidEMAIL_SOL @RS22069
  Scenario Outline: Invalid Email_RS22069_5778_SOL Create test data for Base test cases
    Given load data from "InvalidEmail_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table


    Examples:
      | Test cases                | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5778_SOL_BASE_Creative_01 | 60               | 60               |

  @MissingAndInvalidEmail @InvalidEmail_Base_Sanity_TestData @5779 @MissingEMAIL_SOL @RS22069
  Scenario Outline: Missing Email_RS22069_5779_SOL Create test data for Base test cases
    Given load data from "MissingEmail_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table


    Examples:
      | Test cases       | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5779_SOL_BASE_01 | 60               | 60               |

  @ULOC_CLI @ULOC_CLI_CIE6001_Base_Sanity_TestData_SOL @6001 @ULOC_CLI_SOL @RS23043
  Scenario Outline: ULOC_CLI_RS23043_6001_SOL Create test data for Base test cases
    Given load data from "ULOC_CLI_SOL" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "CLI_OFR_ST_DT" field with "<CLI_OFR_ST_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "CLI_OFR_EXP_DT" field with "<CLI_OFR_EXP_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | CLI_OFR_ST_DT_Val | CLI_OFR_EXP_DT_Val |
      | 6001_SOL_BASE_Creative_01 | 2        | 3                 | -40                |
      | 6001_SOL_BASE_Creative_02 | 2        | 3                 | -40                |

  @ULOC_CLI @ULOC_CLI_CIE6002_Base_Sanity_TestData_SOL @6002 @ULOC_CLI_SOL @RS23043
  Scenario Outline: ULOC_CLI_RS23043_6002_SOL Create test data for Base test cases
    Given load data from "ULOC_CLI_SOL_Ofr" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "CLI_OFR_ST_DT" field with "<CLI_OFR_ST_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "CLI_OFR_EXP_DT" field with "<CLI_OFR_EXP_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | CLI_OFR_ST_DT_Val | CLI_OFR_EXP_DT_Val |
      | 6002_SOL_BASE_Creative_01 | 2        | 3                 | -40                |
      | 6002_SOL_BASE_Creative_02 | 2        | 3                 | -40                |


  @D2DEarlyEngagementiTradeCrossSell @D2DEarlyEngagementiTradeCrossSell_Base_Sanity_TestData @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Create test data for Base test cases
    Given load data from "D2Ditrade_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write "ACCT_ODT" for "<ACCT_OPENED_DT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases       | ACCT_OPENED_DT |
      | 5971_EML_BASE_01 | 29             |
      | 5971_EML_BASE_02 | 29             |
      | 5971_EML_BASE_03 | 29             |

    # Release : Feb 16, 2023
  @VisaDebitInterac @VisaDebitInterac_Base_TestData_Sanity @5970 @VisaDebitInterac_EML @RS21132
  Scenario Outline: VisaDebitInterac_RS21132_5970_EML Create test data for Base test cases
    Given load data from "VisaDebitInterac" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<Account_Open_Date>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CASH_BR_WITHDRAWAL_TMSTMP" field with "<CASH_BR_WITHDRAWAL_TMSTMP>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CASH_ABM_WITHDRAWAL_TMSTMP" field with "<CASH_ABM_WITHDRAWAL_TMSTMP>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "LAST_FLASH_TXN_DT" field with "<FLASH_TXN_DT>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_VD_VPOS_TXN_TMSTMP" field with "<VD_VPOS_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_VD_OPOS_TXN_TMSTMP" field with "<VD_OPOS_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CHIP_TXN_TMSTMP" field with "<CHIP_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Account_Open_Date | CASH_BR_WITHDRAWAL_TMSTMP | CASH_ABM_WITHDRAWAL_TMSTMP | FLASH_TXN_DT | VD_VPOS_TXN_TMSTMP | VD_OPOS_TXN_TMSTMP | CHIP_TXN_TMSTMP |
      | 5970_EML_BASE_Creative_01 | 2        | 70                | 5                         | NULL                       | NULL,100     | NULL,100           | NULL,100           | NULL,100        |
      | 5970_EML_BASE_Creative_02 | 2        | 70                | NULL                      | NULL                       | NULL,100     | NULL,100           | NULL,100           | NULL,5          |
      | 5970_EML_BASE_Creative_03 | 2        | 70                | NULL                      | NULL                       | NULL,100     | NULL,5             | NULL,5             | NULL            |
      | 5970_EML_BASE_Creative_04 | 2        | 70                | NULL                      | NULL                       | NULL,5       | NULL,100           | NULL,100           | NULL            |


  @D2D_Early_Engagement_OfferRemainder_6050_EML_Base_Sanity  @23073_Base_Line_TestDataLoad_Sanity @6050 @EML @RS23073
  Scenario Outline: D2D Early Engagement - Offer Reminder in CIE6040 RS23073 EML Create test data for Loading data for D2D Early Engagement Offer Remainder for Base test cases

    Given load data from "D2D_EarlyEngagement" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

      # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" account Insights
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts Insights

    Examples:
      | Test cases       | Acct_Cnt | ACCT_ODT_Val | Insight_Cnt |
      | 6050_EML_BASE_01 | 1        | 45           | 3           |

  @ULOC_CLI @ULOC_CLI_CIE6090_Base_TestData_EML_Sanity @6090 @ULOC_CLI_EML @RS23043
  Scenario Outline: ULOC_CLI_RS23043_6090_EML Create test data for Base test cases
    Given load data from "ULOC_CLI_6090" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "CLI_OFR_ST_DT" field with "<CLI_OFR_ST_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "CLI_OFR_EXP_DT" field with "<CLI_OFR_EXP_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | CLI_OFR_ST_DT_Val | CLI_OFR_EXP_DT_Val |
      | 6090_EML_BASE_Creative_01 | 2        | 3                 | -40                |
      | 6090_EML_BASE_Creative_02 | 2        | 3                 | -40                |

  @ULOC_CLI @ULOC_CLI_CIE6090_Base_TestData_SOL_Sanity @6090 @ULOC_CLI_SOL @RS23043
  Scenario Outline: ULOC_CLI_RS23043_6090_SOL Create test data for Base test cases
    Given load data from "ULOC_CLI_SOL_6090" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "CLI_OFR_ST_DT" field with "<CLI_OFR_ST_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "CLI_OFR_EXP_DT" field with "<CLI_OFR_EXP_DT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | CLI_OFR_ST_DT_Val | CLI_OFR_EXP_DT_Val |
      | 6090_SOL_BASE_Creative_01 | 2        | 3                 | -40                |
      | 6090_SOL_BASE_Creative_02 | 2        | 3                 | -40                |

  @International_Money_Transfer_EML_Base_TestData_6087_Sanity
  Scenario Outline: International Money Transfer 6087 RS23094 EML Create test data for Base Line test cases
    Given load data from "InternationalMoneyTransfer_EML" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "EVENT_DATE" field with "<EVENT_DATE_Val>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Insight_Cnt | EVENT_DATE_Val |
      | 6087_EML_BASE_Creative_01 | 1        | 1           | -9             |
      | 6087_EML_BASE_Creative_02 | 1        | 1           | -9             |
      | 6087_EML_BASE_Creative_03 | 1        | 1           | -9             |
      | 6087_EML_BASE_Creative_04 | 1        | 1           | -9             |
      | 6087_EML_BASE_Creative_05 | 1        | 1           | -9             |


  @Accidental_Death_Insurance_EML_Base_TestData_6110_Sanity
  Scenario Outline: Accidental Death Insurance 6110 RS23100 EML Create test data for Base Line test cases
    Given load data from "ADI_EML_6110" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases           | Acct_Cnt | EXT_TABLE_Cnt |
      | 6110_EML_Base_Seg_01 | 1        | 1             |


 @AccidentalDeathInsurance_OPM_Base_TestData_6110_Sanity
  Scenario Outline: Accidental Death Insurance 6110 RS23100 OPM Create test data for Base Line test cases
    Given load data from "ADI_OPM_6110" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases           | Acct_Cnt | EXT_TABLE_Cnt |
      | 6110_OPM_Base_Seg_01 | 1        | 1             |

  @Itrade_Xsell_Always_on_EML_Base_TestData_6109_Sanity
  Scenario Outline: Itrade Xsell Always on 6109 RS23101 EML Create test data for Base Line test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "CUST_OPND_DT" field with "<CUST_OPND_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Insight_Cnt | CUST_OPND_DT_Val |ACCT_ODT_Val|
      | 6109_EML_BASE_Creative_01 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_02 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_03 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_04 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_05 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_06 | 1        | 1           | NULL             | NULL     |
      | 6109_EML_BASE_Creative_07 | 1        | 1           | NULL             | NULL     |

  @EMOB_Notification_EML_Base_TestData_6122_Sanity
  Scenario Outline: EMOB Notification 6122 VS16008 EML Create test data for Base Line test cases
    Given load data from "EMOB_Notification_6122" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts


    Examples:
      | Test cases                | Acct_Cnt | ACCT_ODT_Val |
      | 6122_EML_BASE_Creative_01 | 1        | 9            |

  @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_Base_TestData_6172_Sanity
  Scenario Outline: Near Primacy D2D Bundle Xsell Anniversary Offer 6127 RS23146 EML Create test data for Base Line test cases
    Given load data from "Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_6172" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    And write Different Generic Dates in "CUST_OPND_DT" field with "<CUST_OPND_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "CUST_OPND_DT" field with "<CUST_OPND_DT_Val>" duration from current year into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                      | Acct_Cnt | CUST_OPND_DT_Val | ACCT_ODT_Val | ARRV_DT_Val |
      | 6172_EML_BASE_Creative_01_or_02 | 1        | 1                | 100          | NULL        |

  @Xsell_Sneak_Peak_Offer_COS_Base_TestData_6185_Sanity
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Create test data for Base Line test cases for COS Channel
    Given load data from "XsellSneakPeak_SF_6185_6186_6187_6188" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table

    Examples:
      | Test cases               | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6185_SF_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6186_SF_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6187_SF_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6188_SF_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |

  @Xsell_Sneak_Peak_Offer_COS_Base_TestData_6190_Sanity
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Create test data for Base Line test cases for COS Channel
    Given load data from "XsellSneakPeak_SF_6190_6191_6192_6193" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table

    Examples:
      | Test cases               | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6190_SF_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6191_SF_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6192_SF_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6193_SF_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |

  @Xsell_Sneak_Peak_Offer_DIA_Base_TestData_6185_Sanity
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Create test data for Base Line test cases for DIA Channel
    Given load data from "XsellSneakPeak_DIA_6185_6186_6187_6188" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table


    Examples:
      | Test cases                | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6185_DIA_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6186_DIA_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6187_DIA_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6188_DIA_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |

  @Xsell_Sneak_Peak_Offer_EML_Base_TestData_6185_Sanity
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Create test data for Base Line test cases for EML Channel
    Given load data from "XsellSneakPeak_EML_6185_6186_6187_6188" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
#    When write startdate"<PREAPPROVEDSTARTDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
#    When write enddate"<PREAPPROVEDENDDATE>" into "PA_CCUL_Customer" PACC sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table


    Examples:
      | Test cases                | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6185_EML_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6186_EML_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6187_EML_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6188_EML_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |

  @Xsell_Sneak_Peak_Offer_PAL_Base_TestData_6190_Sanity
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 61890 RS23147 Create test data for Base Line test cases for PAL Channel
    Given load data from "XsellSneakPeak_PAL_6190_6191_6192_6193" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table


    Examples:
      | Test cases                | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6190_PAL_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6191_PAL_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6192_PAL_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6193_PAL_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |

  @Xsell_Sneak_Peak_Offer_PAL_Base_TestData_6185_Sanity
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Create test data for Base Line test cases for PAL Channel
    Given load data from "XsellSneakPeak_PAL_6185_6186_6187_6188" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table


    Examples:
      | Test cases                | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6185_PAL_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6186_PAL_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6187_PAL_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6188_PAL_BASE_Creative_01 | 1        | 1             | NULL        | 100          | 2                    | -2                 |

  @Xsell_Sneak_Peak_Offer_SOL_Base_TestData_6185_Sanity
  Scenario Outline: Near Primacy D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Create test data for Base Line test cases for SOL Channel
    Given load data from "XsellSneakPeak_SOL_6185_6186_6187_6188" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

#    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table


    Examples:
      | Test cases                | Acct_Cnt | EXT_TABLE_Cnt | ARRV_DT_Val | ACCT_ODT_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6185_SOL_BASE_Creative_01 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6186_SOL_BASE_Creative_01 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6187_SOL_BASE_Creative_01 | 2        | 1             | NULL        | 100          | 2                    | -2                 |
      | 6188_SOL_BASE_Creative_01 | 2        | 1             | NULL        | 100          | 2                    | -2                 |

  @Xsell_Sneak_Reminder_EML_Base_TestData_6214_Sanity
  Scenario Outline: Near Primacy D2D Bundle Xsell Reminder Offer 6214 RS23148 Create test data for Base Line test cases for EML Channel
    Given load data from "XsellReminder_EML_6214" excel sheet
    # CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<ARRV_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
#    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # PA_CCUL_CUSTOMER
    Given write customer id into "PA_CCUL_CUSTOMER" sheet for "<Test cases>"
    When read customer details from excel sheet "PA_CCUL_CUSTOMER" for "<Test cases>"
    Then insert customer details in "PA_CCUL_CUSTOMER" table

    Examples:
      | Test cases           | Acct_Cnt | ARRV_DT_Val | ACCT_ODT_Val |
      | 6214_EML_BASE_Seg_01 | 3        | NULL        | 100,105      |
      | 6214_EML_BASE_Seg_02 | 2        | NULL        | 100          |
      | 6214_EML_BASE_Seg_03 | 1        | NULL        | 100          |


  @SupplementaryCardCrossSell_EML_Base_TestData_5468_Sanity
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Create test data for Base Line test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet

#    CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<MOB_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<SOL_LAST_LOGIN_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#   ACCT_DIM
    And write Different Generic Dates in "ACCT_ODT" field with "<Acct_Odt_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    #CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

     # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<EXT_TABLE_Cnt>" records

    Examples:
      | Test cases                    | Acct_Cnt | Insight_Cnt | EXT_TABLE_Cnt | SOL_LAST_LOGIN_Val | MOB_LAST_LOGIN_Val | Acct_Odt_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 5468_BASE_Creative_01_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_02_Trig_02 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_03_Trig_04 | 1        | 0           | 1             | 4                  | NULL               | 95           | 2                    | -2                 |
      | 5468_BASE_Creative_04_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_05_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_06_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_07_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_08_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |
      | 5468_BASE_Creative_09_Trig_01 | 1        | 1           | 0             | 4                  | NULL               | 95           | NULL                 | NULL               |

  @SSI_Investment_Funds_EML_Base_TestData_6233_Sanity
  Scenario Outline: Scotia Smart Investor - Fund Account 6233 RS23174 Create test data for Base Line test cases for EML Channel
    Given load data from "SSIFunds_EML_6233" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases           | Acct_Cnt | ACCT_ODT_Val |
      | 6233_EML_BASE_Seg_01 | 1        | 8            |

  @SSI_PACsetup_Funds_EML_Base_TestData_6234_Sanity
  Scenario Outline: SSI PACsetup 6234 RS23175 Create test data for Base Line test cases for EML Channel
    Given load data from "SSIPACsetup_EML_6234" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

#     ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases           | Acct_Cnt | ACCT_ODT_Val |
      | 6234_EML_BASE_Seg_01 | 1        | 25           |