
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package database;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection connect() {
        try {
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost/fudbalski_klubovi",
                    "root",
                    ""
            );

            return conn;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
}