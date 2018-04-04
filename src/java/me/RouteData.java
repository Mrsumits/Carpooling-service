/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author brije
 */
public class RouteData {
    public static RouteBean insert(RouteBean bean) {
        try {
            Connection con = me.Db.connect();
            PreparedStatement pst = con.prepareStatement("insert into route values(?,?)");
            pst.setString(1,bean.getSrc());
            pst.setString(2,bean.getDes());
            pst.executeUpdate();
            return bean;
        } catch (Exception e) {
            return null;
        }
    }
    
}
