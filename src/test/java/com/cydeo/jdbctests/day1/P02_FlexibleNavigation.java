package com.cydeo.jdbctests.day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {

    //Connections String
    String dbUrl = "jdbc:oracle:thin:@3.83.82.216:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        //Create the connections
        //DriverManager class getConnection Method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        //it will help us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        //ResulSet will store data after execution.It stores only data (there is no table info)
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME from EMPLOYEES");

        //first row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        //second row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        System.out.println("-------------------");
        //last row
        /*
        ResultSet.TYPE_SCROLL_INSENSITIVE-->to do flexible navigation between rows
        ResultSet.CONCUR_READ_ONLY       -->do not update anything from database,only read
         */
        rs.last();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        //how many rows we have(last+getRow)
        int rowNum=rs.getRow();  // the current row number;0 if there is no current row
        System.out.println("rowNum = " + rowNum);

        System.out.println("-------ABSOLUTE------------");
        rs.absolute(46);
        System.out.println(rs.getString(1)+" "+rs.getString(2));//Alexander Hunold

        System.out.println("-------Previous------------");
        rs.previous();
        System.out.println(rs.getString(1)+" "+rs.getString(2));//Guy Himuro


        //print the whole table
        rs.first();//jump to first row
        rs.beforeFirst();//jump into before first row

        System.out.println("----------Printing Table---------");
        while (rs.next()){
            System.out.println(rs.getString(1)+" "+rs.getString(2));
        }

        //close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
