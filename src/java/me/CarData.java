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

public class CarData {

    public static CarBean insert(CarBean bean) {
        try {
            Connection con = me.Db.connect();
            PreparedStatement pst = con.prepareStatement("insert into carinfo values(?,?,?)");
            pst.setString(1,bean.getCarName());
            pst.setString(2,bean.getCarNumber());
            pst.setString(3,bean.getCarAmount());
            pst.executeUpdate();
            return bean;
        } catch (Exception e) {
            return null;
        }
    }
 
    
    
    public static CarBean details(CarBean bean) {
        try {
            Connection con = me.Db.connect();
            PreparedStatement pst = con.prepareStatement("select * from carinfo");
            ArrayList carNames = new ArrayList();
            ArrayList carNumbers = new ArrayList();
            ArrayList carAmounts = new ArrayList();
            ResultSet rst = pst.executeQuery();
            while (rst.next()) {
                carNames.add(rst.getString(1));
                carNumbers.add(rst.getString(2));
                carAmounts.add(rst.getString(3));
            }
            bean.setCarNames(carNames);
            bean.setCarNumbers(carNumbers);
            bean.setCarAmounts(carAmounts);
            return bean;
        } catch (Exception e) {
            return null;
        }
    }
}
