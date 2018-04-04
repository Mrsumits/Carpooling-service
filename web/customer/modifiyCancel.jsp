<%@page import="me.CarData"%>
<%@page import="me.CarBean"%>
<%@include file="header.jsp" %>
<div class="container" style="border-left: blue solid medium">
    <h2>Modifiy The Ride</h2>
    <div class="row">
        <div class="col-md-6 col-lg-6 col-sm-6">
            <form action="http://localhost:8084/TransportYourWorld/BookRide">
                <div class="form-group">
                    <label for="rideDate">Date:</label>
                    <input type="date" class="form-control" id="rideDate" placeholder="Enter Ride Date" name="rideDate" value="<%=session.getAttribute("rideDate") %>" required>
                </div>
                <div class="form-group">
                    <label for="src">Source:</label>
                    <input type="text" class="form-control" id="src" placeholder="Enter Source" name="src" value="<%=session.getAttribute("src") %>" required>
                </div>
                <div class="form-group">
                    <label for="des">Destination:</label>
                    <input class="form-control" id="des" placeholder="Enter Destination" name="des" value="<%=session.getAttribute("des") %>" required>
                </div>
                <div class="form-group">
                    <label for="car">Car and Price</label><br>
                    <select class="form-control" name="car">
                        <option>Select A Car</option>
                        <%
                        CarBean c=new CarBean();
                        CarData.details(c);
                        for(int i=0;i<c.getCarNames().size();i++)
                        {
                        out.print("<option value='"+c.getCarNames().get(i)+"-"+c.getCarNumbers().get(i)+"-"+c.getCarAmounts().get(i));
                                              
                        out.print("'>");
                         out.print(c.getCarNames().get(i)+"-");
                        out.print(c.getCarNumbers().get(i));
                        out.print("//Price=");
                         out.print(c.getCarAmounts().get(i));
                        
                      
                        out.print("</option>");
                        }
                        out.print("<option value='"+session.getAttribute("car")+"' selected>"+session.getAttribute("car")+"</option>");
                        %>
                                                
                    </select>
                </div>
                

                        <input type="hidden" id="type" name="type">
                        <input type="submit" class="btn btn-default btn-success" value="Modify" onclick="setType(this.value)">
         
                <input type="submit" class="btn btn-default " value="Cancel" onclick="setType(this.value)">
                <%
                if(session.getAttribute("bookRideInsert")=="Inserted")
                {
                    out.println("<h3 style='color:green'> Data Inserted</h3>");
                    session.setAttribute("bookRideInsert","");
                }
                if(session.getAttribute("bookRideDelete")=="Deleted")
                {
                    out.println("<h3 style='color:red'> Data Deleted</h3>");
                    session.setAttribute("bookRideDelete","");
                }
                
                %>
            </form>
        </div>
    </div>
</div>
<br>
<script>
    
    function setType(type)
    {
        document.getElementById('type').value=type;
    }
    </script>

<%@include file="footer.jsp" %>