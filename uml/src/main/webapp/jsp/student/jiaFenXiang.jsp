<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>上传加分项</title>
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
            color: #4f91c4;
        }
    </style>
</head>
<body>
<div class="body" style="height: 600px;width: 635px;margin-top: 20px">
    <span>上传加分项</span>
    <form enctype="multipart/form-data" action="${pageContext.request.contextPath}/insertJiaFenXiang" method="post">
        <table class="zhuce">
            <tr>
                <td style="width: 99px">学号：</td>
                <td><input name="num" type="number" required=""/></td>
            </tr>
            <tr>
                <td>加分项：</td>
                <td>
                    <label for="fileinp">
                        <input type="button" value="点我上传" style="font-family: Semibold;font-size: 16px;width: 100px">
                        <span id="text" style="font-size: 20px"></span>
                        <input type="file" id="fileinp" name="jiaFenXiang">
                    </label>
                </td>
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