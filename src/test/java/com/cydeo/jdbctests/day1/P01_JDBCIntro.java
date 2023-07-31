package com.cydeo.jdbctests.day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCIntro {

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
        Statement statement = conn.createStatement();

        //ResulSet will store data after execution.It stores only data (there is no table info)
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where MANAGER_ID is not null ");

        //10 -Administration-200-1700
        while (rs.next()){
            System.out.println(rs.getInt(1) + "-" + rs.getString(2)+ "-" + rs.getString(3)+ "-" + rs.getString(4));
        }

        System.out.println("---------------------------------- ");
        //Can we run another query in same connections? -Yes
        rs = statement.executeQuery("select * from LOCATIONS ");
        //1297 Via Cola di Rie - Roma
        while (rs.next()){
            System.out.println(rs.getString("STREET_ADDRESS")+" - "+rs.getString("CITY"));
        }




        //close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
