/**
 * Created by pc on 2019/4/22.
 */
//检验用户名
function checkSno(){
//    先获取用户名元素
    var Sno =document.getElementById('Sno').value;
//    创建校验规则
    var reg=/^(201)+(\d){9}$/;
//    开始校验，输出结果要显示，用js覆盖
    var span=document.getElementById('SnoSpan');
    if(Sno==''||Sno==null) {
        span.innerHTML="*学号不能为空";
        span.style.color='red';
        return false;
    } else if(reg.test(Sno)) {
        span.innerHTML=' ';
        return true;
    } else{
        span.innerHTML='*格式不匹配';
        span.style.color='red';
        return false;
    }
}
//验证密码
function checkPwd() {
    var pwd =document.getElementById('password').value;
    var reg=/^[a-zA-Z0-9]{6,20}$/;
    var span=document.getElementById('pwdSpan');
    if(pwd==''||pwd==null) {
        span.innerHTML="*密码不能为空"
    }else if(reg.test(pwd)) {
        span.innerHTML = ' ';
        return true;
    } else{
        span.innerHTML="*格式不匹配";
    }
}
//验证确认密码
function checkPwd1(){
    var pwd=document.getElementById('password').value;
    var pwd1=document.getElementById('password1').value;
    var span=document.getElementById('pwdSpan1');
    if(pwd1==''||pwd1==null) {
        span.innerHTML="*密码不能为空";
        span.style.color='red';
        return false;
    } else if(pwd==pwd1){
        span.innerHTML=" ";
        return true;
    } else{
        span.innerHTML="*两次密码不相同";
        span.style.color='red';
        return false;
    }

}
//验证姓名
function checkSname(){
    var Sname=document.getElementById('Sname').value;
    var nameSpan=document.getElementById('nameSpan');
    if(Sname==''||Sname==null) {
        nameSpan.innerHTML='*姓名不能为空';
        nameSpan.style.color='red';
        return false;
    } else{
        nameSpan.innerHTML=' ';
    }
}
//手机号验证
function checkMobile() {
    var mobile=document.getElementById('Mobile').value;
    var reg=/^1[34578]\d{9}$/;
    var span= document.getElementById('mobileSpan');
    if(mobile==''||mobile==null) {
        span.innerHTML='手机号不能为空';
        span.style.color='red';
        return false;
    } else if(reg.test(mobile)){
        span.innerHTML=' ';
    } else{
        span.innerHTML='*格式不正确';
        span.style.color='red';
        return false;
    }
}
//验证QQ号
function checkQQ(){
    var qq=document.getElementById('QQ').value;
    var span=document.getElementById('QQSpan');
    var reg=/[1-9][0-9]{4,}/;
    if(qq==''||qq==null){
        span.innerHTML='*QQ不能为空';
        span.style.color='red';
        return false;
    } else if(reg.test(qq)) {
        span.innerHTML=' ';
    } else{
        span.innerHTML='格式不正确';
        span.style.color='red';
        return false;
    }
}