package com.quantum.webpages;


import com.quantum.baseclass.BasePage;
import com.quantum.utility.LoggingUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

public class IHbyCustomer extends BasePage {

    @FindBy(xpath = ".//a[contains(text(),'pySubjectID ')]")
    private WebElement subjectId;

    @FindBy(xpath = ".//a[contains(text(),' Period ')]")
    private WebElement period;

    @FindBy(xpath = ".//input[@role='combobox']")
    private WebElement pySubjectIdEditField;

    @FindBy(xpath = ".//div[text()='Apply changes']")
    private WebElement applyChanges;

    @FindBy(xpath = ".//table[@id='bodyTbl_right' and @prim_page='pyReportContentPage']/tbody")
    private WebElement ihTableBody;

    @FindBy(xpath = ".//div[contains(text(),'Actions')]/child::i")
    private WebElement actions;

    @FindBy(xpath = ".//span[text()='Refresh']")
    private WebElement refresh;

    @FindBy(xpath = ".//div[contains(text(),'Displaying')]")
    private WebElement noOfRecords;


    public IHbyCustomer() {
        super();
        WebDriver webDriver = getWebDriver();
        PageFactory.initElements(webDriver, this);
        waitForPageLoad();
        waitForElementImplicit(30);
//        LoggingUtils.log("Navigated to Pega Designer Studio Screen");
    }

    static List<Map<String, String>> ihRecords = null;

    public static List<Map<String, String>> getIhRecords() {
        return ihRecords;
    }

    public static void setIhRecords(List<Map<String, String>> ihRecords) {
        IHbyCustomer.ihRecords = ihRecords;
    }

    public void clickOnSubjectId() throws InterruptedException, IOException {
        Set<String> browsers = getWindowHandles();
        for (String browser : browsers) {
            switchToChildWindowWithName(browser);
            String browserTitle = getWebDriver().getTitle();
            if (browserTitle.equals("IH by Customer")) {
                switchToChildWindowWithName(browser);
                click(subjectId, "Subject Id");
                switchToParentWindow();
            }
        }

    }

    public void clickOnPeriod() throws IOException {
        Set<String> browsers = getWindowHandles();
        for (String browser : browsers) {
            switchToChildWindowWithName(browser);
            String browserTitle = getWebDriver().getTitle();
            if (browserTitle.equals("IH by Customer")) {
                switchToChildWindowWithName(browser);
                click(period, "Period");
                switchToParentWindow();
            }
        }

    }

    public void clearPeriodValue() throws IOException {
        Set<String> browsers = getWindowHandles();
        for (String browser : browsers) {
            switchToChildWindowWithName(browser);
            String browserTitle = getWebDriver().getTitle();
            if (browserTitle.equals("IH by Customer")) {
                switchToChildWindowWithName(browser);
                pySubjectIdEditField.clear();
                switchToParentWindow();
            }
        }

    }


    public void enterSubjectIdField(String cid) throws InterruptedException {
        Set<String> browsers = getWindowHandles();
        for (String browser : browsers) {
            switchToChildWindowWithName(browser);
            String browserTitle = getWebDriver().getTitle();
            if (browserTitle.equals("IH by Customer")) {
                switchToChildWindowWithName(browser);
                type(pySubjectIdEditField, cid, "PySubjectId ('CID')");
                switchToParentWindow();
            }
        }

    }

    public void clickOnApplyChanges() throws InterruptedException, IOException {
        Set<String> browsers = getWindowHandles();
        for (String browser : browsers) {
            switchToChildWindowWithName(browser);
            String browserTitle = getWebDriver().getTitle();
            if (browserTitle.equals("IH by Customer")) {
                switchToChildWindowWithName(browser);
                click(applyChanges, "Apply Changes");
                switchToParentWindow();
            }
        }

    }

