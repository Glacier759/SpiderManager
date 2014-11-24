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
                                        <br />
                                        <%--<div class="alert alert-danger" role="alert">报刊信息用于对抓取报刊的地址和名称编码等基本信息初始化，编码目前仅支持UTF-8和GBK两种；起始地址栏右侧的复选框预留待开发，功能为解决用户所给其实地址不能跳转至新闻所在页面。</div>--%>
                                        <div class="panel panel-info">
                                            <div class="panel-heading">报刊信息</div>
                                            <div class="panel-body">
                                                <div id="paperinfo">
                                                    <div class="row" name="newspaper" count="1">
                                                        <div class="col-lg-4">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">报刊名称</span>
                                                                <input type="text" class="form-control" placeholder="人民日报"
                                                                       name="paper_name" />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">起始地址</span>
                                                                <input type="text" class="form-control"
                                                                       placeholder="http://paper.people.com.cn/rmrb/"
                                                                       name="paper_starturl" />
                                                                <span class="input-group-addon"><input type="checkbox" name="wait"/></span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">编码</span>
                                                                <input type="text" class="form-control"
                                                                       placeholder="UTF-8"
                                                                       name="paper_encode" />
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
                                        <br />
                                        <%--<div class="alert alert-danger" role="alert">版面地址过滤目的在于将新闻所在版面过滤出来，然后依据每版中的报刊内容进行分别抓取</div>--%>
                                        <div class="panel panel-info">
                                            <div class="panel-heading">版面地址过滤</div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-7">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control" placeholder="版面地址所在外层标签" name="page_url_outer" />
                                                            <span class="input-group-addon">
                                                                <input type="radio" name="page_url_node" value="element" /> Element
                                                                <input type="radio" name="page_url_node" value="elements" /> Elements
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-5">
                                                        <input type="text" class="form-control" placeholder="版面地址所在标签" name="page_url_tag" />
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-lg-7">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control" placeholder="版面地址所在属性" name="page_url_attr" />
                                                            <span class="input-group-addon">
                                                                <input type="radio" name="page_url_draw" value="fullstring" />获取属性中的完整值
                                                                <input type="radio" name="page_url_draw" value="substring" />获取属性中的子串
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-lg-7">
                                                        <input type="text" class="form-control" placeholder="截取所获子串的位置 例: 2,5 表示截取字符串的第2到第5个位置" name="page_url_sub" />
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <input type="text" class="form-control" placeholder="URL需要补充的前子串" name="page_url_front" />
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <input type="text" class="form-control" placeholder="URL需要补充的后子串" name="page_url_rear" />
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <input type="text" class="form-control" placeholder="URL中必须包含的子串(筛选过滤用)" name="page_url_have" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!--版面地址过滤-->
                                        <br />
                                        <%--<div class="alert alert-danger" role="alert">新闻地址过滤将指向新闻正文部分的地址过滤出来，供接下来对新闻的抓取提取使用</div>--%>
                                        <div class="panel panel-info">
                                            <div class="panel-heading">新闻地址过滤</div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-7">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control" placeholder="新闻地址所在外层标签" name="news_url_outer" />
                                                            <span class="input-group-addon">
                                                                <input type="radio" name="news_url_node" value="element" /> Element
                                                                <input type="radio" name="news_url_node" value="elements" /> Elements
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-5">
                                                        <input type="text" class="form-control" placeholder="新闻地址所在标签" name="news_url_tag" />
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-lg-7">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control" placeholder="新闻地址所在属性" name="news_url_attr" />
                                                            <span class="input-group-addon">
                                                                <input type="radio" name="news_url_draw" value="fullstring" />获取属性中的完整值
                                                                <input type="radio" name="news_url_draw" value="substring" />获取属性中的子串
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-lg-7">
                                                        <input type="text" class="form-control" placeholder="截取所获子串的位置 例: 2,5 表示截取字符串的第2到第5个位置" name="news_url_sub" />
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <input type="text" class="form-control" placeholder="URL需要补充的前子串" name="news_url_front" />
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <input type="text" class="form-control" placeholder="URL需要补充的后子串" name="news_url_rear" />
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <input type="text" class="form-control" placeholder="URL中必须包含的子串(筛选过滤用)" name="news_url_have" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!--新闻地址过滤-->
                                        <br />
                                        <%--<div class="alert alert-danger" role="alert">新闻正文过滤：分为标题提取、发布时间提取、正文部分提取以及新闻中所包含的图片信息地址提取；当前对于发布时间的获取采用从URL中提取过的，目前仅支持XXXX-XX/XX等几种形式的规则</div>--%>
                                        <div class="panel panel-info">
                                            <div class="panel-heading">新闻正文过滤</div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-5">
                                                        <input type="text" class="form-control" placeholder="标题所在外层标签" name="title_outer" />
                                                    </div>
                                                    <div class="col-lg-5">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control" placeholder="标题所在标签" />
                                                            <span class="input-group-addon">
                                                                <input type="radio" name="title_draw" value="attr" />提取属性值
                                                                <input type="radio" name="title_draw" value="text" />提取文本值
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <input type="text" class="form-control" placeholder="提取哪一属性" name="title_attr" />
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <input type="text" class="form-control" placeholder="发布时间提取，目前仅支持从URL中获取时间，现支持四种格式，例:2014-11/24使用XXXX-XX/XX表示" name="url_format" />
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="text" class="form-control" placeholder="新闻正文部分所在外层标签" name="content_outer" />
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" class="form-control" placeholder="新闻正文部分所在标签(组)" name="content_tag" />
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="text" class="form-control" placeholder="新闻中图片所在外层标签" name="img_outer" />
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" class="form-control" placeholder="新闻中图片所在标签" name="img_tag" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!--新闻正文过滤-->
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