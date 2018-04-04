    package me;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class SerUserDB 
{
public static SerUserBean login(SerUserBean bean)
    {
        try
        {
        Connection con=me.Db.connect();
        PreparedStatement pst=con.prepareStatement("select username from alogin where username=? and password=?");
        pst.setString(1, bean.getUserName());
        pst.setString(2, bean.getPassword());
        ResultSet rst=pst.executeQuery();
        if(rst.next())
        {
            System.out.println(rst.getString(1));
            bean.setIsValid(true);
        }else{bean.setIsValid(false);}
        return bean;
        }
        catch(Exception e)
        {
            System.out.println(e);
            return null;
        }
}
}