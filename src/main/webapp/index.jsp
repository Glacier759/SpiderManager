<%@ page import="com.glacier.spider.weibo4j.Oauth" %>
<%@ page import="com.glacier.spider.weibo4j.http.AccessToken" %>
<%@ page import="com.glacier.spider.weibo4j.Users" %>
<%@ page import="com.glacier.spider.weibo4j.model.User" %>
<%@ page import="com.glacier.spider.save.SaveData" %>
<%@ page import="com.glacier.spider.chart.Histogram" %>
<%@ page import="com.glacier.spider.chart.Pie" %>
<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-10-20
  Time: 上午8:17
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" %>
<%@include file="header.jsp"%>
    <body>
    <%
        String code = request.getParameter("code");
        Oauth oauth = new Oauth();
        if (code != null) {
            AccessToken accessToken = oauth.getAccessTokenByCode(code);
            Users users = new Users(accessToken.getAccessToken());
            User user = users.showUserById(accessToken.getUid());
            com.glacier.spider.save.sqlclass.UserInfo userInfo = new com.glacier.spider.save.sqlclass.UserInfo(user);
            SaveData saveData = new SaveData();
            int count = saveData.selectUserExist(userInfo.getUid());
            if ( count == 0 )
                saveData.insertUserInfo(userInfo);
            session.setAttribute("login", "success");
            session.setAttribute("user", user.getScreenName());
            session.setAttribute("uid", userInfo.getUid());
            session.setAttribute("head", userInfo.getProfileImageUrl());
        }
    %>
    <%@include file="top.jsp"%>
    <div class="container-fluid">
        <div class="row" value="" id="json">
            <%@include file="menu.jsp"%>
            <div class="col-md-10">
                <br />
                <div id="distribution" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                <br />
                <div id="proportion" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
            </div>
        </div>
    </div>
    <script src="<%=request.getContextPath()%>/js/jquery-2.1.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/Bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/highcharts.js"></script>
    <script src="<%=request.getContextPath()%>/js/exporting.js"></script>

    <script>
        $(function () {

            var colors = Highcharts.getOptions().colors,
                    //categories = ['网络媒体', '新浪微博', '百度贴吧', '博客', '论坛', '其他SNS', 'NewsEye'],
                    <%Histogram.init();%>
                    categories = [<%=Histogram.getCategories()%>],
                    name = '总体概览',
                    data = [<%=Histogram.getData()%>];
            function setChart(name, categories, data, color) {
                chart.xAxis[0].setCategories(categories, false);
                chart.series[0].remove(false);
                chart.addSeries({
                    name: name,
                    data: data,
                    color: color || 'white'
                }, false);
                chart.redraw();
            }

            var chart = $('#distribution').highcharts({
                chart: {
                    type: 'column'
                },
                title: {
                    text: '各模块爬虫使用情况'
                },
                subtitle: {
                    text: '点击柱状图显示详细使用信息'
                },
                xAxis: {
                    categories: categories
                },
                yAxis: {
                    title: {
                        text: '一周内抓取数量'
                    }
                },
                plotOptions: {
                    column: {
                        cursor: 'pointer',
                        point: {
                            events: {
                                click: function() {
                                    var drilldown = this.drilldown;
                                    if (drilldown) { // drill down
                                        setChart(drilldown.name, drilldown.categories, drilldown.data, drilldown.color);
                                    } else { // restore
                                        setChart(name, categories, data);
                                    }
                                }
                            }
                        },
                        dataLabels: {
                            enabled: true,
                            color: colors[0],
                            style: {
                                fontWeight: 'bold'
                            },
                            formatter: function() {
                                return this.y +'%';
                            }
                        }
                    }
                },
                tooltip: {
                    formatter: function() {
                        var point = this.point,
                                s = this.x +':<b>'+ this.y +'% market share</b><br/>';
                        if (point.drilldown) {
                            s += '点击查看 '+ point.category +' 类详细信息';
                        } else {
                            s += '点击返回总体概览';
                        }
                        return s;
                    }
                },
                series: [{
                    name: name,
                    data: data,
                    color: 'white'
                }],
                exporting: {
                    enabled: false
                }
            })
                    .highcharts(); // return chart
        });
    </script>
    <script>
        $(function () {
            $('#proportion').highcharts({
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '各模块爬虫比例分布'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            color: '#000000',
                            connectorColor: '#000000',
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: '抓取占比',
                    <%Pie.init();%>
                    data: [<%=Pie.getData()%>]
                }]
            });
        });
    </script>
    </body>
</html>
