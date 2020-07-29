<%@page  import="java.sql.*" %>

<%
    String name=request.getParameter("name");
    String username=request.getParameter("username");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String cpassword=request.getParameter("cpassword");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into signup values (' " + name + " ', ' " + username + " ', ' " + email + " ', ' " + password + " ')");
    if (i>0) {    
        response.sendRedirect("pricepoint.html");   
    } else {
       out.print("UnSuccessfull!"); 
    }  
%>
