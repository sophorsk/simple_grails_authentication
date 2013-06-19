
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

    <style type="text/css">
        .info {
            font-size: 1.5em;
            color: #4D689B;
        }
        .left{
            float: left;
        }
    </style>

</head>

<body>
<div id="wrap">

    <div class="header">

        <div class="search" align="left">
            <g:if test="${session?.user}">
                <div id="login">
                    ${session?.user?.profile.firstName} ${session?.user?.profile.lastName} |
                    <g:link controller="user" action="logout">Logout</g:link></div>
                <!-- END #login -->
            </g:if>
        </div>

        <div class="logo">
            <a href="http://www.uwc.org" target="new"><g:img dir='images/site' file='logo.gif' alt="uwc logo" title="uwc_logo" border="0" />
            </a>

        </div>

        <div id="menu">
            <ul>
                <li><g:link controller="main" action="home">Home</g:link></li>
                <li><g:link controller="main" action="what_is_uwc">What is UWC? </g:link></li>
                <li><g:link controller="main" action="what_do_we_do">What do we do? </g:link></li>
                <li><g:link controller="main" action="apply">Apply</g:link></li>
                <li><g:link controller="chat" action="list">Chat</g:link></li>
                <li><g:link controller="user" action="login">Log In</g:link></li>
                <li><g:link controller="main" action="contact">Contact Us</g:link></li>
            </ul>
        </div>

        <br>

        <h1> You are viewing: ${user.profile.firstName} ${user.profile.lastName} </h1>

        <div class="left">
            <br>
            <div class="info"> Username:&nbsp; ${user.username}</div>
            <br>
            <div class="info"> Status:&nbsp; ${user.status}</div>
            <br>
            <div class="info"> First name:&nbsp; ${user.profile.firstName}</div>
            <div class="info"> Last name:&nbsp; ${user.profile.lastName}</div>
            <div class="info"> School:&nbsp; ${user.profile.school}</div>
            <div class="info"> Location:&nbsp; ${user.profile.location}</div>
            <div class="info"> Interest:&nbsp; ${user.profile.interest}</div>
            <div class="info"> Gender:&nbsp; ${user.profile.gender}</div>
        </div>
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
