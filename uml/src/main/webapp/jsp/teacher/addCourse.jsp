<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>添加课程</title>
    <link href="../img/tubiao.ico" rel="icon">
    <link href="../css/zhuce.css" rel="stylesheet" type="text/css">
    <script src="../js/jquery-1.11.3.min.js"></script>
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
            color: red;
        }
    </style>
</head>
<body>
<div class="body" style="height: 600px;width: 635px;margin-top: 20px">
    <span>添加课程</span>
    <form action="${pageContext.request.contextPath}/addCourse" method="post">
        <table class="zhuce">
            <tr>
                <td>课程名字：</td>
                <td><input name="Cname" type="text" required=""/></td>
            </tr>
            <%--<tr>--%>
                <%--<td>添加学生：</td>--%>
                <%--<td>--%>
                    <%--<label for="fileinp">--%>
                        <%--<input type="button" value="点我上传" style="font-family: Semibold;font-size: 16px;width: 100px">--%>
                        <%--<span id="text" style="font-size: 20px"></span>--%>
                        <%--<input type="file" id="fileinp">--%>
                    <%--</label>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <tr>
                <td>授课时间：</td>
                <td><input name="time" type="text" required=""/></td>
            </tr>
        </table>
        <div class="button">
            <input type="submit" class="submit"/>
            <input type="reset" class="reset"/>
        </div>
    </form>
</div>
<script>
    $("#fileinp").change(function () {
        $("#text").html($("#fileinp").val());
    })
</script>
</body>
</html>