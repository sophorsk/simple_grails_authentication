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
            <a href="http://www.uwc.org" target="new"><g:img dir='images/site' file='logo.gif' alt="uwc logo" title="uwc_logo" border="0" />
            </a>


        </div>

        <div id="menu">
            <ul>
                <li class="selected"><g:link controller="main" action="home">Home</g:link></li>
                <li><g:link controller="main" action="what_is_uwc">What is UWC? </g:link></li>
                <li><g:link controller="main" action="what_do_we_do">What do we do? </g:link></li>
                <li><g:link controller="main" action="apply">Apply</g:link></li>
                <li><g:link controller="chat" action="list">Chat</g:link></li>
                <li><g:link controller="user" action="login">Log In</g:link></li>
                <li><g:link controller="main" action="contact">Contact Us</g:link></li>
            </ul>
        </div>


        <div id="intro">

            <div class="left">
                <h4 id="welcome">Welcome to Cambodia UWC</h4>

                <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                </p>

                <p><span><strong>Cambodia UWC</strong></span></p>

            </div>

            <div class="right">

                <h3 id="about"><span>About US</span></h3>

                <p>
                    <g:img dir="images/site" file="mypic.jpg" alt="alt" class="mypic" width="25%" height="25%" />
                    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                </p>

            </div>

        </div>
        <!-- End intro -->

        <!-- Begin border thick -->
        <div class="borderThick"></div>
        <!--/ End border thick -->

        <div id="middle">

            <div id="mission">

                <h3><span>UWC Mission Statement</span></h3>

                <p>
                    <strong>
                        <q><i>UWC makes education a force to unite people, nations and cultures for peace and a sustainable future.</q></i></strong>

                </br>

                    Entry into a UWC school or college is based on a students' commitment to UWC values and how suited they are to champion UWC's mission. Many UWC students are awarded scholarships directly from the school or college or through the national committee system. UWC national committees are located in nearly 130 countries, some are run completely by volunteers, others have staff.

                    Applicants for UWC scholarships are interviewed by national committees, all of which have a slightly different system but are unified by the UWC mission and values. In Egypt, for example, the places are offered on the basis of a system of national competitions and specialised interviews, whereas in the Brazil, Argentina, United Kingdom, Spain, Germany and Italy shortlisted applicants attend a two-day residential with an interview, games and debates. In Hong Kong, applicants are invited to attend a day-camp named "Challenge Day" where they engaged in activities such as debate, learning a new language, and group games. Shortlisted applicants then attend a final interview before gaining admission.
                </p>
                <pre>

                </pre>

                <iframe width="280" height="200" src="http://www.youtube.com/embed/X6KqAI_4ibk" frameborder="0" allowfullscreen></iframe>

                <iframe width="280" height="200" src="http://www.youtube.com/embed/hJSvY-IqjiY" frameborder="0" allowfullscreen></iframe>

            </div>

            <div id="useful_links">

                <h3><span>UWC Twitter Updates</span></h3> </br>

                <script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
                <script>
                    new TWTR.Widget({
                        version: 2,
                        type: 'profile',
                        rpp: 10,
                        interval: 30000,
                        width: 300,
                        height: 400,
                        theme: {
                            shell: {
                                background: '#333333',
                                color: '#ffffff'
                            },
                            tweets: {
                                background: '#000000',
                                color: '#ffffff',
                                links: '#4aed05'
                            }
                        },
                        features: {
                            scrollbar: true,
                            loop: false,
                            live: false,
                            behavior: 'all'
                        }
                    }).render().setUser('@UWC_IO').start();
                </script>

            </div>

        </div>


        <!-- Begin border thick -->
        <div class="borderThick"></div>
        <!--/ End border thick -->


        <!-- Begin Gallery -->
        <div class="gallery">
            <h1>Gallery</h1>
            <ul class="images">
                <li><g:img dir="images/site" file="rcnuwc1.jpg" alt="RCNUWC 1" width="80%" height="60%"/></li>
                <li><g:img dir="images/site" file="rcnuwc2.jpg" alt="RCNUWC 2" width="80%" height="60%"/></li>
                <li class="end"><g:img dir="images/site" file="rcnuwc3.jpg" alt="RCNUWC 3" width="80%" height="60%"/></li>
            </ul>

            <div class="clear"></div>

            <ul class="title">
                <li><a href="http://www.rcnuwc.no">Red Cross Nordic UWC</a></li>
                <li><a href="http://www.rcnuwc.no">Red Cross Nordic UWC</a></li>
                <li class="end"><a href="http://www.rcnuwc.no">Red Cross Nordic UWC</a></li>
            </ul>

            <div class="clear"></div>

            <ul class="description">
                <li>The view of RCNUWC</li>
                <li>RCNUWC Winter time</li>
                <li class="end">Boating at RCNUWC</li>
            </ul>
        </div>
        <!--/ End Gallery -->

        <pre>

        </pre>

        <!-- Begin border thin -->
        <div class="borderThin"></div>
        <!--/ End border thin -->

        <div id="footer">
            <g:render template="/common/footer" /></div>

        <div style="float: right">
            <a href="http://twitter.com/CambodiaUWC" target="new"><img src="http://twitbuttons.com/buttons/vincentabry/Twitter-24.png" width="100" height="50"/></a>

        </div>

        <div class="clear"></div>

    </div> <!-- end wrap -->

    </div>
</body>
</html>