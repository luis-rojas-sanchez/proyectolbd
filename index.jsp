<%-- 
    Document   : index
    Created on : Nov 28, 2020, 8:03:53 PM
    Author     : luisf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h3>Personas</h3>
        <div>
            
            <form action="Controlador" method="POST">
                <input type="submit" name="accion" value="Listar">
            </form>
            
        </div>
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombres</th>
                        <th>Correo</th>
                        <th>Telefono</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${datos}">
                    <tr>
                        <td>${dato.getId()}</td>
                        <td>${dato.getNom()}</td>
                        <td>${dato.getCorreo()}</td>
                        <td>${dato.getTel()}</td>
                        <td>
                            <form>
                                <input type="submit" value="Editar">
                                <input type="submit" value="Eliminar">
                            </form>
                            
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>

        </div>
        
        
    </center>
    </body>
</html>
