<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
           
Class.forName("com.mysql.jdbc.Driver");
    
Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/studetail","root","raj");
 
PreparedStatement st = con.prepareStatement("insert into detail values(?,?,?,?,?);");
 
st.setInt(1, Integer.valueOf(request.getParameter("rollno")));
        
st.setString(2, String.valueOf(request.getParameter("name")));
          
st.setString(3, String.valueOf(request.getParameter("branch")));
  
st.setInt(4, Integer.valueOf(request.getParameter("per10")));
       
st.setInt(5, Integer.valueOf(request.getParameter("per12")));
  
st.executeUpdate();
        
st.close();

con.close();

response.sendRedirect("student.jsp");
     
   }
 catch (Exception e) 
{

e.printStackTrace();

}
%>

<!DOCTYPE html>

<html>
 
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
 </head>
  
<body bgcolor = white>
        
   
</body>

</html>
