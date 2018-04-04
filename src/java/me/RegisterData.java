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
public class RegisterData {

    public static RegisterBean insert(RegisterBean bean) {
        try {
            Connection con = me.Db.connect();
            PreparedStatement pst = con.prepareStatement("insert into registration values(?,?,?,?,?)");
            pst.setString(1, bean.getEmail());
            pst.setString(2, bean.getUsername());
            pst.setString(3, bean.getAddress());
            pst.setString(4, bean.getMobileno());
            pst.setString(5, bean.getDob());
            pst.executeUpdate();
            pst.close();

            PreparedStatement pst2 = con.prepareStatement("insert into login values(?,?)");
            pst2.setString(1, bean.getEmail());
            pst2.setString(2, bean.getPassword());
            pst2.executeUpdate();
            pst2.close();
            return bean;
        } catch (Exception e) {
            return null;
        }

    }

}
