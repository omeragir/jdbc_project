package com.cydeo.jdbctests.day2;

import com.cydeo.jdbctests.utility.DB_UTIL;
import org.junit.jupiter.api.Test;

public class P03_Library_Test {

    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username = "library2_client";
    String password = "6s2LQQTjBcGFfDhY";

    @Test
    public void task1(){
        //create connection
        DB_UTIL.createConnection(url,username,password);

        //run query
        DB_UTIL.runQuery("select count(*) from books");

         String booksCount = DB_UTIL.getFirstRowFirstColumn();
        System.out.println(booksCount);

        //close connection
        DB_UTIL.destroy();

    }


}
