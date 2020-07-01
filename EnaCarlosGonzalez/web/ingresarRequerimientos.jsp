<%-- 
    Document   : Ingreasr requerimiento
    Created on : 29-06-2020, 22:06:27
    Author     : Carlos_MDFK
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.Gerencia"%>
<%@page import="modelos.Asignaciones"%>
<%@page import="modelos.Departamentos"%>
<%@page import="modelos.Encargados"%>
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
                    <% try{
                    Departamentos de = new Departamentos(); 
                    ArrayList<Departamentos> departamentos = de.obtenerDepartamentos(gerenciasid); 
                    %>
                    <td><select name="departamento">
                        <% for(Departamentos d: departamentos){%>
                        <option value="<%= d.getDepartamento()%>"> 
                            <%= d.getDepartamento()%>
                        </option>
                        <% }%>
                    </select></td>
                    <%
                            }catch(Exception e){ 
                                out.println(e.getMessage());
                            } %>
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
                            <input type="button" value="Guardar" /></a></th>
                <td>
                <th><a href="menu.jsp">
                        <input type="button" value="Volver al menú" /></a></th>
                    
            </table>
    </body>
</html>
