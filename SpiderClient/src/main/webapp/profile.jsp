<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-12-1
  Time: 下午2:11
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@include file="header.jsp"%>
<body>
<%@include file="top.jsp"%>
<div class="container-fluid">
    <div class="row" value="" id="json">
        <%@include file="menu.jsp"%>
        <div class="col-md-10 center-block">
            <br /><br /><br />
            <div class="row" align="center">
                <div class="col-md-2"></div>
                <div class="col-xs-4 col-md-3">
                    <a href="#" class="thumbnail">
                        <img data-src="holder.js/100%x180" alt="..." src="http://tp4.sinaimg.cn/2314283235/180/22849850283/1" >
                    </a>
                </div>
                <div class="col-md-4" />
                <div class="col-md-10">
                    <div class="row">
                        <h2>戴着眼镜的狗</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%=request.getContextPath()%>/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath()%>/Bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/highcharts.js"></script>
<script src="<%=request.getContextPath()%>/js/exporting.js"></script>

</body>
</html>