<%--<%@page  import="java.sql.*" %>
<%@page  import="java.util.*" %>

<%
    String search=request.getParameter("search");
    search = search.replaceAll("\\s", "");
    search = search.toLowerCase();
    out.println(search);
    
%>--%>


<%@ page import="java.io.*"%>
<html>
<body>
<%
     String fName = "C:\\Users\\GOPAL\\Desktop\\pricepoint\\PricePoint\\PricePoint\\flipkart1.csv";
     String thisLine;
      int count=0;
      FileInputStream fis = new FileInputStream(fName);
      DataInputStream myInput = new DataInputStream(fis);
      int i=0;
%>
<table cellpadding="2" border="5">

<%
while ((thisLine = myInput.readLine()) != null)
{
String strar[] = thisLine.split(",");
for(int j=0;j<strar.length;j++)
{
if(i!=0)
{
out.print(" " +strar[j]+ " ");
}
else
{
out.print(" <b>" +strar[j]+ "</b> ");
}
}
out.println("<br>");
i++;
}
%>
</table>
</body>
</html>
