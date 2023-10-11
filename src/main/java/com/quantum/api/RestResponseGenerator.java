package com.quantum.api;

import com.qmetry.qaf.automation.core.ConfigurationManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ssl.NoopHostnameVerifier;
import org.apache.http.conn.ssl.TrustAllStrategy;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.ssl.SSLContextBuilder;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import static com.quantum.baseclass.BasePage.properties;

public class RestResponseGenerator {

    public String getRESTRequestBody(String cid, String channelCode){
        String strResponseBody = null;

        if(channelCode.equals("MOB") || channelCode.equals("ORN")){
            strResponseBody = "{ \n" +
                    "  \"channel_code\": \"" + channelCode + "\",\n" +
                    "  \"id_type\": \"CID\",\n" +
                    "  \"id_value\": \"" + cid + "\",\n" +
                    "  \"language_code\": \"EN\",\n" +
                    "  \"request_id\": \"AB12345\",\n" +
                    "  \"offer_lead_scope\": \"ACT\",\n" +
                    "  \"channel_context_type\": \"Session\",\n" +
                    "  \"channel_context_value\": \"SignOn\",\n" +
                    "  \"additional_context\": [\n" +
                    "    {\n" +
                    "      \"context_type\": \"\",\n" +
                    "      \"context_value\": \"\"\n" +
                    "    }\n" +
                    "  ]\n" +
                    "}";
        }
        else if(channelCode.equals("CSE")){
            strResponseBody = "{ \n" +
                    "  \"channel_code\": \"" + channelCode + "\",\n" +
                    "  \"id_type\": \"CID\",\n" +
                    "  \"id_value\": \"" + cid + "\",\n" +
                    "  \"language_code\": \"EN\",\n" +
                    "  \"request_id\": \"AB12345\",\n" +
                    "  \"offer_lead_scope\": \"ALL\",\n" +
                    "  \"channel_context_type\": \"TeamID\",\n" +
                    "  \"channel_context_value\": \"Sales\",\n" +
                    "  \"additional_context\": [\n" +
                    "    {\n" +
                    "      \"context_type\": \"\",\n" +
                    "      \"context_value\": \"\"\n" +
                    "    }\n" +
                    "  ]\n" +
                    "}  ";
        }

        return strResponseBody;
    }

    private HttpClient createAcceptSelfSignedCertificateClient()
            throws KeyManagementException, NoSuchAlgorithmException, KeyStoreException {

        return HttpClients
                .custom()
                .setSSLContext(new SSLContextBuilder().loadTrustMaterial(null, TrustAllStrategy.INSTANCE).build())
                .setSSLHostnameVerifier(NoopHostnameVerifier.INSTANCE)
                .build();//       return httpClient;

    }

    //Need for this method should be replaced with use of respective Properties in each calling function
    private String getURL() {
        String url = null;

        //Fetching the corresponding URL from Property mentioned in application.properties
//        String url = ConfigurationManager.getBundle().getPropertyValue("webservices.rest.getInteractions");

        url = "https://cie-qat1-appgw.bns/prweb/PRRestService/Interaction/v1/offers";

        return url;
    }

    private HttpPost setHeaders(HttpPost httpPost, String strAction) {

        httpPost.setHeader("Username", properties.getProperty("webservices.soap.userName"));
        httpPost.setHeader("Password", properties.getProperty("webservices.soap.password"));
        //httpPost.setHeader("SOAPAction", strAction);

        httpPost.setHeader("ContentType", "application/json");

        return httpPost;
    }

    //Returns REST Response String for NBA Offers using POST method
    public String getRESTResponse(String cid, String channelCode){

        String requestBody = getRESTRequestBody(cid,channelCode);

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

        return strResponse;
    }

    //Returns REST Response String for PEGA Business DSS using GET Method
    public String getRESTResponseForBusinessDSS(){

        //String requestBody = getRESTRequestBody(cid,channelCode);

        //HttpRequest
        String strResponse = null;

//        Ignoring SSL Certificate error
        try {
            HttpClient httpClient = createAcceptSelfSignedCertificateClient();
//            Retrives url based on channel
            String url = "https://cie-qat1-appgw.bns/prweb/api/v1/data/D_CIESystemPage";
//            Creating post request object

            HttpGet httpGetObject = new HttpGet(url);

            httpGetObject.setHeader("Accept-Encoding", "gzip,deflate");
            httpGetObject.setHeader("Authorization", "Basic czI3MDM1ODA6cnVsZXNAMjAyMQ==");

            httpGetObject.setHeader("ContentType", "application/json");


//            Retrieves response from HTTPClient object
            HttpResponse response = httpClient.execute(httpGetObject);
            HttpEntity entity = response.getEntity();

            // Read the contents of an entity and return it as a String.
            strResponse = EntityUtils.toString(entity);

        } catch (NoSuchAlgorithmException | KeyStoreException | KeyManagementException | IOException e) {
            throw new RuntimeException(e);
        }

        return strResponse;
    }


    //Returns REST Response String for PEGA OB Scheduler Table using GET Method
    public String getRESTResponseForOBSchedulerTable(){

        //HttpRequest
        String strResponse = null;

//        Ignoring SSL Certificate error
        try {
            HttpClient httpClient = createAcceptSelfSignedCertificateClient();
//            Need to be converted based on Properties
            String url = "https://cie-qat1-appgw.bns/prweb/api/v1/data/D_OutboundSchedulerList?Direction=Inbound";
//            Creating post request object

            HttpGet httpGetObject = new HttpGet(url);

            httpGetObject.setHeader("Accept-Encoding", "gzip,deflate");
            httpGetObject.setHeader("Authorization", "Basic czI3MDM1ODA6cnVsZXNAMjAyMQ==");

            httpGetObject.setHeader("ContentType", "application/json");


//            Retrieves response from HTTPClient object
            HttpResponse response = httpClient.execute(httpGetObject);
            HttpEntity entity = response.getEntity();

            // Read the contents of an entity and return it as a String.
            strResponse = EntityUtils.toString(entity);

        } catch (NoSuchAlgorithmException | KeyStoreException | KeyManagementException | IOException e) {
            throw new RuntimeException(e);
        }

        return strResponse;
    }



    public Map<String,Object> convertJSONStringToMap(String strJSON){
        Map<String, Object> mapObj = new HashMap<>();

        JSONObject jsonObj = new JSONObject(strJSON);

        mapObj = jsonObj.toMap();

        return mapObj;
    }

//    public List<Map<String, Object>> convertJSONArrayStringToMaps(String strJSONArray){
//        List<Map<String, Object>> mapObjs = new LinkedList<>();
//
//        JSONArray jsonArrayObj = new JSONArray(strJSONArray);
//
//
//        List<Object> lstJSONs = jsonArrayObj.toList();
//
//        for (Object obj:lstJSONs){
//            JSONObject jsonObj = new JSONObject(obj.toString());
//            mapObjs.add(jsonObj.toMap());
//        }
//
//        return mapObjs;
//    }




}
