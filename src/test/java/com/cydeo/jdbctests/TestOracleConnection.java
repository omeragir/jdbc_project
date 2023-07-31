package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {

        //Connections String
        String dbUrl = "jdbc:oracle:thin:@3.83.82.216:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        //Create the connections
        //DriverManager class getConnection Method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        //it will help us to execute queries
        Statement statement = conn.createStatement();

        //ResulSet will store data after execution.It stores only data (there is no table info)
        ResultSet rs = statement.executeQuery("select * from EMPLOYEES");

        //Getting Data
/*
        rs.next();
        System.out.println("-----First Row----");
        //right now pointer is in the first row

        //how to get data from first row
        //rs.getInt(index)--> this method returns integer.Index start from 1 in SQL.It refers column positions
        System.out.println(rs.getInt(1));

        //get the Europe - region name
        System.out.println(rs.getString(2));

        //same info we can get with columnLabel not column index
        System.out.println(rs.getInt("REGION_ID"));
        System.out.println(rs.getString("REGION_NAME"));

        System.out.println("-----Second Row----");
        //Get me second row result in following format : 2- Americas
        rs.next();
        System.out.println(rs.getInt(1) + " - " + rs.getString("REGION_NAME"));

        System.out.println("-----Third Row----");
        //Get me second row result in following format : 2- Americas
        rs.next();
        System.out.println(rs.getInt(1) + " - " + rs.getString("REGION_NAME"));

        System.out.println("-----4th Row----");
        //Get me second row result in following format : 2- Americas
        rs.next();
        System.out.println(rs.getInt(1) + " - " + rs.getString("REGION_NAME"));

 */

        //What if we have 100 rows, we want to print first and second column

        while (rs.next()) {
            System.out.println(rs.getInt(1) + " - " + rs.getString(2)+ " - " + rs.getString(3));
        }


        //close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
