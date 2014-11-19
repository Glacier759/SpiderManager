<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-11-17
  Time: 上午10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="author" content="glacier">
    <title>Spider Manager</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/cover.css">
</head>
<body>
<div class="site-wrapper">
    <div class="site-wrapper-inner">
        <div class="cover-container">
            <div class="masthead">
                <div class="inner">
                    <h2 class="masthead-brand">Spider Manager</h2>
                    <ul class="nav masthead-nav">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">View</a></li>
                        <li><a href="#">Edit</a></li>
                        <li class="active"><a href="#">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="inner cover">
            <p class="lead">
                <a href="#" class="btn btn-lg btn-default">Login</a>
            </p>
        </div>
    </div>
</div>
</body>
</html>
