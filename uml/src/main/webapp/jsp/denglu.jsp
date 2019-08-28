<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <title>无标题文档</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <script type="text/javascript">
        function genTimestamp() {
            var time = new Date();
            return time.getTime();
        }
        function changeImage() {
            $('#CreateCheckCode').attr('src',
                '${pageContext.request.contextPath }/pp?timestamp=' + genTimestamp());//更改src属性节点的值
        }
    </script>
</head>
<body>
<form class="login" action="#" method="post">
    <label class="login_header">登录你的账户</label><br/>
    <label class="username">用户名</label>
    <input class="username" type="text" name="name" id="nm"/><br/>
    <label class="password">密码</label>
    <input class="password" type="password" name="password" /><br/>
    <label class="login_check">请输入验证码</label>
    <input class="login_check" type="text" name="checkcode" title="验证码区分大小写" size="13" maxlength="4" />
    <img src="${pageContext.request.contextPath}/pp" id="CreateCheckCode" align="middle">
    <a id="changeVerifImageRegister" href="" onclick="javascript:changeImage();"> 看不清,换一个</a><br>
    <input class="denglu" type="submit" value="登录" />
    <input id="dian" class="denglu" type="button" value="注册"/>
</form>
</body>
</html>
