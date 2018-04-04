%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="me.Db"%>
<%@include file="header.jsp" %>
<div class="container" style="border-left: blue solid medium">
    <h2> Booking Details</h2>
    <div class="row">
        <div class="col-md-6 col-lg-6 col-sm-6">
            <form action="">
                
                <%
                    try{
                String tname=session.getAttribute("userNameMain").toString();
                Connection con=Db.connect();
                PreparedStatement pst=con.prepareStatement("select * from bookride where email=?");
                pst.setString(1, tname);
                ResultSet rst=pst.executeQuery();
                
                    while(rst.next())
                    {
                    out.println(":Date:"+rst.getString(1)+"<br>");
                    out.println("UserName::"+rst.getString(2)+"<br>");
                    out.println("Address::"+rst.getString(3)+"<br>");
                    out.println("Car::"+rst.getString(4)+"<br>");
                    out.println("Amount::"+rst.getString(5)+"<br>");
                        
                        
                    }
                    pst.close();
                    
                    }
                    catch(Exception e){System.out.println(e);}
                %>
               
               
                
               
            </form>
        </div>
    </div>
</div>
<br>