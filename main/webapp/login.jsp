<%-- 
    Document   : login
    Created on : Jun 9, 2023, 11:27:13 AM
    Author     : EvanG
--%>

<%@page import="org.apache.poi.ss.usermodel.Cell"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="org.apache.poi.ss.usermodel.Row"%>
<%@page import="org.apache.poi.ss.usermodel.Sheet"%>
<%@page import="org.apache.poi.ss.usermodel.WorkbookFactory"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.poi.ss.usermodel.Workbook"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
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
        <title>Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form>
                        <div class="form-group justify-content-center">
                            <img class="mx-auto d-block" src="logo.jpg" alt="Logo">
                            <br>
                            <br>
                            <label>User</label>
                            <input type="text" class="form-control" name="user" placeholder="User">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary" name="login" >Login</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <%
        PrintWriter out2 = response.getWriter();
        if (request.getParameter("login") != null) {
            String user = request.getParameter("user");
            String pass = request.getParameter("password");

            System.out.println(user + "PRUEBA TOTALMENTE¿" + pass);
            File f = new File("C:\\Users\\EvanG\\OneDrive\\Documents\\NetBeansProjects\\mavenproject5\\Inventario.xlsx");
            InputStream inp = new FileInputStream(f);
            Workbook wb = WorkbookFactory.create(inp);
            Sheet sheet = wb.getSheetAt(0);
            System.out.println(sheet.getLastRowNum() + 1);
            Row row = sheet.createRow(sheet.getLastRowNum() + 1);
            /*row.createCell(0);
            row.createCell(1);
            row.getCell(0).setCellValue(user);
            row.getCell(1).setCellValue(pass);*/

            //FileOutputStream outputStream = new FileOutputStream("Inventario.xlsx");
            //wb.write(outputStream);
            //wb.close();
            //outputStream.close();
            System.out.println(sheet.getLastRowNum() + "xbxcbxbxcbv");
            if (user.equals("") || pass.equals("")) {
                out.println("<meta http-equiv='refresh' content='1.2;URL=login.jsp'>");//redirects after 3 seconds
                out.println("<p style='color:red;   align-self: center;'>The password or user cannot be empty!</p>");
            } else {
                for (int i = 0; i < sheet.getLastRowNum(); i++) {
                    row = sheet.getRow(i);
                    System.out.println(row.getCell(0) + "ñgl,ñlg" + row.getCell(1));
                    if (user.equals(row.getCell(0).toString()) && pass.equals(row.getCell(1).toString())) {
                        HttpSession sesion = request.getSession();
                        sesion.setAttribute("logged", "1");
                        sesion.setAttribute("user", user);
                        response.sendRedirect("Medicamentos.jsp");
                    } else if (i == (sheet.getLastRowNum() - 1)) {

                        out.println("<meta http-equiv='refresh' content='3;URL=login.jsp'>");//redirects after 3 seconds
                        out.println("<p style='color:red; width:50%;'>User or password incorrect!</p>");
                    }
                }
            }

            inp.close();
            /*try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");// or may be it is "org.apache.derby.jdbc.EmbeddedDriver"? Not sure. Check the correct name and put it here.
            } catch (ClassNotFoundException e) {
                //handle exception
            }

           con = DriverManager.getConnection("jdbc:derby://localhost:1527/test2;create=true","root","root"); 
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
            }else {
                out.println("<meta http-equiv='refresh' content='3;URL=index.jsp'>");//redirects after 3 seconds
                out.println("<p style='color:red; width:50%;'>User or password incorrect!</p>");
            }*/
        }

    %>   
</html>
