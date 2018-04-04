
package me;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Test {
public static void main(String []args) throws SQLException    

{

Connection con=Db.connect();

        PreparedStatement pst=con.prepareStatement("select * from alogin");
        ResultSet rst=pst.executeQuery();
       System.out.println(rst.next());
        System.exit(0);
        while(rst.next())
        {
            System.out.println("hhe");
            System.out.println(rst.getString(1));
         
        }
        
        }
}