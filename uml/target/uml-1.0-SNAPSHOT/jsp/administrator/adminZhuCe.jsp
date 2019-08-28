<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>管理员注册</title>
    <link href="../img/tubiao.ico" rel="icon">
    <link href="../css/zhuce.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <style>

        label{
            position: relative;
        }
        #fileinp{
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
        }
        #text{
            color: #4f91c4;
        }
    </style>
</head>
<body>
<div class="body">
    <span>管理员注册</span>
    <form action="${pageContext.request.contextPath}/guanLiYuanInsert" method="post" enctype="multipart/form-data">
        <table class="zhuce">
            <tr>
                <td>姓名：</td>
                <td><input name="name" type="text" required=""/></td>
            </tr>
            <tr>
                <td>工号：</td>
                <td><input name="gonghao" type="number" required=""/></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input name="password" type="password" required=""/></td>
            </tr>
            <tr>
                <td>电话：</td>
                <td><input name="phone" type="number"/></td>
            </tr>
            <tr>
                <td>头像：</td>
                <td>
                    <label for="fileinp">
                        <input type="button" value="点我上传" style="font-family: Semibold;font-size: 20px;width: 100px">
                        <span id="text" style="font-size: 20px"></span>
                        <input type="file" id="fileinp" name="touxiang">
                    </label>
                </td>
            </tr>
        </table>
        <div class="button">
            <input type="submit" class="submit" value="提交"/>
            <input type="reset" class="reset" value="重置"/>
            <input type="button" value="取消" class="quxiao" id="quxiao"/>
        </div>
    </form>
</div>
</body>
</html>
<script type="text/javascript">
    $("#quxiao").click(function () {
        window.location.href="${pageContext.request.contextPath}/index.jsp";
    })
</script>
