package com.quantum.utility;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

public class ReadTextFile {

    private List<Map<String, String>> samples = null;
    HashMap<String, String> fileKeyValue = new HashMap<>();

    private List<String> headerList = null;
    private List<String> dataList = null;
    private Map<String, String> sample = null;


    /**
     * This function reads Text file
     *
     * @param path- Extract path
     * @param cid   -Find cid in extract
     * @return Customer details
     * @throws IOException
     */
    public List<Map<String, String>> ulocCCFile(String path, String cid) throws IOException {

        /**
         * Below Indexes Are for ULOC CC File
         */
        String startIndex = "0|15|22|29|37|40|70|71|76|80|106|116|136|156|186|226|236|237|238|249|279|309|334|336|346|356|366|371|387|395|398|401|404|407|410|418|419|420|421|427|430|431|443|448|456|458|459|460|461|474|514|554|562|565|568|578|582|586|590|591|592|593|603|607|617|618|620|632|674";
        String endIndex = "15|22|29|37|40|70|71|76|80|106|116|136|156|186|226|236|237|238|249|279|309|334|336|346|356|366|371|387|395|398|401|404|407|410|418|419|420|421|427|430|431|443|448|456|458|459|460|461|474|514|554|562|565|568|578|582|586|590|591|592|593|603|607|617|618|620|632|674|682";


        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "D2D extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract CC file Headers
            String headerValues = "Customer ID|FBL Campaign Id|FBL Cell Id|FBL Cell Start Date|Product Code|Product Name|Campaign Type|Campaign Number|Campaign Offer|Campaign Name|Title|First Name|Middle Name|Last Name|Composite Customer Name|Date of Birth|Gender|Language|Social Insurance Number|Address 1|Address 2|City|Province Code|Postal Code|Home Phone Number|Business Phone Number|Transit Number (Retail)|Scotiacard Number|Mail ID - For Direct Mail|Visa Gold Product ID|Classic Visa Product ID|Value Visa Product ID|ScotiaLine Product ID|ScotiaLine Visa Product ID|Offer Expiry Date|Channel|Inbound/Outbound Indicator|Kill Flag|Credit Limit|Source Code|Filler|USPO Key|USPO Rate|Bill Code|Intro Rate Duration|Rate Sign|FFT-SPOT for Branches|FCC-SPOT for Call Centre|Rate Key|SO Rate Description|Intro Rate Description|Intro Bill Code|Product Code|Sub Product Code|PO Rate Expiry|Net Rate|Interest Amount|Saving|PUR Date|SOLUI Other6|SOLUI Other7|Legal Rate Date|Intro Rate|Accept Date|Bonus Points|Offer Months|Master Key|Filler|Cell End Date|End of record";

            String[] headerVal = headerValues.split("\\|");
            ArrayList<String> headervalList = new ArrayList<>();
            for (String val : headerVal) {
                headervalList.add(val);
            }

            //Getting the Start Index Of All Atributes
            ArrayList<Integer> startindexlist = new ArrayList<>();
            for (String i : startIndex.split("\\|")) {
                startindexlist.add(Integer.parseInt(i));
            }

            //Storing The Start Index Position In the List
            ArrayList<String> al = new ArrayList<>();
            int start = 0;
            for (int i = 0; i < startindexlist.size(); i++) {
                start = startindexlist.get(i);
            }
            System.out.println(startindexlist);

            //Getting The End Index Position Of All Attributes
            ArrayList<Integer> endIndexList = new ArrayList<>();
            for (String s1 : endIndex.split("\\|")) {
                endIndexList.add(Integer.parseInt(s1));
            }
            int end = 0;
            for (int i = 0; i < endIndexList.size(); i++) {
                end = endIndexList.get(i);
            }
            System.out.println(endIndexList);

            // Extracting All The Attribute Values From The File
            ArrayList<String> valuesFromFile = new ArrayList<>();
            while ((extractLine = br.readLine()) != null) {

                for (int i = 0; i < startindexlist.size(); i++) {
                    valuesFromFile.add((extractLine.substring(startindexlist.get(i), endIndexList.get(i))).trim());
                }

                for (int i = 0; i < headervalList.size(); i++) {
                    fileKeyValue.put(headervalList.get(i), valuesFromFile.get(i));
                }

                if (fileKeyValue.get("Customer ID").trim().equals(cid)) {
                    samples.add(fileKeyValue);
                }
            }
        }
        return samples;
    }

    public List<Map<String, String>> ulocDMFile(String path, String cid) throws IOException {

        /**
         * Below Indexes Are for ULOC DM File
         */
        String startIndex = "0|8|23|33|38|48|78|98|128|158|188|213|215|221|222|223|225|226|230|231|234|237|240|243|246|247|250|256|257|265|266|278|283|291|293|306|346|350|354|358";
        String endIndex = "8|23|33|38|48|78|98|128|158|188|213|215|221|222|223|225|226|230|231|234|237|240|243|246|247|250|256|257|265|266|278|283|291|293|306|346|350|354|358|396";

        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "D2D extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract DM File Headers
            String headerValues = "Customer ID|FBL Campaign Id|FBL Cell Id|FBL Cell Start Date|Product Code|Product Name|Campaign Type|Campaign Number|Campaign Offer|Campaign Name|Title|First Name|Middle Name|Last Name|Composite Customer Name|Date of Birth|Gender|Language|Social Insurance Number|Address 1|Address 2|City|Province Code|Postal Code|Home Phone Number|Business Phone Number|Transit Number (Retail)|Scotiacard Number|Mail ID - For Direct Mail|Visa Gold Product ID|Classic Visa Product ID|Value Visa Product ID|ScotiaLine Product ID|ScotiaLine Visa Product ID|Offer Expiry Date|Channel|Inbound/Outbound Indicator|Kill Flag|Credit Limit|Source Code|Filler|USPO Key|USPO Rate|Bill Code|Intro Rate Duration|Rate Sign|FFT-SPOT for Branches|FCC-SPOT for Call Centre|Rate Key|SO Rate Description|Intro Rate Description|Intro Bill Code|Product Code|Sub Product Code|PO Rate Expiry|Net Rate|Interest Amount|Saving|PUR Date|SOLUI Other6|SOLUI Other7|Legal Rate Date|Intro Rate|Accept Date|Bonus Points|Offer Months|Master Key|Filler|Cell End Date|End of record";

            String[] headerVal = headerValues.split("\\|");
            ArrayList<String> headervalList = new ArrayList<>();
            for (String val : headerVal) {
                headervalList.add(val);
            }

            //Getting the Start Index Of All Atributes
            ArrayList<Integer> startindexlist = new ArrayList<>();
            for (String i : startIndex.split("\\|")) {
                startindexlist.add(Integer.parseInt(i));
            }

            //Storing The Start Index Position In the List
            ArrayList<String> al = new ArrayList<>();
            int start = 0;
            for (int i = 0; i < startindexlist.size(); i++) {
                start = startindexlist.get(i);
            }
            System.out.println(startindexlist);

            //Getting The End Index Position Of All Attributes
            ArrayList<Integer> endIndexList = new ArrayList<>();
            for (String s1 : endIndex.split("\\|")) {
                endIndexList.add(Integer.parseInt(s1));
            }
            int end = 0;
            for (int i = 0; i < endIndexList.size(); i++) {
                end = endIndexList.get(i);
            }
            System.out.println(endIndexList);

            // Extracting All The Attribute Values From The File
            ArrayList<String> valuesFromFile = new ArrayList<>();
            while ((extractLine = br.readLine()) != null) {

                for (int i = 0; i < startindexlist.size(); i++) {
                    valuesFromFile.add((extractLine.substring(startindexlist.get(i), endIndexList.get(i))).trim());
                }

                for (int i = 0; i < headervalList.size(); i++) {
                    fileKeyValue.put(headervalList.get(i), valuesFromFile.get(i));
                }

                if (fileKeyValue.get("Customer ID").trim().equals(cid)) {
                    samples.add(fileKeyValue);
                }
            }
        }
        return samples;
    }

    public List<Map<String, String>> readMASBFile(String path, String cid) throws IOException {

        String startIndex = "0|1|16|56|71|111|116|123|158|258|308|343|393|403|433|434|469|504|604|615|625|635|638|641";
        String endIndex = "1|16|56|71|111|116|123|158|258|308|343|393|403|433|434|469|504|604|615|625|635|638|641|651";

        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "D2D extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "Record Type Indicator|Customer ID|Customer Name|Secondary Customer ID|Secondary Customer Name|Branch ID|Target Officer|Lead Name English|URL for opportunity pop-up|Lead Description English|Lead Name French|Lead Description French|Expiry Date|Feedback Loop Cell and record identifier|Priority code|Lead Type English|Lead Type French|Campaign URL|Balance|Contact Date|Hand-off date|Hand-off condition|Hand-off channel|Hand-off information";
            String[] headerVal = headerValues.split("\\|");
            ArrayList<String> headervalList = new ArrayList<>();
            for (String val : headerVal) {
                headervalList.add(val);
            }

            //Getting the Start Index Of All Atributes
            ArrayList<Integer> startindexlist = new ArrayList<>();
            for (String i : startIndex.split("\\|")) {
                startindexlist.add(Integer.parseInt(i));
            }

            //Storing The Start Index Position In the List
            ArrayList<String> al = new ArrayList<>();
            int start = 0;
            for (int i = 0; i < startindexlist.size(); i++) {
                start = startindexlist.get(i);
            }
            System.out.println(startindexlist);

            //Getting The End Index Position Of All Attributes
            ArrayList<Integer> endIndexList = new ArrayList<>();
            for (String s1 : endIndex.split("\\|")) {
                endIndexList.add(Integer.parseInt(s1));
            }
            int end = 0;
            for (int i = 0; i < endIndexList.size(); i++) {
                end = endIndexList.get(i);
            }
            System.out.println(endIndexList);

            // Extracting All The Attribute Values From The File
            ArrayList<String> valuesFromFile = new ArrayList<>();
            while ((extractLine = br.readLine()) != null) {

                for (int i = 0; i < startindexlist.size(); i++) {
                    valuesFromFile.add((extractLine.substring(startindexlist.get(i), endIndexList.get(i))).trim());
                }

                for (int i = 0; i < headervalList.size(); i++) {
                    fileKeyValue.put(headervalList.get(i), valuesFromFile.get(i));
                }

                if (fileKeyValue.get("Customer ID").trim().equals(cid)) {
                    samples.add(fileKeyValue);
                }


            }
        }
        return samples;
    }

    public List<Map<String, String>> earlyTenureIndirectMTGSBFile(String path, String cid) throws IOException {

        String startIndex = "0|1|16|56|71|111|116|123|158|258|308|343|393|403|433|434|469|504|604|615|625|635|638|641";
        String endIndex = "1|16|56|71|111|116|123|158|258|308|343|393|403|433|434|469|504|604|615|625|635|638|641|651";

        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "D2D extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "RecordTypeIndicator|CustomerID|CustomerName|SecondaryCustomerID|SecondaryCustomerName|BranchID|TargetOfficer|LeadNameEnglish|URLForOpportunityPopUp|LeadDescriptionEnglish|LeadNameFrench|LeadDescriptionFrench|ExpiryDate|FeedbackLoopCellAndRecordIdentifier|PriorityCode|LeadTypeEnglish|LeadTypeFrench|CampaignURL|Balance|ContactDate|HandOffDate|HandOffCondition|HandOffChannel|HandOffInformation";
            String[] headerVal = headerValues.split("\\|");
            ArrayList<String> headervalList = new ArrayList<>();
            for (String val : headerVal) {
                headervalList.add(val);
            }

            //Getting the Start Index Of All Atributes
            ArrayList<Integer> startindexlist = new ArrayList<>();
            for (String i : startIndex.split("\\|")) {
                startindexlist.add(Integer.parseInt(i));
            }

            //Storing The Start Index Position In the List
            ArrayList<String> al = new ArrayList<>();
            int start = 0;
            for (int i = 0; i < startindexlist.size(); i++) {
                start = startindexlist.get(i);
            }
            System.out.println(startindexlist);

            //Getting The End Index Position Of All Attributes
            ArrayList<Integer> endIndexList = new ArrayList<>();
            for (String s1 : endIndex.split("\\|")) {
                endIndexList.add(Integer.parseInt(s1));
            }
            int end = 0;
            for (int i = 0; i < endIndexList.size(); i++) {
                end = endIndexList.get(i);
            }
            System.out.println(endIndexList);

            // Extracting All The Attribute Values From The File
            ArrayList<String> valuesFromFile = new ArrayList<>();
            while ((extractLine = br.readLine()) != null) {

                for (int i = 0; i < startindexlist.size(); i++) {
                    valuesFromFile.add((extractLine.substring(startindexlist.get(i), endIndexList.get(i))).trim());
                }

                for (int i = 0; i < headervalList.size(); i++) {
                    fileKeyValue.put(headervalList.get(i), valuesFromFile.get(i));
                }

                if (fileKeyValue.get("Customer ID").trim().equals(cid)) {
                    samples.add(fileKeyValue);
                }


            }
        }
        return samples;
    }

    public List<Map<String, String>> readD2DLatestFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "D2D extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;SRC_PRD_CD;NTCFlag;MobileActive;CaslColumn;bonus_interest_rate;upto_interest_rate;offer_duration_months;regular_interest_rate;premium_period_interest_rate;offer_duration_days;mass_offer_start_date;mass_offer_end_date;Offer_Elig_Flag;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }

            }

        }
        return samples;
    }

    public List<Map<String, String>> readD2DTextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "D2D extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;PURL;HASH;Offer_Elig_Flag;SRC_PRD_CD";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }

            }

        }
        return samples;
    }

    public List<Map<String, String>> readSupplemenatryCardTextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "RDC extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;PrdCode;SubPrdCd;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }

    public List<Map<String, String>> readRDCTextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "RDC extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }


    /**
     * Method to Read Batch File for Travel Insurance Offer
     * @param path
     * @param cid
     * @return
     * @throws IOException
     */

    public List<Map<String, String>> readTravelInsuranceTextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "RDC extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;Credit_Card_Type;Chequing_Account_Flag;Rewards_Flag;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on "|"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }

    /**
     * Method to Read Batch File for D2D Payment Methods
     * @param path
     * @param cid
     * @return
     * @throws IOException
     */

    public List<Map<String, String>> readGenericTextFile(String path, String cid, String headerValues) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "RDC extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers

            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on "|"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }







    public List<Map<String, String>> readEMOBTextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;PRIM_PROV_CD;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }

    public List<Map<String, String>> readGicEmailTextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;Mat_dt";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }

    public List<Map<String, String>> readLatestBatchFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "D2D extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }

            }

        }
        return samples;
    }

    public List<Map<String, String>> readODPRightSizingBatchFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "D2D extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;Accountnumber;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }

            }

        }
        return samples;
    }

    public List<Map<String, String>> readCreditorInsuranceBatchFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "D2D extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;PrdCode;SubPrdCd;MobileActive;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }

            }

        }
        return samples;
    }

    public List<Map<String, String>> readSPSPTextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "RDC extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;EmailSpecificText;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }

    public List<Map<String, String>> readCLITextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "RDC extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;AccNum;ApprvdLmt;PrdCode;SubPrdCd;Campgnnumber;CurrenLmt;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }

    public List<Map<String, String>> readMATextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            /*LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "RDC extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }

    public List<Map<String, String>> readNTCTextFile(String path, String cid) throws IOException {
        // Creating file object by placing notepad file location
        File file = new File(path);
        // Reading file using Buffer Reader object
        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
           /* LoggingUtils.log((new File((String) Objects.
                            requireNonNull(BasePage.getExtentReportHelper().
                                    getScreenshot("Screenshot")))),
                    "NTC extract data" + br.lines().collect(Collectors.toList()));*/
            // Extract file individual line
            String extractLine;

            // Extract file Headers
            String headerValues = "CustomerID;EmailAddress;IndividualTitle;IndividualFirstName;IndividualLastName;LanguageCode;OfferExpirydate;OfferID;CampaignCode;CreativeID;PegaInteractionID;PegaResponsetrackingCode;MailID;ExpireDate;PrefColumn";
            String headerValuesArray[] = headerValues.split("\\;");
            samples = new ArrayList<Map<String, String>>();
            headerList = new ArrayList<String>();
            for (String header : headerValuesArray) {
                headerList.add(header);
            }
            // Reading Extract file line by line
            while ((extractLine = br.readLine()) != null) {
                //Header values of extract

                //Object created to store all extract lines into dataList Object
                dataList = new ArrayList<String>();
                sample = new LinkedHashMap<String, String>();
                // Spliting based on ";"
                for (String s : extractLine.split("\\|")) {
                    //Storing all individual lines of text files in dataList object
                    dataList.add(s);
                }
                // Mapping Headers and Header value into Map object
                for (int i = 0; i < headerValuesArray.length; i++) {
                    sample.put(headerList.get(i), dataList.get(i));
                }

                //Based on account number passed those lines which contains same account numbers will get stored into samples object
                if (sample.get("CustomerID").trim().equals(cid)) {
                    samples.add(sample);

                }
            }
        }
        return samples;
    }

}
