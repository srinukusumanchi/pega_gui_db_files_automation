package com.quantum.api;

import com.jayway.jsonpath.DocumentContext;
import com.jayway.jsonpath.JsonPath;
import com.quantum.utlities.CSVFileHandler;
import net.minidev.json.JSONArray;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.conn.ssl.TrustAllStrategy;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.ssl.SSLContextBuilder;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import static com.quantum.baseclass.BasePage.properties;

public class IhViaAPIbyCustomer{
    //Class Attributes
    private static Map<String, String> ihFieldMap = null; //Contains the mapping of IH Variables in IH Report and API Response


    //Attributes
    private String cisCustId = null;
    private String ihJsonString = null; //Contains IH Records as JSON String
    private List<Map<String, String>> ihRecords = null; //Contains IH Records as List of Maps

    //Getters and Setters
    public String getCisCustId() {
        return cisCustId;
    }
    public void setCisCustId(String cisCustId) {
        this.cisCustId = cisCustId;
    }

    public List<Map<String, String>> getIhRecords() {
        return this.ihRecords;
    }

    public String getIhJsonString(){
        return ihJsonString;
    }

    public  Map<String,String> getIhFieldMap(){
        return IhViaAPIbyCustomer.ihFieldMap;
    }


    //Methods

    /*********************Fetch IH Records through API -- START ***************************************/

    private HttpClient createAcceptSelfSignedCertificateClient()
            throws KeyManagementException, NoSuchAlgorithmException, KeyStoreException {

        return HttpClients
                .custom()
                .setSSLContext(new SSLContextBuilder().loadTrustMaterial(null, TrustAllStrategy.INSTANCE).build())
                .setSSLHostnameVerifier(NoopHostnameVerifier.INSTANCE)
                .build();//       return httpClient;

    }

    private String getURL() {
        String url = null;
        //url = properties.getProperty("webservices.rest.getInteractions");
        url = "https://cie-qat1-appgw.bns/prweb/PRRestService/Interaction/v1/GetIHForTesting";

        return url;
    }

    private HttpPost setHeaders(HttpPost httpPost, String strAction) {

        httpPost.setHeader("Username", properties.getProperty("webservices.soap.userName"));
        httpPost.setHeader("Password", properties.getProperty("webservices.soap.password"));
        //httpPost.setHeader("SOAPAction", strAction);

        httpPost.setHeader("ContentType", "application/json");

        return httpPost;
    }


    private void fetchIhJsonStringViaApi(String cid){

        setCisCustId(cid);

        String requestBody = "{\n" +
                "  \"id_value\":  \"" + cid + "\"\n" +
                "}";

        //HttpRequest
        String strResponse = null;

//        Ignoring SSL Certificate error
        try {
            HttpClient httpClient = createAcceptSelfSignedCertificateClient();
//            Retrives url based on channel
            String url = getURL();
//            Creating post request object
            HttpPost httpPostObject = new HttpPost(url);
//            Retrieves headers based on channel
            HttpPost httpPost = setHeaders(httpPostObject, requestBody);

            StringEntity stringEntity = new StringEntity(requestBody);
            httpPost.setEntity(stringEntity);

//            Retrieves response from HTTPClient object
            HttpResponse response = httpClient.execute(httpPost);
            HttpEntity entity = response.getEntity();

            // Read the contents of an entity and return it as a String.
            strResponse = EntityUtils.toString(entity);

        } catch (NoSuchAlgorithmException | KeyStoreException | KeyManagementException | IOException e) {
            throw new RuntimeException(e);
        }

        this.ihJsonString = strResponse;
    }

/*********************Fetch IH Records through API -- END ***************************************/


/*********************Filter IH Records and Convert to List of Maps -- START ***************************************/


//Further modify to read fileName from Properties
public void generateIhFieldMap(String fileName){

    List<Map<String, String>> ihFieldMapping = CSVFileHandler.readCSVFile(fileName); //readCSVFile("IH_Fields_Mapping.csv");

    if(IhViaAPIbyCustomer.ihFieldMap == null)
        IhViaAPIbyCustomer.ihFieldMap = new HashMap<>();
    else
        IhViaAPIbyCustomer.ihFieldMap.clear();

    String strIhFieldValue;

    //Can be made more dynamic
    for (Map<String, String> fieldMap : ihFieldMapping) {

        String strIhKey = fieldMap.get("ReportField");
        String strIhRef = null;

        if (!((strIhFieldValue = fieldMap.get("Level2")).equals("")))
            strIhRef = ("." + strIhFieldValue);

        if (!((strIhFieldValue = fieldMap.get("Level3")).equals("")))
            strIhRef = (strIhRef == null) ? ("." + strIhFieldValue) : strIhRef + ("." + strIhFieldValue);

        if (!((strIhFieldValue = fieldMap.get("Level4")).equals("")))
            strIhRef = (strIhRef == null) ? ("." + strIhFieldValue) : strIhRef + ("." + strIhFieldValue);

        IhViaAPIbyCustomer.ihFieldMap.put(strIhKey, strIhRef);
    }
}

//Move to a Date Utility Class
public String convertDateFormat(String strInputDate, String strOutputTimeZone) throws ParseException{
    String inputDatePattern = "yyyyMMdd'T'HHmmss.SSS' GMT'";
    String outputDatePattern = "M/d/yy h:m a";

    SimpleDateFormat inputSimpleDateFormat = new SimpleDateFormat(inputDatePattern);
    inputSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));

    SimpleDateFormat outputSimpleDateFormat = new SimpleDateFormat(outputDatePattern);
    outputSimpleDateFormat.setTimeZone(TimeZone.getTimeZone(strOutputTimeZone));

    String strOutputDate;

    Date date = inputSimpleDateFormat.parse(strInputDate);

    strOutputDate = outputSimpleDateFormat.format(date);

    return(strOutputDate);
}



