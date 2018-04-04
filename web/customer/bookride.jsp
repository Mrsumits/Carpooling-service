<%@page import="me.CarData"%>
<%@page import="me.CarBean"%>
<%@include file="header.jsp" %>
<div class="container" style="border-left: blue solid medium">
    <h2>Book The Ride</h2>
    <div class="row">
        
            
                <div class="form-group">
                    <label for="rideDate">Date:</label>
                    <input type="date" class="form-control" id="rideDate" placeholder="Enter Ride Date" name="rideDate" required>
                </div>
                
              <div class="form-group">
                    <label for="src">Address:</label>
                    <input type="text" class="form-control" id="des" placeholder="Enter Address  " name="des" required>
                </div>
                
                <div class="form-group">
                    <label for="src">Name:</label>
                    <input type="text" class="form-control" id="src" placeholder="Enter Source" name="src" required>
                </div>
             
                <div class="form-group">
                    <label for="car">Car and Price:</label><br>
                    <select class="form-control" name="car">
                        <option>Select A Car</option>
                        <%
                        CarBean c=new CarBean();
                        CarData.details(c);
                        for(int i=0;i<c.getCarNames().size();i++)
                        {
                        out.println("<option value='");
                        out.println(c.getCarNames().get(i));
                        out.println(c.getCarNumbers().get(i));
                        out.println("//Price=");
                        out.println(c.getCarAmounts().get(i));
                     
                     
                        out.println("'>");
                         out.println(c.getCarNames().get(i)+"-");
                        out.println(c.getCarNumbers().get(i));
                         out.println("//Price=");
                        out.println(c.getCarAmounts().get(i));
                       
        
                        out.println("</option>");
                        }
                        %>
                    </select>
                </div>
                    
           <body><input type="submit" class="btn btn-default"name="Submit" value="Book" onclick="showAlert()">
              
               
              <script type="text/javascript">
               function showAlert(){
               alert("your booking is done..are executive call you soon...");
                }
                 </script>
               

                    
                <input type="reset"  class="btn btn-default " value="Rest">
                   
                
                <%
                if(session.getAttribute("bookRideInsert")=="Inserted")
                {
                    out.println("<h3 style='color:green'>BOOKING DONE</h3>");
                }
                
                %>
            
          
    </div>
</div>
<br>
<%@include file="footer.jsp" %>