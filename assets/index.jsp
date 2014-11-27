<html>
<head>
<meta charset="ISO-8859-1">
<title>Utilisateur Victoria</title>
<SCRIPT LANGUAGE=JavaScript>
function butCheckForm_onclick()
{
   var myForm = document.form1;
   
   if (myForm.email.value == "" || myForm.firstname.value == "")
   {
      
      if (myForm.email.value == "")
      {
         alert("Email : missing value!");
         myForm.email.focus();
      }
      else
      {
         alert("FirstName : missing value!");
         myForm.firstname.focus();
      }
   }
   else 
    myForm.submit();
 
}
</SCRIPT>
</head>
<body>
<h1>Add Info</h1>
<form action="add.jsp" NAME=form1 method="post">
FirstName : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="firstname" /><br /><br />
Lastname : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="lastname" /><br /><br />
Email : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" /><br /><br />
PhoneNumber : &nbsp;<input type="text" name="phonenumber" /><br /><br />
Adresse : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea cols="15" rows="4" name="adresse">
</textarea><br /><br /><br />

<input type="button" value="Add Contact" onclick="butCheckForm_onclick()" /><br />
</form>
</body>
</html>