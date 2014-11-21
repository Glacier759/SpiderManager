<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="com.glacier.spider.login.AccessTokenJSON" %>
<%--
  Created by IntelliJ IDEA.
  User: glacier
  Date: 14-10-20
  Time: 上午8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <%@include file="header.jsp"%>
    <body>
    <%
        String code = request.getParameter("code");
        String accessTokenURL = null;
        if (code != null) {
            accessTokenURL = "https://api.weibo.com/oauth2/access_token?client_id=462118737&client_secret=94d365eb34fb0344fb08a8c9cb640ff1&grant_type=authorization_code&redirect_uri=http://spider.glacierlx.com&code=" + code;
            URL url = new URL(accessTokenURL);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.connect();
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String json = reader.readLine();
            if ( json != null ) {
                AccessTokenJSON.setAccessTokenJSON(json);
            }
        }
    %>
    <%@include file="top.jsp"%>
    <div class="container-fluid">
        <div class="row" value="" id="json">
            <%@include file="menu.jsp"%>
            <div class="col-md-10">
                <br />
                <div id="distribution" class="d2" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                <br />
                <div id="proportion" class="d2" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
            </div>
        </div>
    </div>
    <script src="<%=request.getContextPath()%>/resource/js/jquery-2.1.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resource/Bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resource/js/highcharts.js"></script>
    <script src="<%=request.getContextPath()%>/resource/js/exporting.js"></script>
    <script>
        function getAccessToken() {
            $.ajax({
                url: <%=accessTokenURL%>,
                type: "GET",
                dataType: "JSON",
                success: function(data) {
                    var objson = eval(data);
                    document.getElementById('json').setAttribute('value',objson.access_token);
                    document.getElementById('json').setAttribute('test','sadas');
                }
            })
        }
    </script>
    <script>
        $(function () {

            var colors = Highcharts.getOptions().colors,
                    categories = ['网络媒体', '新浪微博', '百度贴吧', '博客', '论坛', '其他SNS', 'NewsEye'],
                    name = '总体概览',
                    data = [{
                        y: 55.11,
                        color: colors[0],
                        drilldown: {
                            name: '网络媒体',
                            categories: ['腾讯新闻', '网易新闻', '新浪新闻', '其他'],
                            data: [10.85, 7.35, 33.06, 2.81],
                            color: colors[0]
                        }
                    }, {
                        y: 21.63,
                        color: colors[1],
                        drilldown: {
                            name: '新浪微博',
                            categories: ['人物为中心', '微博为中心'],
                            data: [0.20, 0.83],
                            color: colors[1]
                        }
                    }, {
                        y: 11.94,
                        color: colors[2],
                        drilldown: {
                            name: '百度贴吧',
                            categories: ['贴吧域', '帖子域'],
                            data: [9.91, 2.50],
                            color: colors[2]
                        }
                    }, {
                        y: 7.15,
                        color: colors[3],
                        drilldown: {
                            name: '博客',
                            categories: ['CSDN博客', '网易博客', '新浪博客', '其他'],
                            data: [4.55, 1.42, 0.23, 0.21],
                            color: colors[3]
                        }
                    }, {
                        y: 7.15,
                        color: colors[4],
                        drilldown: {
                            name: '论坛',
                            categories: ['Discuz!'],
                            data: [4.55],
                            color: colors[4]
                        }
                    }, {
                        y: 7.15,
                        color: colors[5],
                        drilldown: {
                            name: '其他SNS',
                            categories: ['人人网'],
                            data: [1.42],
                            color: colors[5]
                        }
                    }, {
                        y: 7.15,
                        color: colors[6],
                        drilldown: {
                            name: 'NewsEye',
                            categories: ['NewsEye'],
                            data: [87.6],
                            color: colors[6]
                        }
                    }];
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
                    name: 'Browser share',
                    data: [
                        ['Firefox',   45.0],
                        ['IE',       26.8],
                        ['Chrome',   12.8],
                        /*{
                            name: 'Chrome',
                            y: 12.8,
                            sliced: true,
                            selected: true
                        },*/
                        ['Safari',    8.5],
                        ['Opera',     6.2],
                        ['Others',   0.7]
                    ]
                }]
            });
        });
    </script>
    </body>
</html>
