package com.quantum.steps;

import com.quantum.constant.CommonConstants;
import com.quantum.java.pages.ExtentReportHelper;
import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.util.LoadLibs;

import java.io.File;

/**
 * OCR Utility to get text from Images
 */
public class OCRUtility {

    static final String OCR_RESOURCES = "tessdata";
    static final String OCR_DEFAULT_DPI_VAR = "user_defined_dpi";
    static final String OCR_DEFAULT_DPI_VAL = "300";
    static final String OCR_DEFAULT_LANG = "eng";

    private OCRUtility() {
        //not implemented
    }

    /**
     * Default Method : Get Text from Latest Screenshot
     *
     * @return Text extracted from Image
     */
    public static String getTextFromLatestScreenshot() {
        String text = "";
        Tesseract tesseract = new Tesseract();
        ExtentReportHelper reportHelper = new ExtentReportHelper();
        try {
            File tessDataFolder = LoadLibs.extractTessResources(OCR_RESOURCES);
            tesseract.setDatapath(tessDataFolder.getAbsolutePath());
            tesseract.setTessVariable(OCR_DEFAULT_DPI_VAR, OCR_DEFAULT_DPI_VAL);
            tesseract.setLanguage(OCR_DEFAULT_LANG);
            String filePath = reportHelper.getScreenshot(CommonConstants.SCREENSHOT);
            text = tesseract.doOCR(new File(filePath));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return text;
    }

    /**
     * Get Text from Image
     *
     * @param screenshot     Full screenshot path and file name
     * @param userDefinedDpi User defined DPI, default is 300
     * @param language       Default is eng
     * @return Text extracted from Image
     */
    public static String getTextFromImage(String screenshot, String userDefinedDpi, String language) {
        String text = "";
        Tesseract tesseract = new Tesseract();
        ExtentReportHelper reportHelper = new ExtentReportHelper();
        try {
            File tessDataFolder = LoadLibs.extractTessResources(OCR_RESOURCES);
            tesseract.setDatapath(tessDataFolder.getAbsolutePath());
            tesseract.setTessVariable(OCR_DEFAULT_DPI_VAR, userDefinedDpi);
            tesseract.setLanguage(language);
            String filePath = reportHelper.getScreenshot(screenshot);
            text = tesseract.doOCR(new File(filePath));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return text;
    }

}
