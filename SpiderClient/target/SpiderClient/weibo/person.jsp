<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-11-26
  Time: 下午11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@include file="/header.jsp"%>
<body>
    <%@include file="/top.jsp" %>
    <div class="container-fluid">
        <div class="row" value="" id="json">
            <%@include file="/menu.jsp" %>
            <div class="col-md-10">
                
            </div>
        </div>
    </div>
    <script src="<%=request.getContextPath()%>/js/jquery-2.1.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/Bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/highcharts.js"></script>
    <script src="<%=request.getContextPath()%>/js/exporting.js"></script>
    <script>
        document.getElementById('weibop').setAttribute('class','active');
    </script>
</body>
</html>
