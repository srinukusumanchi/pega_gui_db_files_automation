package com.quantum.webpages;


import com.quantum.baseclass.BasePage;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.io.IOException;

public class PegaDesignerStudio extends BasePage {

    @FindBy(id = "pySearchText")
    private WebElement searchText;

    @FindBy(xpath = ".//i[@class='pi pi-search-2']")
    private WebElement searchButton;

    @FindBy(xpath = ".//span[text()='Interactions History By Customer']")
    private WebElement interactionHistoryByCustomer;

    @FindBy(xpath = "(.//span[text()='DeleteInteractionHistoryForCustomer'])[2]")
    private WebElement deleteInteractionHistoryByCustomer;

    @FindBy(xpath = ".//h3[text()='Favorites']")
    private WebElement favorites;

    @FindBy(xpath = ".//a[text()='D2D_EMAIL_Batch']")
    private WebElement d2dEmailBatch;


    @FindBy(xpath = ".//button[text()='Actions']")
    private WebElement actions;

    @FindBy(xpath = "(.//span[text()='Run'])[2]")
    private WebElement run;

    @FindBy(xpath = ".//a[text()='Dev Studio ']/i")
    private WebElement studioDropDown;

    @FindBy(xpath = ".//a[text()='App Studio ']/i")
    private WebElement appStudioDropDown;

    @FindBy(xpath = ".//span[text()='App Studio']")
    private WebElement appStudio;

    @FindBy(xpath = ".//span[@class='menu-item-icon-imageclass pxExpress pi pi-circle-filled']//following::span[text()='Dev Studio']")
    private WebElement devStudio;

    public PegaDesignerStudio() {
        super();
        WebDriver webDriver = getWebDriver();
        PageFactory.initElements(webDriver, this);
        waitForPageLoad();
        waitForElementImplicit(30);
//        LoggingUtils.log("Navigated to Pega Designer Studio Screen");
    }

    public void enterSearchText(String searchName) throws InterruptedException {
        type(searchText, searchName, "Search Text");
    }

    public void clickOnSearchButton() throws IOException {
        click(searchButton, "Search Button");
    }

    public void clickOnInteractionByCustomerLink() throws IOException {
        click(interactionHistoryByCustomer, "Interaction History By Customer");
    }

    public void clickOnFavorites() throws IOException {
        click(favorites, "Favorites");
    }

    public void clickOnDeleteInteractionByCustomerLink() throws IOException {
        click(deleteInteractionHistoryByCustomer, "Delete Interaction History By Customer");
    }

    public void clickOnActionsInteractionHistory() throws IOException {
        switchToFrameByName("PegaGadget0Ifr");
        click(actions, "Action Button");
        switchToParentFrame();
    }

    public void clickOnActionsDeleteInteractionHistory() throws IOException {
        switchToFrameByName("PegaGadget0Ifr");
        click(actions, "Action Button");
        switchToParentFrame();
    }

    public void clickOnRunInteractionHistory() throws IOException {
        switchToFrameByName("PegaGadget0Ifr");
        click(run, "Run Button");
        switchToParentFrame();
    }

    public void clickOnDeleteInteractionHistory() throws IOException, InterruptedException {
        switchToFrameByName("PegaGadget0Ifr");
        click(run, "Run Button");
        delay(5000);
        switchToParentFrame();
    }

    public void clickOnD2DEmailBatchLink() throws IOException {
        click(d2dEmailBatch, "D2D Email Batch");
    }

    public void clickOnAPPStudio() throws IOException {
        click(studioDropDown, "Studio Drop down");
        click(appStudio, "APP Studio");
    }

    public void clickOnDevStudio() throws IOException {
        switchToFrameByName("pxExpress");
        click(appStudioDropDown, "Studio Drop down");
        click(devStudio, "Dev Studio");
        switchToParentFrame();

    }
}
