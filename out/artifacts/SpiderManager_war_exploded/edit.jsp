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
        <div class="row">
            <div class="cover-container">
                <div class="masthead">
                    <div class="inner">
                        <h2 class="masthead-brand">Spider Manager</h2>
                        <ul class="nav masthead-nav">
                            <li><a href="<%=request.getContextPath()%>/manager.jsp">Home</a></li>
                            <li><a href="#">View</a></li>
                            <li class="active"><a href="#">Edit</a></li>
                            <li><a href="<%=request.getContextPath()%>/login.jsp">Login</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="inner cover col-md-2">
                <ul class="nav">
                    <li class="active"><a href="<%=request.getContextPath()%>/manager.jsp"><h5><strong>Home</strong></h5></a></a></li>
                    <li class="active"><a href="#"><h5><strong>View</strong></h5></a></li>
                    <li class="active"><a href="#"><h5><strong>Edit</strong></h5></a></li>
                    <li class="active"><a href="<%=request.getContextPath()%>/login.jsp"><h5><strong>Login</strong></h5></a></li>
                </ul>
            </div>
            <div class="col-md-8">
                <form role="form">
                    <div class="form-group">
                        <textarea class="form-control" rows="10"></textarea>
                    </div>
                </form>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>

</div>
</body>
</html>
