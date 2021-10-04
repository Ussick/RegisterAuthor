<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>authorization</title>
    <meta charset="UTF-8"/>
    <link href="style.css" rel="stylesheet"/>
</head>

<body>
<c:if test="${!isBlocked}">
<a href="http://localhost:8080/RegisterAuthor/authorize">Authorization</a> | <a href="http://localhost:8080/RegisterAuthor/register">Registration</a>
    <c:if test="${showAForm}">
        <table>
            <form action="" method="post">
                <tr><td>Login:</td><td><input type="text" name="login"/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password"/></td></tr>
                <tr><td> </td><td><input type="submit" value="SEND"/></td></tr>
            </form>
            </table>
    </c:if>

    <c:if test="${!showAForm}">
        <div style="text-align: center"><font color='green'>${result}</font></div>
        <h1></h1>
        <h2>Hello, ${loginFromSession}</h2>
        <form action="" method="post">
            <tr><td> </td><td><input type="submit" name="logout" value="logout"/></td></tr>
        </form>
    </c:if>

    <c:if test="${isAccessDenied}">
        <div style="text-align: center"><font color='red'>${accessDenied}</font></div>
        <h1></h1>
    </c:if>
    </c:if>

    <c:if test="${isBlocked}">
        <div style="text-align: center"><font color='red'>${block}</font></div>
        <h1></h1>
    </c:if>

</body>
</html>





