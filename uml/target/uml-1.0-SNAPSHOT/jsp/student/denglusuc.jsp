<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
</head>
<body>
<script type="text/javascript">
    alert("登录成功！");
    window.location.href="${pageContext.request.contextPath}/jsp/student/student.jsp";
</script>
</body>
</html>