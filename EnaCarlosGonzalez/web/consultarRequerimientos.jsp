<%-- 
    Document   : ConsultarRequerimiento
    Created on : 29-06-2020, 22:07:18
    Author     : Carlos_MDFK
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.Gerencia"%>
<%@page import="modelos.Asignaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Requerimientos</title>
    </head>
    <body>
        <h1>Consultar Requerimientos</h1>
        <table style="border: 2; ">
                <tr>
                    <th>Gerencia:</th>
                    <% try{
                    Gerencia ge = new Gerencia(); 
                    ArrayList<Gerencia> gerencias = ge.obtenerGerencia(); 
                    %>
                    <td><select name="gerencia">
                        <% for(Gerencia g: gerencias){%>
                        <option value="<%= g.getIdgerencia()%>"> 
                            <%= g.getGerencia()%>
                        </option>
                        <% }%>
                    </select></td>
                    <%
                            }catch(Exception e){ 
                                out.println(e.getMessage());
                            } %>
                </tr>
                <tr>
                    <th>Departamento:</th>
                    <td><select name="departamento"></select></td>
                </tr>  
                <tr>
                    <th>Asignar a:</th>
                    <% try{
                    Asignaciones as = new Asignaciones(); 
                    ArrayList<Asignaciones> asignaciones = as.obtenerAsignacion(); 
                    %>
                    <td><select name="asignar">
                        <% for(Asignaciones a: asignaciones){%>
                        <option value="<%= a.getAsignacionesid()%>"> 
                            <%= a.getAsignacion()%>
                        </option>
                        <% }%>
                    </select></td>
                    <%
                            }catch(Exception e){ 
                                out.println(e.getMessage());
                            } %>
                </tr>
               
        </table>
        <table>
            <tr>
                <td><th>Gerencia</th></td>
                <td><th>Departamento</th></td>           
                <td><th>Asignado a</th></td>
                <td><th>Requerimiento </th></td>
            </tr>
            <center><a href=".jsp">
                    <input type="button" value="Buscar" /></a></center>
                <tr>
                    <th><h3><a href="menu.jsp"></h3>
                        <input type="button" value="Volver al menú" /></tr>
        </table>
    </body>
</html>
