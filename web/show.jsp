<%@include file="header.jsp" %>

  <div class="container">
    <div class="row">
        <table border="1" id="customers">
            <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Address</th>
            <th>Contact Number</th>
            <th>Date of birth</th>
            <th>State</th>
                
            </tr>
   <%
   
   me.Db d=new me.Db();
   d.connect();
   d.pst=d.con.prepareStatement("select * from reg");
   d.rt=d.pst.executeQuery();
   while(d.rt.next()){
       out.println("<tr>");
       out.println("<td>"+d.rt.getString(1)+"</td>");
       out.println("<td>"+d.rt.getString(2)+"</td>");
       out.println("<td>"+d.rt.getString(3)+"</td>");
       out.println("<td>"+d.rt.getString(4)+"</td>");
       out.println("<td>"+d.rt.getString(5)+"</td>");
       out.println("<td>"+d.rt.getString(6)+"</td>");
       out.println("</tr>");
   }
   %>
        </table>
        
 <br>       
 <link href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<div style="width:80%;margin-left: auto;margin-right: auto;">
<!--footer start from here-->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-4 footerleft ">
        <div class="logofooter"> <a><img am-TopLogo alt="SECUREVIEW"  src="Image/logo.png" class="img-responsive" width="50%"></a></div>
        <p>This website acts as mediator between people who want to pool car together. People from all big companies and individuals ( from all over India) are getting registered on website to find a carpool either for giving lift or for taking lift. Beauty of website lies in its security feature of Employee code verification .
You can search pools across all the companies and specific to your compnay.
Through extensive research into existing transport options, we identified the need to develop alternative ways of travelling, including more efficient use of the car.
Today carpool has become need of the hour. This year seems to be the most happening year for carpool. carpool movement, especially in metros. Media is also playing an active role to strengthen this movement and also providing awareness to masses.
</p>
        <p><i class="fa fa-map-pin"></i> 210, Aggarwal Tower, Rohini sec 9, New Delhi -        110085, INDIA</p>
        <p><i class="fa fa-phone"></i> Phone (India) : +91 9999 878 398</p>
        <p><i class="fa fa-envelope"></i> E-mail : info@webenlance.com</p>
        
      </div>
          
      <div class="col-md-4 col-sm-4 paddingtop-bottom">
        <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-height="300" data-small-header="false" style="margin-bottom:15px;" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
          <div class="fb-xfbml-parse-ignore">
            <blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote>
          </div>
        </div>
          <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-height="300" data-small-header="false" style="margin-bottom:15px;" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
          <div class="fb-xfbml-parse-ignore">
            <blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">Twitter</a></blockquote>
          </div>
        </div>
          <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-height="300" data-small-header="false" style="margin-bottom:15px;" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
          <div class="fb-xfbml-parse-ignore">
            <blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">Instagram</a></blockquote>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
<!--footer start from here-->

<div class="copyright">
  <div class="container">
    <div class="col-md-6">
      <p>© 2018 - All Rights with evoucher</p>
    </div>
    <div class="col-md-6">
      <ul class="bottom_ul">
     
        <li><a href="index.html">Home</a></li>
        <li><a href="index.html">About</a></li>
            <li><a href="galary.jsp">Gallery</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        
      </ul>
    </div>
  </div>
</div>
</div>         
        
  </body>
  
</html>
