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
        <form action="Menu" method="post">
        <table style="border: 2; ">
            
                <tr>
                    <th>Gerencia:</th>
                    <% try{
                    Gerencia ge = new Gerencia(); 
                    ArrayList<Gerencia> gerencias = ge.obtenerGerencia(); 
                    %>
                    <td><select name="gerencia">
                        <option disabled selected>Seleccionar</option>   
                        <% for(Gerencia g: gerencias){%>
                        <option value="<%= g.getGerencia()%>"> 
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
                    ArrayList<Departamentos> departamentos = de.obtenerDepartamentos(); 
                    %>
                    <td><select name="departamento">
                        <option disabled selected>Seleccionar</option>
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
                        <option disabled selected>Seleccionar</option>    
                        <% for(Asignaciones a: asignaciones){%>
                        <option value="<%= a.getAsignacion()%>"> 
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
                    <% try{
                    Encargados en = new Encargados(); 
                    ArrayList<Encargados> encargados = en.obtenerEncargados(); 
                    %>
                    <td><select name="encargado">
                        <option disabled selected>Seleccionar</option>
                        <% for(Encargados e: encargados){%>
                        <option value="<%= e.getEncargado()%>"> 
                            <%= e.getEncargado()%>
                        </option>
                        <% }%>
                    </select></td>
                    <%
                            }catch(Exception e){ 
                                out.println(e.getMessage());
                            } %>
                </tr>
                <tr>
                    <th>Requerimiento:</th>
                    <td><textarea name="requerimiento" type="text" rows="8" cols="38" placeholder="Ingrese descripción del requerimiento"/></textarea></td>
                </tr>
                <tr>
                    <th><input type="submit" value="Guardar"/>
                        <input type="hidden" name="accion" value="2"/>
                    </th>
                <td>
                <th><a href="menu.jsp">
                        <input type="button" value="Volver al menú" /></a></th>
                <% if(request.getParameter("mensaje")!=null){%>
                    <%=request.getParameter("mensaje") %>
                <%}%>
            </table>
        </form>
    </body>
</html>