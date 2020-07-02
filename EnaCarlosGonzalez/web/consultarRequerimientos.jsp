<%-- 
    Document   : ConsultarRequerimiento
    Created on : 29-06-2020, 22:07:18
    Author     : Carlos_MDFK
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.Gerencia"%>
<%@page import="modelos.Departamentos"%>
<%@page import="modelos.Asignaciones"%>
<%@page import="modelos.Requerimientos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Requerimientos</title>
    </head>
    <body>
        <h1>Consultar Requerimientos</h1>
        <form action="Menu" method="post">
        <table style="border: 2; ">
            <tr>
            <td>
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
            </td>
            <td>
                <tr>
                <th><input type="submit" value="Buscar"/>
                <input type="hidden" name="accion" value="3"/></th>
                </tr>  
            </td>
            </tr>
        </table>                
        <table border="2">
            <tr>
                <td><b>GERENCIA</b></td>
                <td><b>DEPARTAMENTO</b></td>           
                <td><b>ASIGNADO A</b></td>
                <td><b>REQUERIMIENTO</b></td>
            </tr>    
            <% if(request.getAttribute("listRequerimientos")!=null){
                    ArrayList<Requerimientos> req = (ArrayList<Requerimientos>)request.getAttribute("listRequerimientos");
                    for(Requerimientos r: req){%>
                    <tr>
                        <td><%=r.getGerencia()%></td>
                        <td><%=r.getDepartamento()%></td>           
                        <td><%=r.getAsignacion()%></td>
                        <td><%=r.getDescripcion()%></td>
                    </tr>
            <%}} %>            
            <tr>
                <th><h3><a href="menu.jsp"></h3>
                <input type="button" value="Volver al menú" />
            </tr>
            <% if(request.getParameter("mensaje")!=null){%>
                <%=request.getParameter("mensaje") %>
            <%}%>
        </table>
        </form>
    </body>
</html>