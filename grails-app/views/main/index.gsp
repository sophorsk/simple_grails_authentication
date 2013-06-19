<%--
  Created by IntelliJ IDEA.
  User: sophorskhut
  Date: 11/23/12
  Time: 1:41 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cambodia UWC</title>

</head>
<body>
<g:if test="${session?.user}">
</g:if>
<g:else>
    <g:form class="simpleform" style="width:50%;" url="[controller:'user',action:'login']">
        <fieldset>
            <legend>Login</legend>
            <p class="info">
                Please login with your username and password. <br />
                Don't have an account?
                <g:link controller="user" action="register">Sign up now!</g:link>
            </p>
            <g:if test="${flash.message}">
                <div class="message">${flash.message}</div>
            </g:if>
            <p>
                <label for="username">Username</label>
                <g:textField name="username" />
            </p>
            <p>
                <label for="password">Password</label>
                <g:passwordField name="password" />
            </p>
            <p class="button">
                <label>&nbsp;</label>
                <g:submitButton class="button" name="submitButton" value="Login" />
            </p>
        </fieldset>
    </g:form>
</g:else>

<div id="footer">
    <g:render template="/common/footer" /></div>

</body>
</html>