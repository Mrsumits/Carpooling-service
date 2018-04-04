
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Carpooling</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link href="style.css"  rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href=foot.css"  rel="stylesheet">
   <link rel="stylesheet" href="style.css" type="text/css"/>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
   
  </head>
  <body>

  


<div class="container">
    <div class="row">

        <form class="form-horizontal" method="post" action="SerLogin">
<fieldset>


<legend><center>Enter Your Login Id and Password</center></legend>




<div class="form-group">
  <label class="col-md-4 control-label" for="loginid">Login ID</label>  
  <div class="col-md-4">
  <input id="requestid" name="username" placeholder="Login ID" class="form-control input-md" required="" type="text">
    
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>  
  <div class="col-md-4">
  <input id="requestid" name="password" placeholder="Password" class="form-control input-md" required="" type="password">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label><center>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-default">Submit</button>
  </div></center>
</div>
<div class="form-group">
    <center>
        <%
       if(session.getAttribute("error")=="yes")
       {
           out.print("<h3 style='color:red'>Please Check your username and password</h3>");
       }
        
        %>
    
  <div class="col-md-4">
   
  </div></center>
</div>

</fieldset>
</form>

</body>
  
</html>
