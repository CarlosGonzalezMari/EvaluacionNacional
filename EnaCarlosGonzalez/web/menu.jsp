<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    </head>
    <body><center>
        <h1>Menu Principal</h1>
        <form action="Menu" method="post">
            
                <table style="border: 1; ">
                    <tr>
                        <td><input type="submit" value="Ingresar Requerimientos"/></td>
                        <input type="hidden" name="accion" value="2"/>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Consultar Requerimientos"/></td>
                        <input type="hidden" name="accion" value="3"/>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Cerrar Requerimientos"/></td>
                        <input type="hidden" name="accion" value="4"/>
                    </tr>
                </table>
           <% if(request.getParameter("mensaje")!=null){%>
        <%=request.getParameter("mensaje") %>
        <%}%>
        </form>
         </center>
    </body>
</html>