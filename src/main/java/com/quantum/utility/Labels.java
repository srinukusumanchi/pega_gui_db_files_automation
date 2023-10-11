package com.quantum.utility;


import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Labels {

    private int getExamplesCount(String testCaseValue) {
        int examplesCount = 0;
        List<String> testCaseArray = Arrays.asList(testCaseValue.split("\\\\n"));
        int count = 0;
        int scenarioOutLineBoolean = testCaseArray.stream().filter(x -> x.contains("Examples")).collect(Collectors.toList()).size();
        if (scenarioOutLineBoolean == 1) {
            List<String> examples = Arrays.asList(testCaseValue.split("\\\\n\\\\tExamples: ")[1].split("\\\\n\\\\t\\\\t"));
            examplesCount = (examples.stream().filter(x -> x.length() != 0).collect(Collectors.toList()).size()) - 1;
        }
        return examplesCount;
    }

    private static CloseableHttpClient getHttClientObject() {
        CloseableHttpClient httpClient = HttpClients.createDefault();
        return httpClient;
    }

    private HttpGet getGetObject(String url) {
        HttpGet httpGet = new HttpGet(url);
        return httpGet;
    }

    private static String getBasicAuthKey(String userName, String password) {
        return "Basic " + userName + ":" + password;
    }

    private static String getRequest(String getURL) throws IOException {
        CloseableHttpClient httpClient = getHttClientObject();
        HttpGet httpGet = new HttpGet(getURL);
       // String decodedPassword = decodeString(Constants.password);
        httpGet.setHeader("Authorization", getBasicAuthKey("s3810121", "Welcome2021"));
        // Create a custom response handler
        ResponseHandler<String> responseHandler = response -> {
            int status = response.getStatusLine().getStatusCode();
            if (status >= 200 && status < 300) {
                HttpEntity entity = response.getEntity();
                return entity != null ? org.apache.http.util.EntityUtils.toString(entity) : null;
            } else {
                throw new ClientProtocolException("Unexpected response status: " + status);
            }
        };
        return httpClient.execute(httpGet, responseHandler);
    }
    private String getResponse(String url) throws IOException {
        String responseString = null;
        CloseableHttpClient httpClient = getHttClientObject();
        HttpGet httpGet = getGetObject(url);
        httpGet.setHeader("Authorization", getBasicAuthKey("s3810121", "Welcome2021"));
        CloseableHttpResponse response = httpClient.execute(httpGet);
        int statusCode = response.getStatusLine().getStatusCode();
        if (statusCode >= 200 && statusCode < 300) {
            HttpEntity entity = response.getEntity();
            if (entity == null) {
                responseString = "";
            } else {
                responseString = EntityUtils.toString(entity, "UTF-8");
            }
        }
        return responseString;
    }

    public void getTestPlankTests() throws IOException {
        String response = getResponse("https://jira.agile.bns/rest/raven/1.0/api/testplan/CDIC-2030/test");
    }

    public static void main(String[] args) throws IOException {
        Labels labels = new Labels();
        labels.getRequest("https://jira.agile.bns/rest/api/2/search?jql=issuekey=CIMCAMP-448");
    }
}
