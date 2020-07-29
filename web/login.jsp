<%@page  import="java.sql.*" %>

<%
    try{
//    String name=request.getParameter("name");
    String username=request.getParameter("username");
//    String email=request.getParameter("email");
    String password=request.getParameter("password");
//    String cpassword=request.getParameter("cpassword");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        Statement st = con.createStatement();
  
    ResultSet rs;
    rs = st.executeQuery("SELECT * FROM signup WHERE username=username AND password=password");
    out.println(password);
    if (rs.next()) {
        session.setAttribute("password",password);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("pricepoint.html");
    } else {
      out.println("Enter Valid password");
    }
    }
    catch(Exception e){
     e.printStackTrace();

       out.println("Something went wrong !! Please try again");  
    }

    
%>