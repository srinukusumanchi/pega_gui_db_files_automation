/* Copyright (C) Bank of Nova Scotia - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 */
package com.quantum.steps;

import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.qmetry.qaf.automation.ui.WebDriverTestBase;
import com.qmetry.qaf.automation.ui.webdriver.QAFExtendedWebElement;
import com.quantum.utils.LogHelper;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;

/**
 * BranchLocator.java
 * <p>
 * This class implements the step definitions for BranchLocator.feature
 *
 * @author ScotiaBank
 * @version 2.0
 * @since 2019-12-31
 */
@QAFTestStepProvider
public class BranchLocator {

    @Given("^the user navigates to \"([^\"]*)\"$")
    public void navigateToGivenUrl(String url) {
        new WebDriverTestBase().getDriver().get(url);
    }

    @When("^the user enters the postal code as \"([^\"]*)\"$")
    public void enterGivenPostCode(String postalCode) {
        QAFExtendedWebElement searchField = new QAFExtendedWebElement("id=search-locations");
        QAFExtendedWebElement wrapperContent = new QAFExtendedWebElement("id=wrapper");
        searchField.sendKeys(postalCode);
        wrapperContent.click();
    }

    @When("^clicks on the GO button$")
    public void clickGOButton() {
        QAFExtendedWebElement goBtn = new QAFExtendedWebElement("//a[@class='button large go-button hide-on-phone branch-go-button']//span[@class='js-intl'][contains(text(),'Go')]");
        goBtn.click();
    }

    @Then("^the locations near the given postal code is displayed$")
    public void validateLocationResultsReturned() {
        QAFExtendedWebElement locationResults = new QAFExtendedWebElement("//span[contains(text(),'Locations near you')]");
        if (locationResults.verifyVisible()) {
            LogHelper.logger.info("Locations returned for the given postal code.");
        } else {
            Assert.fail("Locations not returned!");
        }
    }

}