package com.quantum.steps;

import com.quantum.db.DBHelperClass;
import com.quantum.db.domain.DBResult;
import com.quantum.db.util.DBUtil;
import com.quantum.db.util.LoggerUtil;
import org.apache.commons.lang3.StringUtils;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.*;

/**
 * This is an example class which helps to understand and implement how to
 * retrieve data from database based on the queries in JSON or Excel files in
 * resource/queries and respective folder.
 *
 * @author s3277408
 * @date 02/20/2019
 */
public class GettingDataFromDB {

    private static final String PROJECT_PROPERTIES = "resources"+DBUtil.FILE_SEPERATOR+"l1.properties";

	/**
	 * This is the main method for entry point into the application.
	 *
	 * @param args
	 */

	private static Properties PROPERTIES = new Properties();

	public final static String PROJECT_PROPERTIES_FILE_NAME = "";
	public final static String EXCEL_FILE_NAME = "excelFileName";
	public final static String EXCEL_SHEET_NAME = "excelSheetName";
	public final static String QUERY_FILE_NAME = "queryFileName";
	public final static String WHERE_CLAUSE = "columnsForWhereClause";
	public final static String QUERY_INDENTIFIER_COLUMN_NAME = "queryIdentiferColumnName";
	public final static String TEST_CASE_COLUMN_NAME = "testCaseColumnName";
	public final static String HEADER_COLUM_INDEX = "headerColumnIndex";
	public final static String DB_IDENTIFER = "db_identifer";
	public final static String PRIMARY_DB_IDENTIFIER = "primaryDBIdentifier";
	private static final String OUT_PUT_COLUMN_NAME = "outputColumnName";
    private static final String OUT_PUT_SECOUND_COLUMN_NAME = "outputAdditinalColumnName";

