<%@ page import="java.sql.*" %>
<html>
<head><title>Database Connection Test</title></head>
<body>
<h2>MySQL Database Connection Test</h2>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/project";
    String username = "root";
    String password = "root";

    Connection conn = null;
    try {
    	Class.forName("com.mysql.jdbc.Driver");  // Load MySQL JDBC Driver
        conn = DriverManager.getConnection(jdbcURL, username, password);

        if (conn != null) {
            out.println("<p style='color:green;'>Connection successful!</p>");
        } else {
            out.println("<p style='color:red;'>Failed to make connection!</p>");
        }
    } catch (Exception e) {
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
    } finally {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                // ignore
            }
        }
    }
%>
</body>
</html>
