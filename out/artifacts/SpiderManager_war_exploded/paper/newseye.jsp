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
                    <div id="editorjs">function foo(items) {
                        var x = "All this is syntax highlighted";
                        return x;
                        }
                    </div>
                    <div id="editorhtml">
                    </div><div id="editorcss">*{margin:0px}
                </div>
                    <div id="console">
                    </div>
                    <iframe src="" frameborder="0" id="show"></iframe>
                    <input type="button" value="运行" id="run"/>
                    <script src="http://d1n0x3qji82z53.cloudfront.net/src-min-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
                    <script>
                        function connect(scope, fnFrom, fnTo) {
                            "use strict"
                            var objFn = fnFrom.split('.');//处理传入的函数名
                            var deepth = objFn.length;
                            var scope = scope || window;
                            var j = deepth,i=j;
                            var _obj = scope,__obj=_obj ;
                            while (i > 0) {//以window.console.log为例，这里利用迭代最终拿到log
                                _obj = _obj[objFn[deepth - i]];
                                i -= 1;
                            };
                            var t = function () {
                                var ret = _obj.apply(this, arguments);//此时this指向console  注意console.log  log函数上下文必须在console那里，否则会报错
                                fnTo.apply(this, arguments);
                                return ret;
                            }
                            while (j > 1) {//仍然利用迭代，找出window.console.log前一级window.console的引用
                                __obj = __obj[objFn[deepth - j]];
                                j -= 1;
                            }
                            __obj[objFn[deepth - 1]] = t;//覆盖window.console.log
                        }
                        function unconnect(scope,fn){
                            var objFn = fn.split('.');//处理传入的函数名
                            var deepth = objFn.length;
                            var scope = scope || window;
                            var j = deepth,i=j;
                            var _obj = scope;
                            while (i > 0) {//以window.console.log为例，这里利用迭代最终拿到log
                                _obj = _obj[objFn[deepth - i]];
                                i -= 1;
                            };
                            delete _obj
                        }
                        function publishConsole(inner){
                            document.getElementById('console').innerHTML=inner
                        }
                        function setInnerText(elem, text) {
                            if (typeof elem.textContent == "string") {
                                elem.textContent = text
                            }
                            else {
                                elem.innerText = text;
                            }
                        }
                        var editorhtml= ace.edit("editorhtml");
                        editorhtml.setTheme("ace/theme/monokai");
                        editorhtml.getSession().setMode("ace/mode/html");
                        editorhtml.setValue('<!DOCTYPE HTML>\n<html lang="en-US">\n<head>\n<meta charset="UTF-8">\n<title>\n</title>\n</head>\n<body>\n</body>\n</html>')
                        function changeIframe(id, htmlContent,cssContent,jsContent) {
                            var iObj = document.getElementById(id).contentWindow;
                            unconnect(iObj,'console.log')
                            connect(iObj,'console.log',publishConsole)
                            iObj.document.designMode = 'On';
                            iObj.document.contentEditable = true;
                            iObj.document.open();
                            iObj.document.writeln(htmlContent);
                            iObj.document.close();
                            var style = document.createElement("style");
                            style.id = 'newStyle';
                            (iObj.document.getElementsByTagName("head")[0] || iObj.document.body).appendChild(style);
                            if (style.styleSheet) { //for ie
                                style.styleSheet.cssText = cssContent;
                            } else { //for w3c
                                style.appendChild(document.createTextNode(cssContent));
                            }
                            var node = document.createElement("script");
                            setInnerText(node,jsContent);
                            iObj.document.body.appendChild(node);
                        }

                        var runButton = document.getElementById('run');
                        runButton.onclick=function(){
                            changeIframe('show',editorhtml.getValue(),editorcss.getValue(),editorjs.getValue())
                        }
                    </script>
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