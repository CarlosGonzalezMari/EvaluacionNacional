<%-- 
    Document   : CerrarRequerimientos
    Created on : 29-06-2020, 22:07:41
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
        <title>Cerrar Requerimietos</title>
    </head>
    <body>
        <h1>Cerrar Requerimietos</h1>
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
    <center><a href=".jsp">
            <input type="button" value="Buscar" /></a></center>
    <center>
        <table border="2">
            <tr>
                <th>Gerencia</th>
                <th>Departamento</th>     
                <th>Asignado a</th>
                <th>Requerimiento </th>
            </tr>            
        </table>
    </center>
    <tr>
        <th><a href="menu.jsp">
                <input type="button" value="Volver al menú" /></a></th>
    </tr>
    </body>
</html>
