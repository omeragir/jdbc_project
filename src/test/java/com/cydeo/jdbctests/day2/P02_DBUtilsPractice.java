package com.cydeo.jdbctests.day2;

import com.cydeo.jdbctests.utility.DB_UTIL;
import org.junit.jupiter.api.Test;

import java.util.Map;

public class P02_DBUtilsPractice {
    @Test
    public void task(){
        //create connection
        DB_UTIL.createConnection();

        //run query
        DB_UTIL.runQuery("select first_name,last_name,salary from employees");

        //get result
        System.out.println("--Get me first row first column--");
        System.out.println(DB_UTIL.getFirstRowFirstColumn());

        System.out.println("--Get me all column names--");
        System.out.println(DB_UTIL.getAllColumnNamesAsList());

        System.out.println("--Get me all first names--");
        System.out.println(DB_UTIL.getColumnDataAsList(1));

        System.out.println("--Get me how many row we have--");
        System.out.println(DB_UTIL.getRowCount());

        System.out.println("--Get me certain  row info--");
        System.out.println("--Get me as map--");
        System.out.println(DB_UTIL.getRowMap(2));

        System.out.println("--Get me as list--");
        System.out.println(DB_UTIL.getRowDataAsList(2));

        System.out.println("--Get me all data  as a list of map list--");
        for (Map<String, String> rowmap : DB_UTIL.getAllRowAsListOfMap()) {
            System.out.println(rowmap);
        }


        //close the connection
        DB_UTIL.destroy();
    }

}
