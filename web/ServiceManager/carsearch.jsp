<%@page import="me.CarBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="me.SerCarBean"%>
<%@include file="header.jsp" %>
<div class="container" style="border-left: blue solid medium">
    <h2>Car List</h2>
    <div class="row">
        <form action="" method="post">
         <table class="table table-striped">
    <thead>
      <tr>
        <th>Car Name</th>
        <th>Car Number</th>
        <th> Amount</th>
      
       
              </tr>
    </thead>
    <tbody>
      
    
        <%
        CarBean bean=(CarBean)session.getAttribute("carDataAdmin");
        ArrayList first=bean.getCarNames();
        ArrayList second =bean.getCarNumbers();
        ArrayList third = bean.getCarAmounts();
        for(int i=0;i<first.size();i++)
           
        {
            
            out.println("<tr><td>"+first.get(i)+"</td><td>"+second.get(i)+"</td><td>"+third.get(i)+"</td>");
            

        }
        %>
        
        
        </tbody>
  </table>
        </form
       
    </div>
</div>
<br>
<%@include file="footer.jsp" %>