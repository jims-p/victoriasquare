<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<SCRIPT LANGUAGE=JavaScript>
function butCheckForm_onclick()
{
   var myForm = document.form1;
   
   if (myForm.username.value == "" || myForm.password.value == "")
   {
      
      if (myForm.username.value == "")
      {
         alert("UserName : missing value!");
         myForm.username.focus();
      }
      else
      {
         alert("Password : missing value!");
         myForm.password.focus();
      }
   }
   else 
    myForm.submit();
 
}
</SCRIPT>
</head>
<body>
<h1>Add Info</h1>
<form action="AdminExport.jsp" NAME=form1 method="post">
UserName : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="username" /><br /><br />
Password : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="password" /><br /><br />

<input type="button" value="Admin Login" onclick="butCheckForm_onclick()" /><br />
</form>
</body>
</html>