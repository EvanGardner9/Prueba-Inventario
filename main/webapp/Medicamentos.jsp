<%@page import="com.sun.tools.javac.util.ArrayUtils"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="org.apache.poi.ss.usermodel.Row"%>
<%@page import="org.apache.poi.ss.usermodel.WorkbookFactory"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.poi.ss.usermodel.Sheet"%>
<%@page import="org.apache.poi.ss.usermodel.Workbook"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Inventario</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

</head>

<body style="line-height: 15px;">

    <div class="container">
        <div class="header clearfix">
            <nav>
                <ul class="nav nav-pills float-right">
                    <li class="nav-item">
                        <a class="nav-link active" href="#"
                           style="float: none; opacity: 0.8; background-color: rgb(39, 54, 147); width: 125px;">Medicamento<span
                                class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="NuevaOrden.jsp" style="color: rgb(82, 94, 169);">Nueva Orden</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Reportes.jsp" style="color: rgb(82, 94, 169);">Reporte por Medicamento</a>
                    </li>
                </ul>
            </nav>
            <h4 class="text-muted"
                style="line-height: 39px; text-align: justify; letter-spacing: 1px; font-weight: 100;"
                contenteditable="true" spellcheckker="false">Inventario</h4>
            <div class="container" style=""></div>
        </div>



        <div class="row marketing">



        </div>



    </div> <!-- /container -->


    <div class="container" style="width: 768px;">
        <div class="m-5">
            <div class="row" style="">
                <div class=" col-sm-2">
                    <h3></h3>
                </div>
                <div class=" col-5 col-sm-8">

                    <h3></h3>
                    <form><h4 style="" contenteditable="true" spellcheckker="false">Medicamento</h4>
                        <div class="form-group" style=""><label>Descripcion</label><input  name="descripcion" type="text" class="form-control"
                                                                                           fdprocessedid="80b8lh"></div>
                        <div class="form-group" style=""><label>Lote</label><input type="text"  name="lote" class="form-control"
                                                                                   fdprocessedid="4uiz3k"></div>
                        <div class="form-group" style=""><label>Fecha Caducidad</label><input type="text"
                                                                                              class="form-control"  name="caducidad" fdprocessedid="ft4vd"></div>
                        <button  type="submit"
                                 class="btn btn-primary"  name="Registrar" value="insertar"
                                 style="text-decoration-line: none; width: 85px; background-color: rgb(57, 71, 162); opacity: 0.7;">Registrar</button>
                    </form>
                </div>
                <div class=" col-sm-2">
                    <h3><br></h3>
                </div>
            </div>
        </div>
    </div>
    <div class="container" style="">
        <hr style="min-height: 0%; min-width: 0%; height: 249%;">
        <h6 style="" contenteditable="true" spellcheckker="false">Medicamento Existente</h6>
        <div class="m-5">
            <div class="row" style="">
                <table class="table" style="">

                    <%
                        String[][] arr = {{"ID", "Descripcion", "Lote", "Caducidad"}, {"1", "Producto Prueba", "500", "2020-10-10"}, {"2", "Producto Prueba 2", "5000XXX", "2020-10-09"},
                        {"3", "Producto Prueba 3", "5000XX1", "2019-10-05"}, {"4", "Producto Prueba Final", "XXX5000XXX", "2019-02-09"}};
                        for (int rowIndex = 0; rowIndex < arr.length; rowIndex++) {
                    %><tr><%
                        for (int numIndex = 0; numIndex < arr[rowIndex].length; numIndex++) {
                        %><td><%= arr[rowIndex][numIndex]%></td><%
                            }
                        %></tr><%
                            }

                            if (request.getParameter("Registrar") != null) {
                                String descripcion2 = request.getParameter("descripcion");
                                String lote2 = request.getParameter("lote");
                                String caducidad2 = request.getParameter("caducidad");

                            }


                        %>

                </table>
                <div class=" col-1 col-sm-1">
                    <h3></h3>
                </div>
                <div class=" col-1 col-sm-1">
                    <h1></h1>
                </div>
            </div>
        </div>
        <div class=" col-5 col-sm-10">
            <h4 style=""></h4>
            <h3></h3>
        </div>
        <img src="logo.jpg" height="50" width="50" style="border-radius: 10%; top: 20rem; bottom: 20rem; padding-top: 0%; padding-bottom: 2%;"></div>
    <br>
</div>
</body>
<%    /* int[][] arr = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
    out.println("<table>");
    for (int[] row : arr) {
        out.println("<tr>");
        for (int val : row) {
            out.println("<td>" + val + "</td>");
        }
        out.println("</tr>");
    }*/
    out.println("</table>");
    if (request.getParameter("Registrar") != null) {
        String descripcion = request.getParameter("descripcion");
        String lote = request.getParameter("lote");
        String caducidad = request.getParameter("caducidad");

        System.out.println(descripcion + "PRUEBA TOTALMENTE¿" + caducidad + lote);
        File f = new File("C:\\Users\\EvanG\\OneDrive\\Documents\\NetBeansProjects\\mavenproject5\\Inventario.xlsx");
        InputStream inp = new FileInputStream(f);
        Workbook wb = WorkbookFactory.create(inp);
        Sheet sheet = wb.getSheetAt(1);
        System.out.println(sheet.getLastRowNum() + 1);
        Row row = sheet.getRow(sheet.getLastRowNum());
        
        if (descripcion.equals("") || lote.equals("") || caducidad.equals("")) {
            out.println("<meta http-equiv='refresh' content='1.2;URL=Medicamentos.jsp'>");//redirects after 3 seconds
            out.println("<p style='color:red;   align-self: center;'>The fields cannot be empty!</p>");
        } else {
        int id = (int) Float.parseFloat(row.getCell(0).toString());
            row = sheet.createRow(sheet.getLastRowNum() + 1);
            row.createCell(0);
            row.createCell(1);
            row.createCell(2);
            row.createCell(3);
            row.getCell(0).setCellValue(id + 1);
            row.getCell(1).setCellValue(descripcion);
            row.getCell(1).setCellValue(descripcion);
            row.getCell(2).setCellValue(lote);
            row.getCell(3).setCellValue(caducidad);

            FileOutputStream outputStream = new FileOutputStream("C:\\Users\\EvanG\\OneDrive\\Documents\\NetBeansProjects\\mavenproject5\\Inventario.xlsx");
            wb.write(outputStream);
            //wb.close();

            out.println("<meta http-equiv='refresh' content='3;URL=Medicamentos.jsp'>");//redirects after 3 seconds
            out.println("<p style='color:red; width:50%;'>User or password incorrect!</p>");
            outputStream.close();
            inp.close();
        }

    }

%>   
</html>