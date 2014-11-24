<%@ page import="com.glacier.spider.other.UserInfo" %>
<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-11-19
  Time: 上午8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">Spider Manager</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<%=request.getContextPath()%>/index.jsp">主页</a></li>
                    <li><a href="#">监控</a></li>
                    <li><a href="#">帮助</a></li>
                    <%
                        String attr = (String) session.getAttribute("login");
                        if ( attr == null ) {
                    %>
                    <li><a href="https://api.weibo.com/oauth2/authorize?client_id=462118737&response_type=code&redirect_uri=http://spider.glacierlx.com">登陆</a></li>
                    <%
                        }
                        else {
                            %>
                    <li><a href="#"><%=UserInfo.getValue("screen_name")%></a> </li>
                    <%
                        }
                    %>
                </ul>
                <form class="navbar-form navbar-right">
                    <input type="text" class="form-control" placeholder="检索...">
                </form>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed active btn btn-info" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="glyphicon glyphicon-chevron-up"></span>
                    </button>
                </div>
            </div>
        </div>
    </nav>
