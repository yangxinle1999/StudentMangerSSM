<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>修改密码</title>
    <script src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <link href="img/tubiao.ico" rel="icon">
    <link href="css/zhuce.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="body" style="height: 600px;width: 600px;margin-top: 20px">
    <span>修改密码</span>
    <form onsubmit="return beforeSubmit(this);" name="insert" action="${pageContext.request.contextPath}/changePassword1">
        <table class="zhuce">
            <tr>
                <td style="width: 124px">原密码：</td>
                <td><input name="password" type="password" required="" id="yuan"/></td>
            </tr>
            <tr>
                <td style="width: 124px">新密码：</td>
                <td><input name="password1" type="password" required=""/></td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input name="password2" type="password" required=""/></td>
            </tr>
        </table>
        <div class="button">
            <input type="submit" class="submit" id="sub"/>
            <input type="reset" class="reset"/>
        </div>
    </form>
</div>
</body>
</html>
<script type="text/javascript">
    $("#yuan").blur(function () {
        var yuan=$("#yuan").val();
        $.ajax({
            url:"${pageContext.request.contextPath}/yuanPass1",
            type:"POST",
            data:"namm="+yuan,
            contentType:"application/x-www-form-urlencoded; charset=utf-8",//解决中文乱码问题
            success:function (mm) {
                if(mm==0){
                    alert("原密码输入错误，请重新输入！");
                    window.location.href="${pageContext.request.contextPath}/jsp/changePassword1.jsp"
                }
            }

        })
    });
    function beforeSubmit(insert){
        if (insert.password1.value != insert.password2.value) {
            alert("你两次输入的密码不一致，请重新输入！");
            insert.password1.focus();
            return false;
        }
        return true;
    }
</script>
