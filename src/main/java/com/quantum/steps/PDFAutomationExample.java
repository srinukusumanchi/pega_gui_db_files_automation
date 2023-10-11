package com.quantum.steps;

import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.qmetry.qaf.automation.ui.WebDriverTestBase;
import com.qmetry.qaf.automation.ui.util.QAFWebDriverWait;
import com.qmetry.qaf.automation.ui.webdriver.QAFExtendedWebElement;
import com.quantum.config.SystemProperties;
import com.quantum.utility.LoggingUtils;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;
import org.openqa.selenium.WebDriver;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;

/**
 * PDFAutomationExample.java
 * <p>
 * This class implements the step definitions for PDFAutomation.feature
 *
 * @author ScotiaBank
 * @version 2.0
 * @since 2020-07-14
 */

@QAFTestStepProvider
public class PDFAutomationExample {
    static WebDriver driver;
    @Given("^As user Navigate to the  Site \"([^\"]*)\"$")
    public static void asUserNavigateToThe(String url) {
        System.setProperty("http.proxyHost", SystemProperties.PROXYHOST);
        System.setProperty("http.proxyPort",  SystemProperties.PROXYPORT);
        driver = new WebDriverTestBase().getDriver();
        driver.get(url);
        LoggingUtils.log("Validate the pdf in the url" + driver.getCurrentUrl());
    }

    @And("^User click on PDF link and navigate to pdf contents$")
    public void userClickOnPDFLinkAndNavigateToPdfContents()  {
        // Write code here that turns the phrase above into concrete actions
        QAFExtendedWebElement pdflink = new QAFExtendedWebElement("xpath=//a[@href='pdf.pdf']");
        pdflink.waitForEnabled(3000);
        pdflink.click();
        pdflink.waitForNotPresent(3000);
        QAFWebDriverWait.getDefaultInterval();
        LoggingUtils.log("Click PDF link to read the pdf");
    }

    @When("^As user  select PDF  and read content from (\\d+) page$")
    public void asUserSelectPDFandReadContentfromFiles(int page) throws IOException {
        this.readTheDataFromPDFPAge(page);
    }

    @Then("^Read the  data from (\\d+) page  and dispaly in the report$")
    public void readTheDataFromPageAndDispalyInTheReport(int page) throws IOException {
        this.readTheDataFromPDFPAge(page);
    }


    public void readTheDataFromPDFPAge(int page) throws IOException {
        URL url = new URL(driver.getCurrentUrl());
        url.openConnection(Proxy.NO_PROXY);
        try (InputStream is = url.openStream()) {
            BufferedInputStream file = new BufferedInputStream(is);
            PDDocument pdDocument = PDDocument.load(file);
            PDFTextStripper  pdfTextStripper = new PDFTextStripper();
            pdfTextStripper.setStartPage(page);
            pdfTextStripper.setEndPage(page);
            LoggingUtils.log("Display the pdf test" + pdfTextStripper.getText(pdDocument));
        } catch (MalformedURLException e2) {
            LoggingUtils.log("URL string could not be parsed " + e2.getMessage());
        } catch (IOException e) {
            LoggingUtils.log("Unable to open PDF Parser. " + e.getMessage());
        }
    }
}
