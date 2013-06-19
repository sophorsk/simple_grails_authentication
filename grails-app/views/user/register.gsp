<%--
  Created by IntelliJ IDEA.
  User: sophorskhut
  Date: 11/23/12
  Time: 1:57 AM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!--[if lt IE 7]><script src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE7.js" type="text/javascript"></script><![endif]-->
    <!--[if lt IE 8]><script src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE8.js" type="text/javascript"></script><![endif]-->

    <title>UWC Cambodia</title>
    <link rel="stylesheet" href="${resource(dir:'css',file:'style.css')}" />
    <link rel="icon" type="image/gif" href="${resource(dir:'images/site',file:'logo.gif')}" />
</head>

<body>
<div id="wrap">

    <div class="header">

        <div class="search" align="left">
            <g:if test="${session?.user}">
                <div id="login">
                    ${session?.user?.profile?.firstName} ${session?.user?.profile?.lastName} |
                    <g:link controller="user" action="logout">Logout</g:link></div>
                <!-- END #login -->
            </g:if>
        </div>

        <div class="logo">
            <a href="www.uwc.org"><g:img dir='images/site' file='logo.gif' alt="uwc logo" title="uwc_logo" border="0" />
            </a>

        </div>

        <div id="menu">
            <ul>
                <li><g:link controller="main" action="home">Home</g:link></li>
                <li><g:link controller="main" action="what_is_uwc">What is UWC? </g:link></li>
                <li><g:link controller="main" action="what_do_we_do">What do we do? </g:link></li>
                <li><g:link controller="main" action="apply">Apply</g:link></li>
                <li><g:link controller="main" action="gallery">Gallery</g:link></li>
                <li class="selected"><g:link controller="user" action="login">Log In</g:link></li>
                <li><g:link controller="main" action="contact">Contact Us</g:link></li>
            </ul>
        </div>

        <div>
            </br>
        </div>

        <g:form class="simpleform" url="[controller:'user',action:'register']">
            <fieldset>
                <legend>User Registration</legend>
                <p class="info">
                    Complete the form below to create an account!
                </p>
                <g:hasErrors bean="${user}">
                    <div class="errors">
                        <g:renderErrors bean="${user}"/>
                    </div>
                </g:hasErrors>
                <p>
                    <label for="username">Username</label>
                    <g:textField name="username" value="${user?.username}"
                                 class="${hasErrors(bean:user,field:'username','errors')}"/>
                </p>
                <p>
                    <label for="password">Password</label>
                    <g:passwordField name="password"
                                     class="${hasErrors(bean:user,field:'password','errors')}" />
                </p>
                <p>
                    <label for="confirm">Confirm Password</label>
                    <g:passwordField name="confirm"
                                     class="${hasErrors(bean:user,field:'password','errors')}" />
                </p>
                <p>
                    <label for="firstName">First Name</label>
                    <g:textField name="firstName" value="${user?.profile?.firstName}"
                                 class="${hasErrors(bean:user,field:'firstName','errors')}" />
                </p>
                <p>
                    <label for="lastName">Last Name</label>
                    <g:textField name="lastName" value="${user?.profile?.lastName}"
                                 class="${hasErrors(bean:user,field:'lastName','errors')}" />
                </p>
                <p class="button">
                    <label>&nbsp;</label>
                    <g:submitButton class="button" name="submitButton" value="Create Account" />
                </p>
            </fieldset>
        </g:form>


        <!-- End intro -->

        <!-- Begin border thin -->
        <div class="borderThin"></div>
        <!--/ End border thin -->

        <div id="footer">
            <g:render template="/common/footer" /></div>


        <div class="clear"></div>

    </div> <!-- end wrap -->

</div>
</body>
</html>





