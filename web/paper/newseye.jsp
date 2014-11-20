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

                    <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

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
        <script>
            $(function () {
                $(document).ready(function() {
                    Highcharts.setOptions({
                        global: {
                            useUTC: false
                        }
                    });
                    var chart;
                    $('#container').highcharts({
                        chart: {
                            type: 'spline',
                            animation: Highcharts.svg, // don't animate in old IE
                            marginRight: 10,
                            events: {
                                load: function() {

                                    // set up the updating of the chart each second
                                    var series = this.series[0];
                                    setInterval(function() {
                                        $.ajax({
                                            url: "<%=request.getContextPath()%>/newseye.do",
                                            type: "GET",
                                            dataType: "JSON",
                                            success: function(data) {
                                                var x = (new Date()).getTime(), // Glacier759
                                                    y = Math.random();
                                                series.addPoint([x, y], true, true);
                                  //              start(40);
                                            }
                                        });
                                    }, 1000);
                                    //setInterval(function() {
                                    //    var x = (new Date()).getTime(), // current time
                                    //        y = Math.random();
                                    //    series.addPoint([x, y], true, true);
                                    //}, 1000);
                                }
                            }
                        },
                        title: {
                            text: '缓存队列增减情况'
                        },
                        xAxis: {
                            type: 'datetime',
                            tickPixelInterval: 150
                        },
                        yAxis: {
                            title: {
                                text: 'value'
                            },
                            plotLines: [{
                                value: 0,
                                width: 1,
                                color: '#808080'
                            }]
                        },
                        tooltip: {
                            formatter: function() {
                                return '<b>'+ this.series.name +'</b><br>'+
                                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) +'<br>'+
                                        Highcharts.numberFormat(this.y, 2);
                            }
                        },
                        legend: {
                            enabled: false
                        },
                        exporting: {
                            enabled: false
                        },
                        series: [{
                            name: 'url amplification',
                            data: (function() {
                                // generate an array of random data
                                var data = [],
                                        time = (new Date()).getTime(),
                                        i;

                                for (i = -19; i <= 0; i++) {
                                    data.push({
                                        x: time + i * 1000,
                                        y: Math.random()
                                    });
                                }
                                return data;
                            })()
                        }]
                    });
                });
            });
        </script>
    </body>
</html>