<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-11-19
  Time: 上午8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <div class="navbar navbar-default col-md-2 collapse in" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="glyphicon glyphicon-th-list"></span>
            </button>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="glyphicon glyphicon-paperclip"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="menu">
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-header"><h4>报刊</h4></li>
                <li id="newseye"><a href="<%=request.getContextPath()%>/paper/newseye.jsp">NewsEye</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-header"><h4>网络媒体</h4></li>
                <li id="newsqq"><a href="#">腾讯新闻</a></li>
                <li id="news163"><a href="#">网易新闻</a> </li>
                <li id="newsina"><a href="#">新浪新闻</a></li>
                <li id="newsother"><a href="#">其他</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-header"><h4>微博(新浪)</h4></li>
                <li id="weibop"><a href="<%=request.getContextPath()%>/weibo/person.jsp">人物为中心</a></li>
                <li id="weibow"><a href="<%=request.getContextPath()%>/weibo/weibo.jsp">微博为中心</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-header"><h4>贴吧</h4></li>
                <li id="tiebab"><a href="#">贴吧域</a></li>
                <li id="tiebat"><a href="#">贴子域</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-header"><h4>博客</h4></li>
                <li id="blog163"><a href="#">网易</a></li>
                <li id="blogcsdn"><a href="#">CSDN</a></li>
                <li id="blogsina"><a href="#">新浪</a></li>
                <li id="blogother"><a href="#">其他</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-header"><h4>论坛</h4></li>
                <li id="bbsdiscuz"><a href="#">Discuz!</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-header"><h4>其他SNS</h4></li>
                <li id="renren"><a href="#">人人网</a></li>
            </ul>
        </div>
    </div>