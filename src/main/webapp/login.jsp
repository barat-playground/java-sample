<%@ page import="java.sql.*"%>

<%
 String userName = request.getParameter("userName"); 
 
 String password = request.getParameter("password"); 
 
 String domain = request.getParameter("domain"); 
 
 Class.forName ("com.mysql.jdbc.Driver"); 
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tendsterusers?useSSL=false&requireSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "arti@artimysqljava", "A@Rt1CoR3!");
 Statement st = con.createStatement(); 
 ResultSet rs; 
 rs = st.executeQuery("select * from USER where username='" + userName + "' and password='" + password + "' and domain='" + domain +"'");
	if (rs.next()) 
		{ 
			session.setAttribute("userid", userName); 
			response.sendRedirect("success.jsp"); 
		} 
	else 
		{ 
			out.println("Invalid password <a href='index.jsp'>try again</a>"); 
} 
%>
