<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-11-19
  Time: 下午3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%@include file="/header.jsp"%>
    <body>
        <%@include file="/top.jsp"%>
        <div class="container-fluid">
            <div class="row">
                <%@include file="/menu.jsp"%>
                <div class="col-md-10">
                    <br />

                    <%--<form class="form" method="post" action="#">--%>
                        <%--<div class="form-group">--%>
                            <%--<textarea name="content" class="form-control" id="newseyeconfig" rows="10" value="asdas">--%>

                            <%--</textarea>--%>
                        <%--</div>--%>
                    <%--</form>--%>
                    <%--<br />--%>
                    <%--<div id="distribution" class="d2" style="min-width: 310px; height: 500px; margin: 0 auto"></div>--%>
                    <%--<br />--%>
                    <%--<div id="proportion" class="d2" style="min-width: 310px; height: 500px; margin: 0 auto"></div>--%>
                </div>
            </div>
        </div>
        <script src="<%=request.getContextPath()%>/resource/js/jquery-2.1.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/Bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/highcharts.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/exporting.js"></script>
        <script>
            document.getElementById('newseye').setAttribute('class','active');
        </script>
    </body>
</html>