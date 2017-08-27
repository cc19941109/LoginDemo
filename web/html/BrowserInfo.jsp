<%--
  Created by IntelliJ IDEA.
  User: chencheng
  Date: 2017/8/27
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>JavaScript获取浏览器类型与版本</title>
    <script type="text/javascript">
        var Sys = {};
        var ua = navigator.userAgent.toLowerCase();
        var s;
        (s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] :
            (s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
                (s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
                    (s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
                        (s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;

        //以下进行测试
        if (Sys.ie) document.write('IE: ' + Sys.ie);
        if (Sys.firefox) document.write('Firefox: ' + Sys.firefox);
        if (Sys.chrome) document.write('Chrome: ' + Sys.chrome);
        if (Sys.opera) document.write('Opera: ' + Sys.opera);
        if (Sys.safari) document.write('Safari: ' + Sys.safari);
    </script>
    <script type="text/javascript">
        function getBrowserInfo(){
            var Sys = {};
            var ua = navigator.userAgent.toLowerCase();
            var re =/(msie|firefox|chrome|opera|version).*?([\d.]+)/;
            var m = ua.match(re);
            Sys.browser = m[1].replace(/version/, "'safari");
            Sys.ver = m[2];
            return Sys;
        }
        document.write('<hr/>');
        //获取当前的浏览器信息
        var sys = getBrowserInfo();
        //sys.browser得到浏览器的类型，sys.ver得到浏览器的版本
        document.write(sys.browser + "的版本是：" + sys.ver);
    </script>
</head>

<body>

</body>
</html>