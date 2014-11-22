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
                    <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

                    <form class="form" method="get" action="#">
                        <div class="form-group">
                            <h3>配置编辑</h3>
                            <div class="panel panel-default">
                                <div class="panel-heading">配置说明</div>
                                <div class="panel-body">啊添加一个类啊添加一个起始文件啊添加一堆一堆属性参数啊啊啊</div>
                            </div>
                            <div id="paper-config">
                                <div class="panel panel-success">
                                    <div class="panel-heading">报刊配置</div>
                                    <div class="panel-body">
                                        <div class="panel panel-info">
                                            <div class="panel-heading">报刊信息</div>
                                            <div class="panel-body">
                                                <div id="paperinfo">
                                                    <div class="row" name="newspaper" count="1">
                                                        <div class="col-lg-4">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">报刊名称</span>
                                                                <input type="text" class="form-control" placeholder="人民日报"
                                                                       name="newspapername" />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">起始地址</span>
                                                                <input type="text" class="form-control"
                                                                       placeholder="http://paper.people.com.cn/rmrb/"
                                                                       name="starturl" />
                                                                <span class="input-group-addon"><input type="checkbox" /></span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">编码</span>
                                                                <input type="text" class="form-control"
                                                                       placeholder="UTF-8"
                                                                       name="encode" />
                                                            </div>
                                                        </div>
                                                        <br/><br/>
                                                    </div>
                                                </div>
                                                <!--paperinfo-->
                                                <div class="row">
                                                    <div class="col-lg-2">
                                                        <div class="input-group">
                                                            <button type="button" class="btn btn-default" name="addnewspaper">
                                                                <span class="glyphicon glyphicon-plus" />
                                                            </button>
                                                            <button type="button" class="btn btn-default " name="minusnewspaper">
                                                                <span class="glyphicon glyphicon-minus" />
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>  <!--一类报刊信息面板-->
                                        <div class="panel panel-info">
                                            <div class="panel-heading">版面地址过滤</div>
                                            <div class="panel-body">

                                            </div>
                                        </div> <!--版面地址过滤-->
                                    </div>
                                </div> <!--所有报刊信息面板-->
                            </div> <!--所有报刊配置信息-->
                            <button type="button" class="btn btn-success disabled" id="addclass">增加类别</button>
                            <button type="button" class="btn btn-warning disabled" id="minusclass">删除类别</button>
                            <button class="btn btn-primary" type="submit" id="save">提交配置</button>
                            <div class="modal fade" id="confirm">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title">保存配置</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>确认提交当前配置文件？</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                            <button type="button" class="btn btn-primary">保存</button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="<%=request.getContextPath()%>/resource/js/jquery-2.1.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/Bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/highcharts.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/exporting.js"></script>
        <script>
            $(function() {
                $("#save").click(function() {
                    $("#confirm").modal("toggle");
                });
            });
        </script>
        <script>
            $(function() {
                $("[name='addnewspaper']").click(function() {
                    var paperinfo = document.getElementById('paperinfo');
                    var paper = paperinfo.lastElementChild;
                    var newpaper = paper.cloneNode(true);
                    newpaper.setAttribute('count',parseInt(newpaper.getAttribute('count'))+1);
                    paperinfo.appendChild(newpaper);
                });
            });
            $(function() {
                $("[name='minusnewspaper']").click(function() {
                    var paperinfo = document.getElementById('paperinfo');
                    if ( paperinfo.childElementCount == 1 ) {

                    }
                    else {
                        var paper = paperinfo.lastElementChild;
                        paperinfo.removeChild(paper);
                    }
                });
            });
        </script>
        <%--<script>--%>
            <%--$(function() {--%>
                <%--$("#addclass").click(function() {--%>
                    <%--var paperclass = document.getElementById('paper-config');--%>
                    <%--var newpanel = paperclass.lastElementChild.cloneNode(true);--%>
                    <%--paperclass.appendChild(newpanel);--%>

                <%--});--%>
            <%--});--%>
            <%--$(function() {--%>
                <%--$("#minusclass").click(function() {--%>
                    <%--var paperclass = document.getElementById('paper-config');--%>
                    <%--if ( paperclass.childElementCount == 1 ) {--%>

                    <%--}--%>
                    <%--else {--%>
                        <%--var newpanel = paperclass.lastElementChild;--%>
                        <%--paperclass.removeChild(newpanel);--%>
                    <%--}--%>
                <%--});--%>
            <%--});--%>
        <%--</script>--%>
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