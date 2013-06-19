
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <style type="text/css">
        .chat {
            font-size: 2em;
            color: #4D689B;
        }
        .blah{
            font-size: 1.3em;
            color: #2C1D6E;
        }
        .intro {
            font-size: 1.4em;
        }
    </style>
    <title>Chat</title>

    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!--[if lt IE 7]><script src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE7.js" type="text/javascript"></script><![endif]-->
    <!--[if lt IE 8]><script src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE8.js" type="text/javascript"></script><![endif]-->

    <link rel="stylesheet" href="${resource(dir:'css',file:'style.css')}" />

    <script language="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" ></script>

    <script>

        $().ready(
                function() {
                    var ResInterval = window.setInterval(function() {
                        $.ajax({
                            url: "http://localhost:9000/Authentication/chat/ajaxList"
                        }).done(function(msg){
                                    var html="<ul>";
                                    for (var i=msg.length-1;i >=
                                            Math.max(0,msg.length-50);i--){
                                        var location="http://localhost:8080/Authentication/user/show/"+msg[i].username;
                                        html += '<li>'+'<a href="http://localhost:9000/Authentication/user/show/';
                                        html+=msg[i].username;
                                        html+='"'+'>'+msg[i].username+"</a> : "+msg[i].text;
                                    }
                                    html+="</ul>"
                                    $(".blah").html(""+html);
                                });
                    }, 1000);
                })
    </script>
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
                <li class="selected"><g:link controller="chat" action="list">Chat</g:link></li>
                <li><g:link controller="user" action="login">Log In</g:link></li>
                <li><g:link controller="main" action="contact">Contact Us</g:link></li>
            </ul>
        </div>

        <br>

        <p class="chat">Welcom to Chatroom: ${session.user.profile.firstName} ${session.user.profile.lastName}</p>
        <br>

        <div class="intro">
            <p>Type your message:</p>
            <g:form action="makeNew" method="GET">
                <g:hiddenField type="text" name="username" value="${session.user.username}"/><br/>
                Say:<input type="text" name="text" maxlength="250"><br/>
                <input type="submit">
            </g:form>
        </div>
        <br>

        <div class="blah">
            <ul>
            <%-- <li class="template">USERNAME: CHAT (TIME)</li> --%>
                <g:each in="${comments}" var="c" status="i">
                    <li><g:link controller="user" action="show" id="${c.username}"> ${c.username} </g:link>: ${c.text}
                </g:each>
            </ul>
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