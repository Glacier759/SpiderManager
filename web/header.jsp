<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-11-19
  Time: 上午8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <head>
        <meta charset="utf-8" />
        <meta name="author" content="glacier" />
        <meta property="wb:webmaster" content="7a6d9f851423c5d5" />
        <title>System-Monitor</title>
        <link href="<%=request.getContextPath()%>/resource/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="<%=request.getContextPath()%>/resource/css/style.css" rel="stylesheet" />
        <link href="<%=request.getContextPath()%>/resource/css/dashboard.css" rel="stylesheet" />

        <style type="text/css" media="screen">
            #editorjs {
                position: absolute;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                width:600px;
                height:200px;
            }
            #editorcss {
                position: absolute;
                top: 200px;
                right: 0;
                bottom: 0;
                left: 0;
                width:600px;
                height:200px;
            }
            #editorhtml {
                position: absolute;
                top: 400px;
                right: 0;
                bottom: 0;
                left: 0;
                width:600px;
                height:200px;
            }
            #run{
                margin-top:700px
            }
            #show{
                position: absolute;
                top: 0;
                bottom: 0;
                left: 600px;
                width:300px;
                height:600px;
            }
            #console{
                position: absolute;
                top: 600px;
                right: 0;
                bottom: 0;
                left: 0;
                width:600px;
                height:100px;
            }
        </style>
    </head>