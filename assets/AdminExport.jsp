<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
 <%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
 
<%
 
String username=request.getParameter("username");
 
String password=request.getParameter("password");
 
 
Class.forName("com.mysql.jdbc.Driver");
 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/excel","root","");
 
Statement st=con.createStatement();
 
String sql=" select * from manager where username= '"+username+"' and password = '"+password+"' ";
try { 
    ResultSet result=st.executeQuery(sql);
    if (result.next()){%>
 
<html>
<head>
<title>Admin Operation</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/excel"
     user="root"  password=""/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from contact;
</sql:query>

<div>
 <button id="btnExport">
   Export to Excel
 </button>
</div>
<br>
<div> 
<table id="tblExport" style="border:1px solid black; " border="1" width="100%">
<tr>
   <th>FirstName</th>
   <th>Last Name</th>
   <th>Email</th>
   <th>PhoneNumber</th>
   <th>Adresse</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.FirstName}"/></td>
   <td><c:out value="${row.LastName}"/></td>
   <td><c:out value="${row.Email}"/></td>
   <td><c:out value="${row.PhoneNumber}"/></td>
   <td><c:out value="${row.Adresse}"/></td>
</tr>
</c:forEach>
</table>
</div>
        
<script src="jquery.js"></script>
<script src="jquery_003.js"></script>
<script src="jquery_002.js"></script>
<script>
    $(document).ready(function () {
        $("#btnExport").click(function () {
            $("#tblExport").btechco_excelexport({
                containerid: "tblExport"
               , datatype: $datatype.Table
            });
        });
    });
</script>
</body>
</html>
<%}
    else {
        out.println("wrong data");
        response.sendRedirect("AdminLogin.jsp");
    }
    
}
catch (SQLException ignore) { 
    out.println("wrong connection");
    response.sendRedirect("AdminLogin.jsp");
}
finally {
    con.close();
}
%>