    public void getIHTableData() throws InterruptedException {
        Set<String> browsers = getWindowHandles();
        ihRecords = null;
        for (String browser : browsers) {
            switchToChildWindowWithName(browser);
            String browserTitle = getWebDriver().getTitle();
            if (browserTitle.equals("IH by Customer")) {
                switchToChildWindowWithName(browser);
                maximizeWindow();
                addExplicitWait(ihTableBody, "visibility", 30);
                delay(5000);
                List<WebElement> ihTableRows = getDriver().findElements(By.xpath
                        (".//table[@id='bodyTbl_right' and @prim_page='pyReportContentPage']/tbody/tr"));
                List<WebElement> ihTableColumns = getDriver().findElements(By.xpath
                        (".//table[@id='bodyTbl_right' and @prim_page='pyReportContentPage']/tbody/tr[1]/th"));
                if (!noOfRecords.getText().equals("Displaying 0 records")) {
                    List<String> ihHeaders = new LinkedList<>();
                    List<String> ihHeadersValues = new LinkedList<>();
                    Map<String, String> ihRecord = null;
                    ihRecords = new LinkedList<>();
                    for (int rows = 1; rows <= ihTableRows.size(); rows++) {

                        for (int columns = 1; columns <= ihTableColumns.size(); columns++) {
                            if (rows == 1) {
                                WebElement tableHeaders = getDriver().findElement(By.xpath
                                        (".//table[@id='bodyTbl_right' and @prim_page='pyReportContentPage']/tbody/" +
                                                "tr[" + rows + "]/th[" + columns + "]/div"));
                                ihHeaders.add(tableHeaders.getText());
                            } else {
                                ihRecord = new LinkedHashMap<>();
                                WebElement tableData = getDriver().findElement(By.xpath
                                        (".//table[@id='bodyTbl_right' and @prim_page='pyReportContentPage']/tbody/" +
                                                "tr[" + rows + "]/td[" + columns + "]/div"));
                                ihHeadersValues.add(tableData.getText());
                            }

                        }
                        if (ihHeadersValues.size() != 0) {
                            for (int i = 0; i < ihHeadersValues.size(); i++) {

                                ihRecord.put(ihHeaders.get(i), ihHeadersValues.get(i));
                            }
                            ihRecords.add(ihRecord);
                            ihHeadersValues.clear();
                        }
                    }
                }
                LoggingUtils.logSuccess((new File((String) Objects.requireNonNull(BasePage.getExtentReportHelper().
                                getScreenshot("Screenshot")))),
                        "***********IH Screenshot *********");
                switchToParentWindow();
            }
        }
        setIhRecords(ihRecords);

    }

    public boolean verifyOfferGenerated(String offerCode) {
        boolean flag = false;
        if (getIhRecords() == null) {
            flag = true;
        } else {
            int offer = getIhRecords().stream().filter(x -> x.get("Proposition name").equals(offerCode) && x.get("Control").equals("Y"))
                    .collect(Collectors.toList()).size();
            if (offer < 1) {
                flag = true;
            }
        }

        return flag;
    }

    public void refreshIh() throws IOException {
        Set<String> browsers = getWindowHandles();
        for (String browser : browsers) {
            switchToChildWindowWithName(browser);
            String browserTitle = getWebDriver().getTitle();
            if (browserTitle.equals("IH by Customer")) {
                click(refresh, "Refresh Button");
                switchToParentWindow();
            }
        }
    }

    public void clickOnActionsIHByCustomere() throws IOException {
        Set<String> browsers = getWindowHandles();
        for (String browser : browsers) {
            switchToChildWindowWithName(browser);
            String browserTitle = getWebDriver().getTitle();
            if (browserTitle.equals("IH by Customer")) {
                click(actions, "Action Button");
                switchToParentWindow();
            }
        }
    }

    public boolean verifyRecordsRemoved() {
        Set<String> browsers = getWindowHandles();
        boolean flag = false;
        for (String browser : browsers) {
            switchToChildWindowWithName(browser);
            String browserTitle = getWebDriver().getTitle();
            if (browserTitle.equals("IH by Customer")) {
                addExplicitWait(noOfRecords, "visibility", 30);
                if (noOfRecords.getText().equals("Displaying 0 records")) {
                    flag = true;
                    switchToParentWindow();
                }
            }
        }
        return flag;
    }

}
