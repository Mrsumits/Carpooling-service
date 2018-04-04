<%@page import="me.CarData"%>
<%@page import="me.CarBean"%>
<%@include file="header.jsp" %>
<div class="container" style="border-left: blue solid medium">
    <h2>Add car</h2>
    <div class="row">
        <div class="col-md-6 col-lg-6 col-sm-6">
            <form action="/TransportYourWorld/CarDataAdd" method="post">
                
                <div class="form-group">
                    <label for="cname"> Car Name:</label>
                    <input type="text" class="form-control" id="cname" placeholder="Enter Car Name" name="cname" required>
                </div>
                <div class="form-group">
                    <label for="cnumber">Car No</label>
                    <input class="form-control" id="cnumber" placeholder="Enter Car Number" name="cnumber" required>
                </div>
               
                <div class="form-group">
                    <label for="cnumber">Amount</label>
                    <input class="form-control" id="cnumber" placeholder="Enter Amount" name="camount" required>
                </div>


                <input type="submit" class="btn btn-default btn-success" value="Add Car">
                <input type="reset" class="btn btn-default " value="Rest">
                <%
                if(session.getAttribute("carAdd")=="Inserted")
                {
                    out.println("<h3 style='color:green'> Car Added </h3>");
                }
                %>
            </form>
        </div>
    </div>
</div>
<br>
<%@include file="footer.jsp" %>