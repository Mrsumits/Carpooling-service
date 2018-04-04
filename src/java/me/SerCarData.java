package me;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class SerCarData {

   public static SerCarBean details(SerCarBean bean)
    {
        try
        {
        Connection con=me.Db.connect();
        PreparedStatement pst=con.prepareStatement("select * from carinfo");
        ArrayList carNames=new ArrayList();
        ArrayList carNumbers=new ArrayList();
        ArrayList carAmounts=new ArrayList();
        ResultSet rst=pst.executeQuery();
        while(rst.next())
        {
        carNames.add(rst.getString(1));
        carNumbers.add(rst.getString(2));
        carAmounts.add(rst.getString(3));
        }
        bean.setCarNames(carNames);
        bean.setCarNumbers(carNumbers);
        bean.setCarAmounts(carAmounts);
        return bean;
        }
        catch(Exception e)
        {
            return null;
        }
}
}