	static {
		try {
		    FileInputStream inputStream = new FileInputStream(PROJECT_PROPERTIES);
			PROPERTIES.load(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
			LoggerUtil.logErrorMessage("Exception while reading "+PROJECT_PROPERTIES_FILE_NAME, e);
		}
	}

	public static String getProperty(String propertyName) {
		return PROPERTIES.getProperty(propertyName);
	}

	public static String[] getPropertyAndConvertToStringArray(String propertyName) {
		String property = PROPERTIES.getProperty(propertyName);
		return property.split(",");
	}
	public static void main(final String[] args) {

		// Call like below to get List of DBResults for a specified file
		//List<DBResult> queryResultsForOneFile = DBHelperClass.executeQueries("query");

		// Call like below to get List of DBResults for a all files in the
		// resurce\queries and respective sub folder (json or excel)

		//List<DBResult> queryResultsForAllFiles = DBHelperClass.executeQueries();

		List<String> queryFilesList = new ArrayList<String>();
		queryFilesList.add("query");

		// Call like below if you have a list of query files to execute
		//List<DBResult> queryResultsForListOFFiles = DBHelperClass.executeQueries(queryFilesList);

		// Following is the example to use List of DBResult result from above call, in
		// this example result is going log to a log file
		//printResponse(queryResultsForOneFile);
		//printResponse(queryResultsForAllFiles);
		//printResponse(queryResultsForListOFFiles);

		//executeDynamicQueries ("Q1");
		executeDynamicQueries ("Q2");

	}

	private static List<DBResult> executeDynamicQueries (String queryIdentifier) {

		String queryFileName = getProperty(queryIdentifier+"_"+QUERY_FILE_NAME);
		if(StringUtils.isBlank(queryFileName)) {
			LoggerUtil.logErrorMessage("Query file "+queryIdentifier+"_"+QUERY_FILE_NAME +"is Blank");
			return null;
		}
		String excelFileName = getProperty(queryIdentifier+"_"+EXCEL_FILE_NAME);
		if(StringUtils.isBlank(excelFileName)) {
			LoggerUtil.logErrorMessage("Excel File "+queryIdentifier+"_"+EXCEL_FILE_NAME +"is Blank");
			return null;
		}

		String excelSheetName = getProperty(queryIdentifier+"_"+EXCEL_SHEET_NAME);
		if(StringUtils.isBlank(excelSheetName)) {
			LoggerUtil.logErrorMessage("Excel Sheet "+queryIdentifier+"_"+EXCEL_SHEET_NAME +"is Blank");
			return null;
		}

		String[] columns = getPropertyAndConvertToStringArray(queryIdentifier+"_"+WHERE_CLAUSE);

		int headerColumnIndex = Integer.parseInt(getProperty(queryIdentifier+"_"+HEADER_COLUM_INDEX));

		String queryIdentiferColumnName = getProperty(queryIdentifier+"_"+QUERY_INDENTIFIER_COLUMN_NAME);
		String testCaseColumnName =  getProperty(queryIdentifier+"_"+TEST_CASE_COLUMN_NAME);
		String dbIdentifier = getProperty(queryIdentifier+"_"+DB_IDENTIFER);
		if(dbIdentifier == null) {
			dbIdentifier = DBUtil.getDBProperty(PRIMARY_DB_IDENTIFIER);
		}

		String outPutColumnName = getProperty(queryIdentifier+"_"+OUT_PUT_COLUMN_NAME);
		String outPutSecoundColumnName = getProperty(queryIdentifier+"_"+OUT_PUT_SECOUND_COLUMN_NAME);
		return DBHelperClass.executeDynamicQueries(queryIdentifier, dbIdentifier, queryFileName, excelFileName, excelSheetName, columns, headerColumnIndex, queryIdentiferColumnName, testCaseColumnName, outPutColumnName, outPutSecoundColumnName);
	}

	/**
	 * This method takes list of DBResult objects and prints all the DB Result to
	 * console.
	 *
	 * @param queryResults : List containing DBResult
	 */
	private static void printResponse(final List<DBResult> queryResults) {
		if (queryResults == null || queryResults.size() == 0) {
			LoggerUtil.logDebugMessage("No result to display");
		} else {
			for (final DBResult result : queryResults) {
				if (result != null) {
					LoggerUtil.logDebugMessage("Query : " + result.getQuery());
					LoggerUtil.logDebugMessage("Query File name : " + result.getQueryFileName());
					LoggerUtil.logDebugMessage("Query Id : " + result.getId());
					if (result.getOperation().toString().equalsIgnoreCase("SELECT")) {
						LoggerUtil.logDebugMessage("SELECT query successful, no of rows returned is: "
								+ result.getNoOfRowsImpacted() + " and following result returned");
						LoggerUtil.logDebugMessage("----------------------------------------------------------");
						final List<Map<String, String>> resultList = result.getResultSetList();
						for (final Map<String, String> resultMap : resultList) {
							final Iterator<String> iterator = resultMap.keySet().iterator();
							String formatedResults = "";
							while (iterator.hasNext()) {
								final String key = iterator.next();
								formatedResults = formatedResults + " " + key + ": " + resultMap.get(key) + ",";
							}
							LoggerUtil.logDebugMessage(formatedResults);
						}
						LoggerUtil.logDebugMessage("----------------------------------------------------------");
					} else if (result.getOperation().toString().equalsIgnoreCase("INSERT")) {
						LoggerUtil.logDebugMessage("----------------------------------------------------------");
						LoggerUtil.logDebugMessage(
								"INSERT query successful, number of rows inserted is: " + result.getNoOfRowsImpacted());
						LoggerUtil.logDebugMessage("----------------------------------------------------------");
					} else if (result.getOperation().toString().equalsIgnoreCase("UPDATE")) {
						LoggerUtil.logDebugMessage("----------------------------------------------------------");
						LoggerUtil.logDebugMessage(
								"UPDATE query successful, number of rows updated is: " + result.getNoOfRowsImpacted());
						LoggerUtil.logDebugMessage("----------------------------------------------------------");
					} else if (result.getOperation().toString().equalsIgnoreCase("DELETE")) {
						LoggerUtil.logDebugMessage("----------------------------------------------------------");
						LoggerUtil.logDebugMessage(
								"DELETE query successful, number of rows deleted is: " + result.getNoOfRowsImpacted());
						LoggerUtil.logDebugMessage("----------------------------------------------------------");
					}
				}
			}
		}
	}
}
