package com.quantum.steps;

import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.qmetry.qaf.automation.ui.WebDriverTestBase;
import com.quantum.java.pages.ExtentReportHelper;
import com.quantum.utils.LogHelper;
import cucumber.api.java.en.Then;

/**
 * Sample Step Definition for OCR
 */
@QAFTestStepProvider
public class OCRStepDef {

    @Then("^get the text from \"([^\"]*)\"$")
    public void getTextFromImage(String url) {
        new WebDriverTestBase().getDriver().get(url);
        //Get text from the latest screenprint captured by the framework with the default settings
        LogHelper.logger.info(OCRUtility.getTextFromLatestScreenshot());

        //Get text from the given image - set required DPI and language
        ExtentReportHelper reportHelper = new ExtentReportHelper();
        String screenshot = reportHelper.getScreenshot("ScreenShot");
        LogHelper.logger.info(OCRUtility.getTextFromImage(screenshot, "300", "eng"));
    }
}
