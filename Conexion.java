/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author luisf
 */
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    Connection con;
    String url="jdbc:oracle:thin:@localhost:1521:xe";
    String user = "LUISR";
    String pass = "batman";
    public Connection conectar(){
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
        }
       return con; 
    }
    
}
