<%-- 
    Document   : login
    Created on : Jun 9, 2023, 11:27:13 AM
    Author     : EvanG
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form>
                        <div class="form-group">
                            <label>User</label>
                            <input type="text" class="form-control" name="user" placeholder="Humano pon tu usuario">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password" placeholder="Humano pon tu password">
                        </div>
                        <button type="submit" class="btn btn-primary" name="login" >Login</button>
                    </form>
                </div>
            </div>
             <img src="logo.jpg" height="50" width="50" style="border-radius: 10%; top: 20rem; bottom: 20rem; padding-top: 0%; padding-bottom: 2%;"></div>
        <br>
        </div>
    </body>
    <%
        PrintWriter out2 = response.getWriter();
        if (request.getParameter("login") != null) {
            String user = request.getParameter("user");
            String pass = request.getParameter("password");

            Connection con = null;
            Statement stmt = null;

            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");// or may be it is "org.apache.derby.jdbc.EmbeddedDriver"? Not sure. Check the correct name and put it here.
            } catch (ClassNotFoundException e) {
                //handle exception
            }

            con = DriverManager.getConnection("jdbc:derby://localhost:1527/test2", "root", "root");
            stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM APP.LOGIN where NAME = '" + user + " and PASSWORD = '" + pass + "");
            String result = null;
            if (rs.next()) {
                result = rs.getString(1);
            }
            if (!result.isEmpty()) {
                HttpSession sesion = request.getSession();
                sesion.setAttribute("logged", "1");
                sesion.setAttribute("user", user);
                response.sendRedirect("index.html");
            }

        } else {
            out2.print("Incorrect Data");
        }

    %>   
</html>
