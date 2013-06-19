<%--
  Created by IntelliJ IDEA.
  User: sophorskhut
  Date: 11/28/12
  Time: 8:00 PM
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

    <style type="text/css">
        .edit {
            font-size: 2em;
        }
        .info {
            font-size: 1.5em;
            color: #4D689B;
        }
        .status {
            font-size: 1.5em;
            color: #4D689B;
        }
        .left {
            float: left;
        }
        .right {
            float: right;
        }
        .right p{
            font-size: 1.2em;
            color: #4D689B;
        }

    </style>

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
                <li><g:link controller="chat" action="list">Chat</g:link></li>
                <li class="selected"><g:link controller="user" action="login">Log In</g:link></li>
                <li><g:link controller="main" action="contact">Contact Us</g:link></li>
            </ul>
        </div>

        <div>
        </br>
        </div>

        <g:if test="${session?.user}">
        </g:if>


        <h1> Welcome ${session?.user?.profile?.firstName} ${session?.user?.profile?.lastName} </h1>
        <br>

        <div class="left">
        <div class="status"> What is on your mind? </div>
        <g:form url="[controller:'user', action:'updateStatus']">
            <g:textField name="status" value="${session?.user?.status}" size="50" />
        </g:form>

        <br>
        <div class="info"> Status: ${session?.user?.status}</div>
        <br>

        <div class="info"> First name:&nbsp; ${session?.user?.profile?.firstName}</div>
        <div class="info"> Last name:&nbsp; ${session?.user?.profile?.lastName}</div>
        <div class="info"> School:&nbsp; ${session?.user?.profile?.school} </div>
        <div class="info"> Location:&nbsp; ${session?.user?.profile?.location} </div>
        <div class="info"> Interest:&nbsp; ${session?.user?.profile?.interest} </div>
        <div class="info"> Gender:&nbsp; ${session?.user?.profile?.gender} </div>
        </div>
    <div class="right">
        <g:form url="[controller:'user', action:'editProfile']">

            <fieldset>
                <legend class="edit">Edit Profile</legend>

                <p>
                    <label for="firstName">First Name</label>
                    <g:textField name="firstName" value="${user?.profile?.firstName}"/>
                </p>
                <p>
                    <label for="lastName">Last Name</label>
                    <g:textField name="lastName" value="${user?.profile?.lastName}"/>
                </p>

                <p>
                    <label for="school">School</label>
                    <g:textField name="school" value="${user?.profile?.school}"/>
                </p>

                <p>
                    <label for="location">Location</label>
                    <g:textField name="location" value="${user?.profile?.location}"/>
                </p>

                <p>
                    <label for="interest">Interest</label>
                    <g:textField name="interest" value="${user?.profile?.interest}"/>
                </p>

                <p>
                    <label for="gender">Gender</label>
                    <g:textField name="gender" value="${user?.profile?.gender}"/>
                </p>

                <p class="button">
                    <label>&nbsp;</label>
                    <g:submitButton class="edit" name="submitButton" value="Save Changes" />
                </p>
            </fieldset>

        </g:form>
    </div>
    </br>



        <div id="footer">
            <g:render template="/common/footer" /></div>


        <div class="clear"></div>

    </div> <!-- end wrap -->

</div>
</body>
</html>