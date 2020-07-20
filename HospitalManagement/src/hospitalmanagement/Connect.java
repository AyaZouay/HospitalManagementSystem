/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospitalmanagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

/**
 *
 * @author aya zouay
 */
public class Connect {
    Connection con ;
    public Connect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
        }catch(ClassNotFoundException e){
            System.err.println(e);}
        try{
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
        
        }
        catch(SQLException e){
            System.err.println(e);}

        
    }
    Connection ObtenirConnection() {return con;}
    
    
    
}
