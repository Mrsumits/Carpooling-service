/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class BookRideData {

    public static void insert(BookRideBean bean) {
        try {
            Connection con = me.Db.connect();
              PreparedStatement pst1 = con.prepareStatement("delete from bookride where name=?");
               pst1.setString(1, UserName.getUsername());
             pst1.executeUpdate();
               pst1.close();
            PreparedStatement pst = con.prepareStatement("insert into bookride values(?,?,?,?,?,?)");
            pst.setString(1, bean.getDate());
            pst.setString(2, bean.getSrc());
            pst.setString(3, bean.getDes());
            pst.setString(4, bean.getCar());
            pst.setString(5,bean.getAmount());
            pst.setString(6, UserName.getUsername());
            pst.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void delete(BookRideBean bean) {
        try {
            Connection con = me.Db.connect();
              PreparedStatement pst1 = con.prepareStatement("delete from bookride where name=?");
               pst1.setString(1, UserName.getUsername());
                       
            pst1.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static BookRideBean getData(BookRideBean bean) {
        try {
            Connection con = me.Db.connect();
            
            PreparedStatement pst = con.prepareStatement("select * from bookride where name=?");
            pst.setString(1, UserName.getUsername());
            ResultSet rst=pst.executeQuery();
            if(rst.next())
            {
                bean.setDate(rst.getString(1));
                bean.setSrc(rst.getString(2));
                bean.setDes(rst.getString(3));
                bean.setCar(rst.getString(4));
                bean.setAmount(rst.getString(5));
            }
            pst.close();
            return bean;
        } catch (Exception e) {
            System.out.println(e);
        }
        return bean;
    }
}
