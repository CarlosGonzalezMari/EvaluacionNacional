<%-- 
    Document   : Ingreasr requerimiento
    Created on : 29-06-2020, 22:06:27
    Author     : Carlos_MDFK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Requerimientos</title>
    </head>
    <body>
        <h1>Ingresar Requerimientos</h1>
        
        <table style="border: 2; ">
                <tr>
                    <th>Gerencia:</th>
                    <td><select name="gerencia"></select></td>
                </tr>
                <tr>
                    <th>Departamento:</th>
                    <td><select name="departamento"></select></td>
                </tr>  
                <tr>
                    <th>Asignar a:</th>
                    <td><select name="asignar"></select></td>
                </tr>
                <tr>
                    <th>Encargado:</th>
                    <td><select name="encargado"></select></td>
                </tr>
                <tr>
                    <th>Requerimiento:</th>
                    <td><textarea type="text" rows="8" cols="38" /></textarea></td>
                </tr>
                <tr>
                    <th><a href=".jsp">
                        <input type="button" value="Guardar" /></th>
                    
                <td>
                    <th><a href="menu.jsp">
                        <input type="button" value="Volver al menú" /></th>
                    
            </table>
    </body>
</html>
