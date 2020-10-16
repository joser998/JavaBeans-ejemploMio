<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Primer JSP</title>
</head>
<body>
    <form action="Registrado.jsp" method="POST">
        <table>
            <tr>
                <td>Ingresar Usuario:</td>
                <td><input type="text" name="usuario"></td>
            </tr>
            <tr>
                <td>Ingresar Contraseña:</td>
                <td><input type="password" name="password"></td>
            </tr>
        </table>
        <input type="submit" value="Ingresar"/>
    </form>
</body>
</html>