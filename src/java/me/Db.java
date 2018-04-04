    package me;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class Db 
{
    public static Connection con;
    private static final String database = "orcl";
    private static final String port = "1521";
    private static final String username = "hr";
    private static final String password = "hr";
    
   public static Connection connect()
    {
    try 
        {
            Class.forName("oracle.jdbc.OracleDriver");
            con = DriverManager.getConnection("jdbc:Oracle:thin:@localhost:" + 1521 + "/" + "orcl","hr","hr");
            if (con != null) {
                return con;
            }

        } 
          catch (Exception e) 
          {
              System.out.println(e);
            return null;
           }

        return null;
        
    }
    
    
   public void disconnect()
   {
   if(con!=null)
   {
       try
       {
           con.close();
       } 
       catch (SQLException ex) 
       {
           Logger.getLogger(Db.class.getName()).log(Level.SEVERE, null, ex);
       }
   }        
   }
   }