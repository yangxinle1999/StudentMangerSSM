<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>老师注册</title>
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
    <span>老师注册</span>
    <form action="${pageContext.request.contextPath}/teacherInsert" method="post" enctype="multipart/form-data">
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
                <td>院系：</td>
                <td>
                    <select name="xueyuan" class="xueyuan">
                        <option value="信息技术学院">信息技术学院</option>
                        <option value="商学院">商学院</option>
                        <option value="金融学院">金融学院</option>
                        <option value="财政税务学院">财政税务学院</option>
                        <option value="会计学院">会计学院</option>
                        <option value="工商管理学院">工商管理学院</option>
                        <option value="文化与传播学院">文化与传播学院</option>
                        <option value="外国语学院">外国语学院</option>
                        <option value="艺术学院">艺术学院</option>
                        <option value="数学与统计学学院">数学与统计学学院</option>
                        <option value="生物科学与工程学院">生物科学与工程学院</option>
                        <option value="旅游学院">旅游学院</option>
                        <option value="马克思主义学院">马克思主义学院</option>
                        <option value="管理科学与工程学院">管理科学与工程学院</option>
                        <option value="法学院">法学院</option>
                        <option value="公共管理学院">公共管理学院</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input name="sex" type="text"/></td>
            </tr>
            <tr>
                <td>电话：</td>
                <td><input name="phone" type="tel"/></td>
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