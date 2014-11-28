<%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
 
<%
 
String name=request.getParameter("name");
 
// String lastname=request.getParameter("lastname");
 
String email=request.getParameter("email");
 
// String phonenumber=request.getParameter("phonenumber");
 
// String adresse=request.getParameter("adresse");
 
 
Class.forName("com.mysql.jdbc.Driver");
 
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost:3306/excel","root","");
 
Statement st=con.createStatement();
 
String sql="insert into contact (name,email) values ('"+name+"','"+email+"')";
 
int flag=st.executeUpdate(sql);
 
if(flag==1)
 
{
 
out.println("Added!");
 
}
 
else
 
{
 
out.println("Failed");
 
}
 
response.sendRedirect("index.php");
 
%>