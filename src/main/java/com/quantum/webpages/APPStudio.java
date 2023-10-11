package com.quantum.webpages;

import com.quantum.baseclass.BasePage;
import com.quantum.utility.LoggingUtils;
import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class APPStudio extends BasePage {

    static List<Map<String, String>> ddrRecords = null;
    private static String mailID = null;
    private static String waveExpiryDate = null;
    private static String waveStartDate = null;
    private static String campaignWaveNumber = null;
    private static String fileDeliveryDate = null;

    @FindBy(xpath = ".//a[text()='Data']")
    private WebElement dataButton;

    @FindBy(xpath = ".//*[@name='pzHelpTilesModalTemplate_pyPortalHarness_4']")
    private WebElement closePegaMarketing;

    @FindBy(xpath = ".//a[text()='Data model']")
    private WebElement dataModel;

    @FindBy(xpath = ".//span[text()='OutboundScheduler']")
    private WebElement outBoundScheduler;

    @FindBy(xpath = ".//*[text()='Open  ']")
    private WebElement openLink;

    @FindBy(xpath = "(.//*[text()='Data model'])[2]/following::*[text()='Records']")
    private WebElement recordsTab;

    @FindBy(xpath = "(//*[@id='bodyTbl_right'])[3]/tbody")
    private WebElement ddrTableBody;

    public APPStudio() {
        super();
        WebDriver webDriver = getWebDriver();
        PageFactory.initElements(webDriver, this);
        waitForPageLoad();
        waitForElementImplicit(30);
        LoggingUtils.log("Navigated to Pega Designer Studio Screen");
    }

    public static String getMailID() {
        return mailID;
    }

    private static void setMailID(String mailID) {
        APPStudio.mailID = mailID;
    }

    public static String getWaveStartDate() {
        return waveStartDate;
    }

    public static void setWaveStartDate(String waveStartDate) {
        APPStudio.waveStartDate = waveStartDate;
    }

    public static String getWaveExpiryDate() {
        return waveExpiryDate;
    }

    public static void setWaveExpiryDate(String waveExpiryDate) {
        APPStudio.waveExpiryDate = waveExpiryDate;
    }

    public static String getFileDeliveryDate() {
        return fileDeliveryDate;
    }

    public static void setFileDeliveryDate(String fileDeliveryDate) {
        APPStudio.fileDeliveryDate = fileDeliveryDate;
    }

    public static String getCampaignWaveNumber() {
        return campaignWaveNumber;
    }

    public static void setCampaignWaveNumber(String campaignWaveNumber) {
        APPStudio.campaignWaveNumber = campaignWaveNumber;
    }

    public static List<Map<String, String>> getDdrRecords() {
        return ddrRecords;
    }

    public static void setDdrRecords(List<Map<String, String>> ddrRecords) {
        APPStudio.ddrRecords = ddrRecords;
    }

    public void clickOnDataButton() throws IOException {
        switchToFrameByName("pxExpress");
        click(dataButton, "Data Button");
        switchToParentFrame();
    }


    public void clickOnDataModel() throws IOException {
        switchToFrameByName("pxExpress");
        click(dataModel, "Data Model");
        switchToParentFrame();
    }

    public void clickOnOutBoundScheduler() throws IOException {
        switchToFrameByName("pxExpress");
        click(outBoundScheduler, "Outbound Scheduler");
        switchToParentFrame();
    }

    public void clickOnOpenLink() throws IOException {
        switchToFrameByName("pxExpress");
        click(openLink, "Open Link");
        switchToParentFrame();
    }

    public void clickOnRecordsTab() throws IOException {
        switchToFrameByName("pxExpress");
        click(recordsTab, "Records Tab");
        switchToParentFrame();
    }

    public List<Map<String, String>> getDDRRecords() throws InterruptedException {
        switchToFrameByName("pxExpress");
        addExplicitWait(ddrTableBody, "visibility", 30);
        delay(5000);
        List<WebElement> ddrTableRows = getDriver().findElements(By.xpath
                ("(//*[@id='bodyTbl_right'])[3]/tbody/tr"));
        List<WebElement> ddrTableColumns = getDriver().findElements(By.xpath
                ("(//*[@id='bodyTbl_right'])[3]/tbody/tr/th"));

        List<String> ddrHeaders = new LinkedList<>();
        List<String> ddrHeadersValues = new LinkedList<>();
        Map<String, String> ddrRecord = null;
        ddrRecords = new LinkedList<>();
        for (int rows = 1; rows <= ddrTableRows.size(); rows++) {

            for (int columns = 1; columns <= ddrTableColumns.size(); columns++) {
                if (rows == 1) {
                    WebElement tableHeaders = getDriver().findElement(By.xpath
                            ("(//*[@id='bodyTbl_right'])[3]/tbody/" +
                                    "tr[" + rows + "]/th[" + columns + "]/div/div/div[@class = 'cellIn ']"));
                    ddrHeaders.add(tableHeaders.getText());
                } else {
                    ddrRecord = new LinkedHashMap<>();
                    WebElement tableData = getDriver().findElement(By.xpath
                            ("(//*[@id='bodyTbl_right'])[3]/tbody/" +
                                    "tr[" + rows + "]/td[" + columns + "]/div"));
                    ddrHeadersValues.add(tableData.getText());
                }

            }
            if (ddrHeadersValues.size() != 0) {
                for (int i = 0; i < ddrHeadersValues.size(); i++) {

                    ddrRecord.put(ddrHeaders.get(i), ddrHeadersValues.get(i));
                }
                ddrRecords.add(ddrRecord);
                ddrHeadersValues.clear();
            }
        }
        setDdrRecords(ddrRecords);
        switchToParentFrame();
        return ddrRecords;
    }

    public void getMailId(List<Map<String, String>> ddrRecords, String month, String year, String campaignCode, String channelFileName) {
        mailID = null;
        List<Map<String, String>> inboxFileRecords = ddrRecords.stream().filter(x -> x.get("ChannelFileName").equals(channelFileName)).collect(Collectors.toList());
        List<Map<String, String>> campaignRecords = inboxFileRecords.stream().filter(x -> x.get("Campaign Code").equals(campaignCode)).collect(Collectors.toList());

        for (Map<String, String> records : campaignRecords) {
            String offerExpiryDate = changeDateFormat(records.get("Wave Expiry Date").split(" ")[0], "MM/dd/yyyy");
            if (Integer.parseInt(offerExpiryDate.split("/")[0]) == Integer.parseInt(month) &&
                    Integer.parseInt(offerExpiryDate.split("/")[2]) == Integer.parseInt(year)) {
                mailID = records.get("Mail ID");
                break;
            }
        }
        setMailID(mailID);
    }

    public void getDailyFileMailId(List<Map<String, String>> ddrRecords,  String campaignCode, String channelFileName) {
        mailID = null;
        List<Map<String, String>> inboxFileRecords = ddrRecords.stream().filter(x -> x.get("ChannelFileName").equals(channelFileName)).collect(Collectors.toList());
        List<Map<String, String>> campaignRecords = inboxFileRecords.stream().filter(x -> x.get("Campaign Code").equals(campaignCode)).collect(Collectors.toList());

        for (Map<String, String> records : campaignRecords) {
                mailID = records.get("Mail ID");
        }
        setMailID(mailID);
    }

    public void getCampaignNumber(List<Map<String, String>> ddrRecords, String month, String year, String campaignCode, String channelFileName) {
        campaignWaveNumber = null;
        List<Map<String, String>> ccFileRecords = ddrRecords.stream().filter(x -> x.get("ChannelFileName").equals(channelFileName)).collect(Collectors.toList());
        List<Map<String, String>> campaignRecords = ccFileRecords.stream().filter(x -> x.get("Campaign Code").equals(campaignCode)).collect(Collectors.toList());

        for (Map<String, String> records : campaignRecords) {
            String offerExpiryDate = changeDateFormat(records.get("Wave Expiry Date").split(" ")[0], "MM/dd/yyyy");
            if (Integer.parseInt(offerExpiryDate.split("/")[0]) == Integer.parseInt(month) &&
                    Integer.parseInt(offerExpiryDate.split("/")[2]) == Integer.parseInt(year)) {
                campaignWaveNumber = StringUtils.leftPad(records.get("Campaign Wave Number"), 2, "0");
                break;
            }
        }
        setCampaignWaveNumber(campaignWaveNumber);
    }

    public void getDailyFileCampaignNumber(List<Map<String, String>> ddrRecords, String campaignCode, String channelFileName) {
        campaignWaveNumber = null;
        List<Map<String, String>> ccFileRecords = ddrRecords.stream().filter(x -> x.get("ChannelFileName").equals(channelFileName)).collect(Collectors.toList());
        List<Map<String, String>> campaignRecords = ccFileRecords.stream().filter(x -> x.get("Campaign Code").equals(campaignCode)).collect(Collectors.toList());

        for (Map<String, String> records : campaignRecords) {
                campaignWaveNumber = StringUtils.leftPad(records.get("Campaign Wave Number"), 2, "0");
        }
        setCampaignWaveNumber(campaignWaveNumber);
    }

    public void getWaveExpiryDate(List<Map<String, String>> ddrRecords, String month, String year, String campaignCode, String channelFileName) {
        waveExpiryDate = null;
        List<Map<String, String>> inboxFileRecords = ddrRecords.stream().filter(x -> x.get("ChannelFileName").equals(channelFileName)).collect(Collectors.toList());
        List<Map<String, String>> campaignRecords = inboxFileRecords.stream().filter(x -> x.get("Campaign Code").equals(campaignCode)).collect(Collectors.toList());

        for (Map<String, String> records : campaignRecords) {
            String offerExpiryDate = changeDateFormat(records.get("Wave Expiry Date").split(" ")[0], "MM/dd/yyyy");
            if (Integer.parseInt(offerExpiryDate.split("/")[0]) == Integer.parseInt(month) &&
                    Integer.parseInt(offerExpiryDate.split("/")[2]) == Integer.parseInt(year)) {
                waveExpiryDate = changeDateFormat(records.get("Wave Expiry Date").split(" ")[0], "yyyy-MM-dd");
                break;
            }
        }
        setWaveExpiryDate(waveExpiryDate);
    }

    public void getFileDeliveryDate(List<Map<String, String>> ddrRecords, String month, String year, String campaignCode, String channelFileName) {
        fileDeliveryDate = null;
        List<Map<String, String>> inboxFileRecords = ddrRecords.stream().filter(x -> x.get("ChannelFileName").equals(channelFileName)).collect(Collectors.toList());
        List<Map<String, String>> campaignRecords = inboxFileRecords.stream().filter(x -> x.get("Campaign Code").equals(campaignCode)).collect(Collectors.toList());

        for (Map<String, String> records : campaignRecords) {
            String offerStartDate = changeDateFormat(records.get("Wave Expiry Date").split(" ")[0], "MM/dd/yyyy");
            if (Integer.parseInt(offerStartDate.split("/")[0]) == Integer.parseInt(month) &&
                    Integer.parseInt(offerStartDate.split("/")[2]) == Integer.parseInt(year)) {
                fileDeliveryDate = changeDateFormat(records.get("File Delivery Date").split(" ")[0], "yyyyMMdd");
                break;
            }
        }
        setFileDeliveryDate(fileDeliveryDate);
    }

    public void getWaveStartDate(List<Map<String, String>> ddrRecords, String month, String year, String campaignCode, String channelFileName) {
        waveStartDate = null;
        List<Map<String, String>> inboxFileRecords = ddrRecords.stream().filter(x -> x.get("ChannelFileName").equals(channelFileName)).collect(Collectors.toList());
        List<Map<String, String>> campaignRecords = inboxFileRecords.stream().filter(x -> x.get("Campaign Code").equals(campaignCode)).collect(Collectors.toList());

        for (Map<String, String> records : campaignRecords) {
            String offerStartDate = changeDateFormat(records.get("Wave Expiry Date").split(" ")[0], "MM/dd/yyyy");
            if (Integer.parseInt(offerStartDate.split("/")[0]) == Integer.parseInt(month) &&
                    Integer.parseInt(offerStartDate.split("/")[2]) == Integer.parseInt(year)) {
                waveStartDate = changeDateFormat(records.get("Wave Start Date").split(" ")[0], "yyyy-MM-dd");
                break;
            }
        }
        setWaveStartDate(waveStartDate);
    }

}
