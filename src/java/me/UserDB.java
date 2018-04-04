/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author brije
 */
public class UserDB {

     public static userBean login(userBean bean)
    {
        try
        {
        Connection con=me.Db.connect();
        PreparedStatement pst=con.prepareStatement("select username from login where username=? and password=?");
        pst.setString(1, bean.getUserName());
        pst.setString(2, bean.getPassword());
        ResultSet rst=pst.executeQuery();
        if(rst.next()){
            bean.setIsValid(true);
        }else{bean.setIsValid(false);}
        return bean;
        }
        catch(Exception e){return null;}
        
        
    }
}
