<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>课程信息</title>
    <link href="../img/tubiao.ico" rel="icon">
    <style>
        @font-face {
            font-family:Semibold;
            src: url("../font/正文宋楷.ttf") ;
        }
        *{
            margin: 0;
            padding: 0;
        }
        table,th,td,tr{
            margin: 0;
            padding: 0;
        }
        table{
            font-family: Semibold;
            width: 700px;
            position: absolute;
            left: 50%;
            top: 5%;
            margin-left: -350px;
            font-size: 25px;
        }
        tr{
            text-align: center;
            height: 50px;
        }
    </style>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0">
    <tr>
        <th>姓名</th>
        <td>${sessionScope.teacher.tName}</td>
    </tr>
    <tr>
        <th>工号</th>
        <td>${sessionScope.teacher.tGongHao}</td>
    </tr>
    <tr>
        <th>性别</th>
        <td>${sessionScope.teacher.tSex}</td>
    </tr>
    <tr>
        <th>院系</th>
        <td>${sessionScope.teacher.tYuanXi}</td>
    </tr>
    <tr>
        <th>手机号</th>
        <td>${sessionScope.teacher.tShouJiHao}</td>
    </tr>



</table>
</body>
</html>
