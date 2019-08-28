<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
</head>
<body>
<script type="text/javascript">
    alert("账号或密码错误，请重新登录！");
    window.location.href="${pageContext.request.contextPath}/index.jsp";
</script>
</body>
</html>
