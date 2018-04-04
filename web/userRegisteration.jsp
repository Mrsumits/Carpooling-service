<%@include file="header.jsp" %>
<div class="container" style="border-left: blue solid medium">
    <h2>Registration Form</h2>
    <div class="row">
        <div class="col-md-6 col-lg-6 col-sm-6">
              <%
                if(session.getAttribute("registerData")=="Inserted")
                {
                    out.println("<h3 style='color:green'> Registered!! </h3>");
                }
                %>
            <form action="/TransportYourWorld/RegisterServlet">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="username">Name:</label>
                    <input type="text" class="form-control" id="username" placeholder="Enter Name" name="username" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <textarea class="form-control" id="address" placeholder="Enter address" name="address" required></textarea>
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile No.:</label>
                    <input type="tel" class="form-control" id="mobile" placeholder="Enter Mobile No." name="mobile" required>
                </div>
                <div class="form-group">
                    <label for="dob">DOB:</label>
                    <input type="date" class="form-control" id="dob" placeholder="Enter DOB" name="dob" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="dob" placeholder="Enter password" name="password" required>
                </div>
               
                
                <input type="submit" class="btn btn-default btn-success" value="Register">
                <input type="reset" class="btn btn-default " value="Rest">
               
               
            </form>
        </div>
    </div>
</div>
<br>
<%@include file="footer.jsp" %>