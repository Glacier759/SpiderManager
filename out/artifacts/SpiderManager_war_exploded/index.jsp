<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-10-20
  Time: 上午8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <%@include file="header.jsp"%>
    <body>
    <%@include file="top.jsp"%>
    <div class="container-fluid">
            <%@include file="menu.jsp"%>
            <div class="col-sm-9 col-sm-of3 col-md-10 col-md-offset-2 main">
            </div>
    </div>
    <script src="<%=request.getContextPath()%>/resource/js/jquery-2.1.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resource/js/bootstrap.min.js"></script>
    </body>
</html>
