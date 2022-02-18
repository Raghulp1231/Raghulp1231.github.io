
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  
<head>
   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
   <title>JSP Page</title>
 
   </head>
  
  <body bgcolor = aquamarine>
  
   <table border="1">
     
   <tr>
   
  <th>REG NO</th>
       
  <th>Name</th>
      
  <th>AREA</th>
            
  <th>2 OR 3 MONTH</th>
             
 <th>FEES</th>
     
   </tr>
     
<%
    try{
           
 Class.forName("com.mysql.jdbc.Driver");
           
 Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/studetail","root","raj");
           
 PreparedStatement st = con.prepareStatement("Select * from detail");
 
            
  ResultSet rs = st.executeQuery();
          
while(rs.next())
{
     
  %>
       
<tr>
     
<td><%=rs.getInt("rollno")%></td>
      
<td><%=rs.getString("name")%></td>
        
<td><%=rs.getString("branch")%></td>
       
<td><%=rs.getInt("Per10")%></td>
            
<td><%=rs.getInt("Per12")%></td>
       
  </tr>
  
 <%
            
 }
 }
catch (Exception e)
{
         
e.printStackTrace();
     
}
      
%>
   

</table>
   
</body>

</html>
