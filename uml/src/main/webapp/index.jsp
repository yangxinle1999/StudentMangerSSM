<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jsp/js/easeljs.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/js/jquery.combo.select.js"></script>
    <script src="${pageContext.request.contextPath}/jsp/js/formTest.js" type="text/javascript" charset="UTF-8"></script>
    <script src="${pageContext.request.contextPath}/jsp/js/jquery-1.12.3.js" type="text/javascript" charset="utf-8"></script>
    <link href="${pageContext.request.contextPath}/jsp/css/index.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/jsp/css/combo.select.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/jsp/img/tubiao.ico" rel="icon">
    <title>学生成绩管理分析系统</title>
</head>
<body>
<div>
    <canvas id="mycanvas" width="600" height="280" style="float: left"></canvas>
    <script type="text/javascript">
        var stage = new createjs.Stage("mycanvas");
        createjs.Ticker.addEventListener("tick", stageBreakHandler);
        var img =  new Image();
        img.src = "${pageContext.request.contextPath}/jsp/img/horse.png";
        img.onload = function(){
            var ss = new createjs.SpriteSheet({
                "images": ["${pageContext.request.contextPath}/jsp/img/horse.png"],
                "frames": [
                    [519,1352,468,225,0,-39.5,-6.05],
                    [525,694,405,225,0,-39.5,-6.05],
                    [402,1577,398,241,0,-37.5,-9.05],
                    [0,1565,402,239,0,-33.5,-8.05],
                    [521,920,430,233,0,-23.5,-14.05],
                    [520,0,465,228,0,-7.5,-22.05],
                    [515,238,479,228,0,-8.5,-24.05],
                    [508,470,500,224,0,-2.5,-26.05],
                    [0,470,508,231,0,-5.5,-20.05],
                    [0,238,515,232,0,-9.5,-17.05],
                    [0,0,520,238,0,-12.5,-11.05],
                    [0,920,521,219,0,-18.5,-11.05],
                    [0,701,525,219,0,-18.5,-11.05],
                    [0,1352,519,213,0,-28.5,-10.05],
                    [0,1139,520,213,0,-28.5,-10.05]
                ],
                "animations" : {
                    "run": [0,14,"run"]
                }
            });

            var sp = new createjs.Sprite(ss,"run");
            stage.addChild(sp);
            stage.update();
        };

        function stageBreakHandler(event){
            stage.update();
        }
    </script>
    <div style="display: flex;flex-direction: column;justify-content: center;float: left">
        <div class="head">学生成绩管理分析系统</div>
        <form action="#" method="post" autocomplete="off" class="main">
            <input name="num" type="text" placeholder="账号" maxlength="12" required="" id="nn"/>
            <input name="password" type="password" placeholder="密码" maxlength="20" required="" id="ss" />
            <div style="height: 40px">
                <div class="main-checkbox">
                    <input type="radio" value="radio1" id="radio1" name="check" onclick="getId1()"/>
                    <label for="radio1"></label>
                </div>
                <span class="text">管理员</span>
                <div class="main-checkbox">
                    <input type="radio" value="radio2" id="radio2" name="check" onclick="getId2()"/>
                    <label for="radio2"></label>
                </div>
                <span class="text">老师</span>
                <div class="main-checkbox">
                    <input type="radio" value="radio3" id="radio3" name="check" onclick="getId3()" />
                    <label for="radio3"></label>
                </div>
                <span class="text">学生</span>
            </div>
            <input name="submit" type="button" value="登录" id="denglu"/>
            <input name="zhuce" type="button" value="注册" id="zhuce"/>
        </form>
    </div>
    <script>
        var n, m,q;

        function getId1(){
            n=document.getElementById("radio1").value;
            console.log(n);
        }
        function getId2(){
            m=document.getElementById("radio2").value;
            console.log(m);
        }
        function getId3(){
            q=document.getElementById("radio3").value;
            console.log(q);
        }
       $("#zhuce").click(function(){
           if(n=="radio1"){
               window.location.href="${pageContext.request.contextPath}/jsp/administrator/adminZhuCe.jsp";
           }
       });
        $("#zhuce").click(function(){
            if(m=="radio2"){
                window.location.href="${pageContext.request.contextPath}/jsp/teacher/teacherSubmit.jsp";
            }
        });
        $("#zhuce").click(function(){
            if(q=="radio3"){
                window.location.href="${pageContext.request.contextPath}/jsp/student/studentSubmit.jsp";
            }
        });
        $("#denglu").click(function(){
            if(n=="radio1"){
                var num=$("#nn").val();
                var password=$("#ss").val();
                window.location.href="${pageContext.request.contextPath}/selectGuanLiYuan?num="+num+"&password="+password;
            }
        });
        $("#denglu").click(function(){
            if(m=="radio2"){
                var num=$("#nn").val();
                var password=$("#ss").val();
                window.location.href="${pageContext.request.contextPath}/selectTeacher?num="+num+"&password="+password;
            }
        });
        $("#denglu").click(function(){
            if(q=="radio3"){
                var num=$("#nn").val();
                var password=$("#ss").val();
                console.log(num);
                window.location.href="${pageContext.request.contextPath}/selectStudent?num="+num+"&password="+password;
            }
        });
    </script>
</div>
</body>
</html>