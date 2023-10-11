package com.quantum.utlities;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class CSVFileHandler {
    public static List<Map<String, String>> readCSVFile(String csvFileName) {
        String csvFileLocation = "src/main/resources/mapping/"; //ConfigurationManager.getBundle().getPropertyValue("testdata.input.excelPath");


        String file = System.getProperty("user.dir") + File.separator + csvFileLocation + File.separator + csvFileName;
        List<String> headers = null;
        List<List<String>> headerValues = new LinkedList<>();
        List<Map<String, String>> propositionCSVMap = new LinkedList<>();
        Map<String, String> csvRowData = null;
        try (Stream<String> lines = Files.lines(Paths.get(file))) {
            List<List<String>> values = lines.map(line -> Arrays.asList(line.split(",(?=([^\\\"]*\\\"[^\\\"]*\\\")*[^\\\"]*$)"))).collect(Collectors.toList());
            headers = values.get(0);
            for (int i = 1; i < values.size(); i++) {
                headerValues.add(values.get(i));
            }
            for (int j = 0; j < headerValues.size(); j++) {
                csvRowData = new LinkedHashMap<>();
                for (int i = 0; i < headers.size(); i++) {
                    try {
                        csvRowData.put(headers.get(i), headerValues.get(j).get(i));
                    } catch (ArrayIndexOutOfBoundsException arrayIndexBound) {
                        csvRowData.put(headers.get(i), "");
                    }

                }
                propositionCSVMap.add(csvRowData);
            }


        } catch (IOException e) {
            e.printStackTrace();
        }

        return propositionCSVMap;
    }


}
