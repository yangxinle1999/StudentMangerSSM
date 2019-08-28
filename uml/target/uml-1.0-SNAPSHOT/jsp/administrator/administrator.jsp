<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理者页面</title>
    <link rel="stylesheet" href="../css/mystyle.css"/>
    <link href="../img/tubiao.ico" rel="icon">
    <script src="../js/myjavascript.js"></script>
</head>
<body>
<div class="bodymain">
    <div class="main"  style="display: flex;flex-direction: column">
        <div class="logonav">
            <h1>学生成绩管理分析系统</h1>
            <hr style="border-color: #006dd6">
        </div>

        <div class="topzi">
            <span class="zhuye" style=" color:white;">主页</span>
            <span>当前页面：[管理员]</span>
            <span align="center" class="STYLE9">今天是：
                <script language=JavaScript>
                    today=new Date();
                    function initArray(){
                        this.length=initArray.arguments.length;
                        for(var i=0;i<this.length;i++)
                            this[i+1]=initArray.arguments[i] }
                    var d=new initArray(
                            "星期日",
                            "星期一",
                            "星期二",
                            "星期三",
                            "星期四",
                            "星期五",
                            "星期六");
                    document.write(
                            "<font color=black style='font-size:14pt;font-family: 宋体'> ",
                            today.getFullYear(),"年",
                            today.getMonth()+1,"月",
                            today.getDate(),"日",
                            d[today.getDay()+1],
                            "</font>" );
                </script>
            </span>
            <hr style="background-color: #153bbe;height: 6px; border: none"/>
        </div>
        <div style="display:flex;">
            <div>
                <div class="myinfo">
                    <div class="myinfotop">
                        <span style="margin-right:50px;"><strong>个人信息</strong></span>
                        <span><a href="../changePassword2.jsp" target="mainFrame">[修改密码]</a></span>
                        <span><a href="${pageContext.request.contextPath}/index.jsp">[注销]</a></span>
                    </div>
                    <div class="myinfosub">
                        <img src="${sessionScope.guan.gTouxiang}"/>
                        <div class="myinfosubri">
                            <div style="margin-bottom: 20px;"><strong>${sessionScope.guan.gName}</strong></div>
                        </div>
                    </div>
                </div>
                <div class="glmenu">
                    <ul>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown">用户管理<i class="icon-arrow"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#" target="mainFrame">老师管理</a></li>
                                <li><a href="#" target="mainFrame">学生管理</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown">课程管理 <i class="icon-arrow"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">课程信息维护</a></li>
                                <li><a href="#">课程信息添加</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown">成绩管理<i class="icon-arrow"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">录入学生成绩</a></li>
                                <li><a href="${pageContext.request.contextPath}/shenheJiaFengXiang" target="mainFrame">审核加分项</a></li>
                                <li><a href="#">学生成绩统计计算</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown">系统信息<i class="icon-arrow"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">系统信息维护</a></li>
                                <li><a href="#">系统信息修改</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <iframe id="mainFrame" class="middle_right1" name="mainFrame" style="border: 0;" src="../frameMain.html">
            </iframe>
        </div>
    </div>
    <script>
        // Dropdown Menu
        var dropdown = document.querySelectorAll('.dropdown');
        var dropdownArray = Array.prototype.slice.call(dropdown,0);
        dropdownArray.forEach(function(el){
            var button = el.querySelector('a[data-toggle="dropdown"]'),
                    menu = el.querySelector('.dropdown-menu'),
                    arrow = button.querySelector('i.icon-arrow');

            button.onclick = function(event) {
                if(!menu.hasClass('show')) {
                    menu.classList.add('show');
                    menu.classList.remove('hide');
                    arrow.classList.add('open');
                    arrow.classList.remove('close');
                    event.preventDefault();
                }
                else {
                    menu.classList.remove('show');
                    menu.classList.add('hide');
                    arrow.classList.remove('open');
                    arrow.classList.add('close');
                    event.preventDefault();
                }
            };
        });

        Element.prototype.hasClass = function(className) {
            return this.className && new RegExp("(^|\\s)" + className + "(\\s|$)").test(this.className);
        };
    </script>
</div>
</body>
</html>