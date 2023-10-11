package com.quantum.utlities;

import com.qmetry.qaf.automation.core.ConfigurationManager;
import com.quantum.baseclass.BasePage;
import com.quantum.utility.LoggingUtils;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.testng.Assert;

import java.io.File;
import java.sql.SQLException;
import java.util.*;

public class Database {
    private final JdbcTemplate jdbc;

    public Database() {
        String dbHost = getDbHost();
        String dbPort = getDbPort();
        String databaseName = getDbName();
        String dbUserName = getDbUserName();
        String dbPassword = getDbPassword();
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.ibm.db2.jcc.DB2Driver");
        dataSource.setUrl("jdbc:db2://" + dbHost + ":" + dbPort + "/" + databaseName);
        dataSource.setUsername(dbUserName);
        dataSource.setPassword(dbPassword);
        jdbc = new JdbcTemplate(dataSource);
    }

    private String getDbHost() {
        return ConfigurationManager.getBundle().getPropertyValue("dbHost");
    }

    private String getDbPort() {
        return ConfigurationManager.getBundle().getPropertyValue("dbPort");
    }

    private String getDbName() {
        return ConfigurationManager.getBundle().getPropertyValue("databaseName");
    }

    private String getDbUserName() {
        return ConfigurationManager.getBundle().getPropertyValue("dbUserName");
    }

    private String getDbPassword() {
        return ConfigurationManager.getBundle().getPropertyValue("dbPassword");
    }

    private String getSchema() {
        return ConfigurationManager.getBundle().getPropertyValue("dbSchema");
    }


    private int dbColumnStartsNumber(ArrayList<String> k) {
        int dbColumnStartAt = 0;
        for (String k1 : k) {

            if (k1.equals("Db_Column_Starts")) {
                break;

            }
            dbColumnStartAt = dbColumnStartAt + 1;
        }
        return (dbColumnStartAt + 1);
    }

