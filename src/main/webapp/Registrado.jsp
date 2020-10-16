<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido</title>
</head>
<body>
    <h1>Bienvenido</h1>
    <!--Declaro las variables que se estaran usando y hago la condicion de que me traiga lo que
        encuentre si es diferente de nulo (osea lo que este en los espacios)-->
    <%
        String usuario = "", password = "";
        
        if(request.getParameter("usuario") != null){
            usuario = request.getParameter("usuario");
        }
        if(request.getParameter("password") != null){
            password = request.getParameter("password");
        }
    %>
    
    <!--aqui le decimos que queremos usar el bean-->
    <jsp:useBean id="sesionActual" class="beans.Sesion" scope="session"/>
    
    <!--para traer a la sesion el valor de la variable-->
    <jsp:setProperty name="sesionActual" property="usuario" value="<%=usuario%>"/>
    <jsp:setProperty name="sesionActual" property="password" value="<%=password%>"/>
    
    
    <!--para presentar el valor de las variables mediante una tabla-->
    <table>
        <tr>
            <td>Usuario: </td> <td><jsp:getProperty name="sesionActual" property="usuario"/></td>
        </tr>
        <tr>
            <td>Password: </td> <td><jsp:getProperty name="sesionActual" property="password"/></td>
        </tr>
    </table>
</body>
</html>