private void convertIhJsonStringToIhRecords(){

    String strJsonResponse = getIhJsonString();

    Map<String, String> ihFieldMap = this.getIhFieldMap();

    List<Map<String,String>> ihRecords = new LinkedList<>();
    Map<String,String> ihRecord;


    if(ihFieldMap != null){
        Set<String> ihKeySet = ihFieldMap.keySet();

        DocumentContext parsedDocumentContext = JsonPath.parse(strJsonResponse);

        int iRecordCnt = Integer.parseInt(parsedDocumentContext.read("$.length()").toString());
        if(iRecordCnt == 0){
            this.ihRecords = null;
            return;
        }

        String strCnt = parsedDocumentContext.read("$.pxResults.length()").toString();

        for(int i=0; i<Integer.parseInt(strCnt); i++){
            ihRecord = new LinkedHashMap<>();

            for(String ihKey : ihKeySet){
                String strIhRef = "$.pxResults["+ i +"]."+(ihFieldMap.get(ihKey));

                String ihValue = null;
                try {
                    JSONArray ihArrayValue = parsedDocumentContext.read((strIhRef));

                    if(ihArrayValue.size() > 0)
                        ihValue = ihArrayValue.get(0).toString();
                    else
                        ihValue = "";

                }catch(Exception e){
                    e.printStackTrace();
                }

                int strLen = (ihValue == null) ? 0 : ihValue.trim().length();
                if(strLen == 23 && ihValue.trim().startsWith("GMT", strLen - 3)){
                    try {
                        ihValue = convertDateFormat(ihValue, "Canada/Eastern");

//                        System.out.println("Converted Value: " + ihValue);
                    }catch (ParseException e){
                        e.printStackTrace();
                    }

                }

                ihRecord.put(ihKey,ihValue);
            }

            ihRecords.add(ihRecord);
        }

        this.ihRecords = ihRecords;
    }

}


/*********************Filter IH Records and Convert to List of Maps -- END ***************************************/




    public List<Map<String,String>> getIHTableDataViaAPI(String cid){
        //String cid = getCustDimInputTestDataInformation().get("CIS_CUST_ID");
//        System.out.println("CID in getIHTableDataViaAPI: " + cid);

        //Fetch IH Records through API
        if(cid != null && !cid.equals(""))
            fetchIhJsonStringViaApi(cid);
        else
            return null;

        //Generate ihFieldMap is not present
        if(getIhFieldMap() == null)
            generateIhFieldMap("IH_Fields_Mapping.csv");

        //Filter the Required Fields from the REST Response and Convert to List of Maps
        convertIhJsonStringToIhRecords();

        System.out.println(getIhRecords());


        return(this.getIhRecords());
    }

}