    public int numberOfRecordsPresent(String query) throws SQLException, ClassNotFoundException {
        int records = 0;
        String dbData = null;
        try {
            dbData = (String) jdbc.queryForObject(query, Object.class);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return records;
    }

    public String queryBuilder(Map<String, String> mapobj, String tableName) {
        String schemaName = getSchema();
        String columnData = "values(CURRENT TIMESTAMP,";
        String columnNames = "Insert into " + schemaName + "." + tableName + "(INSRT_PROCESS_TMSTMP,";
        StringBuilder columnNamesStringBuilder = null;
        StringBuilder columnDataStringBuilder = null;

        try {
            Set<String> columnHeaders = mapobj.keySet();
            ArrayList<String> columnHeaderArray = new ArrayList<String>(columnHeaders);

            int dbColumnStartAt = dbColumnStartsNumber(columnHeaderArray);
            for (int i = dbColumnStartAt; i < columnHeaderArray.size(); i++) {

                if (!mapobj.get(columnHeaderArray.get(i)).equals("")) {
                    columnNames = columnNames.concat(columnHeaderArray.get(i));
                    columnNames = columnNames.concat(",");
                    if (mapobj.get(columnHeaderArray.get(i)).equalsIgnoreCase("NULL")) {
                        columnData = columnData.concat(mapobj.get(columnHeaderArray.get(i)));
                    } else if (mapobj.get(columnHeaderArray.get(i)).equalsIgnoreCase("BLANK")) {
                        columnData = columnData.concat("''");
                    } else {
                        columnData = columnData.concat("'" + mapobj.get(columnHeaderArray.get(i)) + "'");
                    }

                    columnData = columnData.concat(",");

                }

            }
            int columnDataLastIndexValue = columnData.lastIndexOf(',');
            int columnNameLastIndexValue = columnNames.lastIndexOf(',');
            columnNamesStringBuilder = new StringBuilder(columnNames);
            columnDataStringBuilder = new StringBuilder(columnData);
            columnDataStringBuilder.setCharAt(columnDataLastIndexValue, ')');
            columnNamesStringBuilder.setCharAt(columnNameLastIndexValue, ')');

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return columnNamesStringBuilder.toString() + " " + columnDataStringBuilder.toString();
    }

    public String queryBuilderForCurrValUpdtTmstmp(Map<String, String> mapobj, String tableName) {
        String schemaName = getSchema();
        String columnData = "values(CURRENT TIMESTAMP,";
        String columnNames = "Insert into " + schemaName + "." + tableName + "(CURR_VAL_UPDT_TMSTMP,";
        StringBuilder columnNamesStringBuilder = null;
        StringBuilder columnDataStringBuilder = null;

        try {
            Set<String> columnHeaders = mapobj.keySet();
            ArrayList<String> columnHeaderArray = new ArrayList<String>(columnHeaders);

            int dbColumnStartAt = dbColumnStartsNumber(columnHeaderArray);
            for (int i = dbColumnStartAt; i < columnHeaderArray.size(); i++) {

                if (!mapobj.get(columnHeaderArray.get(i)).equals("")) {
                    columnNames = columnNames.concat(columnHeaderArray.get(i));
                    columnNames = columnNames.concat(",");
                    if (mapobj.get(columnHeaderArray.get(i)).equalsIgnoreCase("NULL")) {
                        columnData = columnData.concat(mapobj.get(columnHeaderArray.get(i)));
                    } else {
                        columnData = columnData.concat("'" + mapobj.get(columnHeaderArray.get(i)) + "'");
                    }

                    columnData = columnData.concat(",");

                }

            }
            int columnDataLastIndexValue = columnData.lastIndexOf(',');
            int columnNameLastIndexValue = columnNames.lastIndexOf(',');
            columnNamesStringBuilder = new StringBuilder(columnNames);
            columnDataStringBuilder = new StringBuilder(columnData);
            columnDataStringBuilder.setCharAt(columnDataLastIndexValue, ')');
            columnNamesStringBuilder.setCharAt(columnNameLastIndexValue, ')');

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return columnNamesStringBuilder.toString() + " " + columnDataStringBuilder.toString();
    }


    public String queryBuilderUpdate(Map<String, String> mapobj, String tableName) {
        String columnData = "CURRENT TIMESTAMP";
        String schemaName = getSchema();
        String columnNames = "UPDATE " + schemaName + "." + tableName + " SET INSRT_PROCESS_TMSTMP=";
        StringBuilder columnNamesStringBuilder = null;
        String relational = null;

        try {
            Set<String> columnHeaders = mapobj.keySet();
            ArrayList<String> columnHeaderArray = new ArrayList<String>(columnHeaders);

            int dbColumnStartAt = dbColumnStartsNumber(columnHeaderArray);
            columnNames = columnNames.concat(columnData);
            columnNames = columnNames.concat(", ");
            for (int i = dbColumnStartAt; i < columnHeaderArray.size(); i++) {
                if (!columnHeaderArray.get(i).equals("INSRT_PROCESS_TMSTMP")) {
                    if (!mapobj.get(columnHeaderArray.get(i)).equals("")) {
                        if (mapobj.get(columnHeaderArray.get(i)).equalsIgnoreCase("NULL")) {
                            columnNames = columnNames.concat(columnHeaderArray.get(i) + "=" + mapobj.get(columnHeaderArray.get(i).trim()) + "");
                            columnNames = columnNames.concat(", ");
                        } else {
                            columnNames = columnNames.concat(columnHeaderArray.get(i) + "='" + mapobj.get(columnHeaderArray.get(i).trim()) + "'");
                            columnNames = columnNames.concat(", ");
                        }

                    } else {
                        columnNames = columnNames.concat(columnHeaderArray.get(i) + "= NULL");
                        columnNames = columnNames.concat(", ");
                    }
                }

            }
            if (tableName.equals("ACCT_DIM")) {
                relational = "WHERE ACCT_NUM='" + mapobj.get("ACCT_NUM") + "'";
            } else if (tableName.equals("CUST_ACCT_RLTNP_DIM") || tableName.equals("PURL_CUST_PROFILE")) {
                relational = "WHERE ACCT_NUM='" + mapobj.get("ACCT_NUM") + "' AND CIS_CUST_ID='" + mapobj.get("CIS_CUST_ID") + "'";
            } else if (tableName.equals("CUST_DIM")) {
                relational = "WHERE CIS_CUST_ID='" + mapobj.get("CIS_CUST_ID") + "'";
            }

            int columnDataLastIndexValue = columnNames.lastIndexOf(',');
            columnNamesStringBuilder = new StringBuilder(columnNames);
            columnNamesStringBuilder.setCharAt(columnDataLastIndexValue, ' ');

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return columnNamesStringBuilder.append(relational).toString();
    }

    public String queryBuilderUpdateNoTimeStamp(Map<String, String> mapobj, String tableName) {
        String columnData = "";
        String schemaName = getSchema();
        String columnNames = "UPDATE " + schemaName + "." + tableName + " SET ";
        StringBuilder columnNamesStringBuilder = null;
        String relational = null;

        try {
            Set<String> columnHeaders = mapobj.keySet();
            ArrayList<String> columnHeaderArray = new ArrayList<String>(columnHeaders);

            int dbColumnStartAt = dbColumnStartsNumber(columnHeaderArray);
            columnNames = columnNames.concat(columnData);
            for (int i = dbColumnStartAt; i < columnHeaderArray.size(); i++) {

                if (!mapobj.get(columnHeaderArray.get(i)).equals("")) {
                    columnNames = columnNames.concat(columnHeaderArray.get(i) + "='" + mapobj.get(columnHeaderArray.get(i).trim()) + "'");
                    columnNames = columnNames.concat(", ");
                } else {
                    columnNames = columnNames.concat(columnHeaderArray.get(i) + "= NULL");
                    columnNames = columnNames.concat(", ");
                }
            }
            if (tableName.equals("ACCT_DIM")) {
                relational = "WHERE ACCT_NUM='" + mapobj.get("ACCT_NUM") + "'";
            } else if (tableName.equals("CUST_ACCT_RLTNP_DIM") || tableName.equals("PURL_CUST_PROFILE")) {
                relational = "WHERE ACCT_NUM='" + mapobj.get("ACCT_NUM") + "' AND CIS_CUST_ID='" + mapobj.get("CIS_CUST_ID") + "'";
            } else if (tableName.equals("CUST_DIM")) {
                relational = "WHERE CIS_CUST_ID='" + mapobj.get("CIS_CUST_ID") + "'";
            }

            int columnDataLastIndexValue = columnNames.lastIndexOf(',');
            columnNamesStringBuilder = new StringBuilder(columnNames);
            columnNamesStringBuilder.setCharAt(columnDataLastIndexValue, ' ');

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return columnNamesStringBuilder.append(relational).toString();
    }

    public String queryBuilder_NoTimestmap(Map<String, String> mapobj, String tableName) {
        String schemaName = getSchema();
        String columnData = "values(";
        String columnNames = "Insert into " + schemaName + "." + tableName + "(";
        StringBuilder columnNamesStringBuilder = null;
        StringBuilder columnDataStringBuilder = null;

        try {
            Set<String> columnHeaders = mapobj.keySet();
            ArrayList<String> columnHeaderArray = new ArrayList<String>(columnHeaders);

            int dbColumnStartAt = dbColumnStartsNumber(columnHeaderArray);
            for (int i = dbColumnStartAt; i < columnHeaderArray.size(); i++) {

                if (!mapobj.get(columnHeaderArray.get(i)).equals("")) {
                    columnNames = columnNames.concat(columnHeaderArray.get(i));
                    columnNames = columnNames.concat(",");
                    if (mapobj.get(columnHeaderArray.get(i)).equalsIgnoreCase("NULL")) {
                        columnData = columnData.concat(mapobj.get(columnHeaderArray.get(i)));
                    } else {
                        columnData = columnData.concat("'" + mapobj.get(columnHeaderArray.get(i)) + "'");
                    }
                    columnData = columnData.concat(",");

                }

            }
            int columnDataLastIndexValue = columnData.lastIndexOf(',');
            int columnNameLastIndexValue = columnNames.lastIndexOf(',');
            columnNamesStringBuilder = new StringBuilder(columnNames);
            columnDataStringBuilder = new StringBuilder(columnData);
            columnDataStringBuilder.setCharAt(columnDataLastIndexValue, ')');
            columnNamesStringBuilder.setCharAt(columnNameLastIndexValue, ')');

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return columnNamesStringBuilder.toString() + " " + columnDataStringBuilder.toString();
    }

    public String selectCountQuery(Map<String, String> mapobj, String tableName) {
        String relational = null;
        String schemaName = getSchema();
        String query = "SELECT COUNT(*) FROM " + schemaName + "." + tableName;

        if (tableName.equals("ACCT_DIM")) {
            relational = " WHERE ACCT_NUM='" + mapobj.get("ACCT_NUM") + "'";
        } else if (tableName.equals("CUST_ACCT_RLTNP_DIM") || tableName.equals("PURL_CUST_PROFILE")) {
            relational = " WHERE ACCT_NUM='" + mapobj.get("ACCT_NUM") + "' AND CIS_CUST_ID='" + mapobj.get("CIS_CUST_ID") + "'";
        } else if (tableName.equals("CUST_DIM")) {
            relational = " WHERE CIS_CUST_ID='" + mapobj.get("CIS_CUST_ID") + "'";
        }

        return query + relational;
    }


    public String customizeQueryResult(final String query) {
        String value = null;
        try {
            value = jdbc.queryForObject(query, String.class);
            System.out.println("Query:-" + query);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            Assert.fail("Query is not given properly, Error is:-" + e.getMessage()
                    + "Query is :-" + query);
        }
        return value;
    }


    public void insertData(String query) {
        try {
            jdbc.batchUpdate(new String[]{query});
            System.out.println("Insert/Update is successful and query is:- " + query);
            new BasePage().writeToFile(query.replace(ConfigurationManager.getBundle().getPropertyValue("dbSchema"),
                    "customerdata").replace("CURRENT TIMESTAMP", "CURRENT_TIMESTAMP") + ";");
        } catch (Exception e) {
            System.out.println(e.getMessage());
            Assert.fail("Unable to update/insert record to database table, Error is:-" + e.getMessage()
                    + "Query is :-" + query);
        }

    }


    public List<Map<String, Object>> readRows(String query) {
        return jdbc.queryForList(query);
    }

    public Map<String, Object> readRow(String query) {
        Map<String, Object> result = null;
        try {
            result = jdbc.queryForMap(query);
        } catch (Exception e) {
            LoggingUtils.log((new File((String) Objects.requireNonNull(BasePage.getExtentReportHelper().
                            getScreenshot("Screenshot")))),
                    "Error to execute query:-" + query);
        }
        return result;
    }

}
