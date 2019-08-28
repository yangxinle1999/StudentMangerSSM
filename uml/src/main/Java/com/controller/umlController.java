package com.controller;

import com.entity.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.umlService;
import com.tuPianShangChuan.wenJianShangChuan;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class umlController {

    @Autowired
    private umlService umlService;

    @RequestMapping(value = "/studentInsert",method = RequestMethod.POST)
    public String studentInsert(@RequestParam("name") String Sname,@RequestParam("password") String Spassword,@RequestParam("num")
                                String Snum, @RequestParam("sex") String Ssex,@RequestParam("xueyuan") String SxueYuan,
                                @RequestParam("nianji") String SnianJi,@RequestParam("class") String Sbanji,
                                @RequestParam("touxiang") MultipartFile file) {
        wenJianShangChuan wenJianShangChuan = new wenJianShangChuan();//使用了封装的图片上传代码，减少了代码的冗余
        String newFileName = wenJianShangChuan.wenJianShangChuan(file);
        student student = new student();
        student.setsBanJi(Sbanji);
        student.setsName(Sname);
        student.setsNianJi(SnianJi);
        student.setsNum(Snum);
        student.setsPassword(Spassword);
        student.setsSex(Ssex);
        student.setsXueYuan(SxueYuan);
        student.setsTouxiang("http://localhost:8088/image/"+newFileName);
        int n = umlService.studentInsert(student);
        if (n == 1) {
            return "suc";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "/teacherInsert",method = RequestMethod.POST)
    public String teacherInsert(@RequestParam("name") String Tname,@RequestParam("gonghao") String TgongHao,@RequestParam("password")
                                String Tpassword,@RequestParam("xueyuan") String TyuanXi,@RequestParam("sex") String Tsex,
                                @RequestParam("phone") String TshouJiHao,@RequestParam("touxiang") MultipartFile file){
        wenJianShangChuan wenJianShangChuan = new wenJianShangChuan();//使用了封装的图片上传代码，减少了代码的冗余
        String newFileName = wenJianShangChuan.wenJianShangChuan(file);
        teacher teacher=new teacher();
        teacher.settGongHao(TgongHao);
        teacher.settName(Tname);
        teacher.settPassword(Tpassword);
        teacher.settYuanXi(TyuanXi);
        teacher.settShouJiHao(TshouJiHao);
        teacher.settSex(Tsex);
        teacher.settTouxiang("http://localhost:8088/image/"+newFileName);
        int m=umlService.teacherInsert(teacher);
        if (m == 1) {
            return "suc";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "guanLiYuanInsert",method = RequestMethod.POST)
    public String guanLiYuanInsert(@RequestParam("name")String Gname,@RequestParam("password") String Gpassword,@RequestParam("gonghao")
                                   String GgongHao,@RequestParam("phone")String GlianXiFangShi,@RequestParam("touxiang") MultipartFile file){
        wenJianShangChuan wenJianShangChuan = new wenJianShangChuan();//使用了封装的图片上传代码，减少了代码的冗余
        String newFileName = wenJianShangChuan.wenJianShangChuan(file);
        guanliyuan guanliyuan=new guanliyuan();
        guanliyuan.setgGongHao(GgongHao);
        guanliyuan.setgLianXiFangShi(GlianXiFangShi);
        guanliyuan.setgPassword(Gpassword);
        guanliyuan.setgName(Gname);
        guanliyuan.setgTouxiang("http://localhost:8088/image/"+newFileName);
        int a=umlService.guanLiYuanInsert(guanliyuan);
        if (a == 1) {
            return "suc";
        } else {
            return "fail";
        }
    }

    @RequestMapping(value = "selectStudent")//登录之前必执行
    public String selectStudent(@RequestParam("num") String Snum, @RequestParam("password") String Spassword, HttpSession session){
        student student=new student();
        student.setsNum(Snum);
        student.setsPassword(Spassword);
        student student1=umlService.selectStudent(student);
        session.setAttribute("student2",student1);
        if (student1==null){
            return "dengLuFail";
        }else {
//            session.setAttribute("student",student1);
            return "student/denglusuc";
        }
    }

    @RequestMapping("selectTeacher")
    public String selectTeacher(@RequestParam("num") String TgongHao,@RequestParam("password") String Tpassword,HttpSession session){
        teacher teacher=new teacher();
        teacher.settGongHao(TgongHao);
        teacher.settPassword(Tpassword);
        teacher teacher1=umlService.selectTeacher(teacher);
        if (teacher1==null){
            return "dengLuFail";
        }else {
            session.setAttribute("teacher",teacher1);
            return "teacher/dengLuSuc";
        }
    }

    @RequestMapping("selectGuanLiYuan")
    public String selectGuanLiYuan(@RequestParam("num") String GgongHao,@RequestParam("password") String Gpassword,HttpSession session){
        guanliyuan guanliyuan=new guanliyuan();
        guanliyuan.setgPassword(Gpassword);
        guanliyuan.setgGongHao(GgongHao);
        guanliyuan guanliyuan1=umlService.selectGuanLiYuan(guanliyuan);
        if (guanliyuan1==null){
            return "dengLuFail";
        }else {
            session.setAttribute("guan",guanliyuan1);
            return "administrator/dengLuSuc";
        }
    }

    @RequestMapping("yuanPass")
    public void yuanPass(@RequestParam("name") String yuan, HttpSession session, HttpServletResponse response) {
        student student = (student) session.getAttribute("student2");
        String num = student.getsNum();
        student student1=umlService.selectStudentByNum(num);
        if (yuan.equals(student1.getsPassword())) {
            try {
                response.getWriter().print(1);//1表示正确
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else {
            try {
                response.getWriter().print(0);//0表示错误
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @RequestMapping("ChangePassword")
    public String ChangePassword(@RequestParam("password1") String password1,HttpSession session) {
        student student=(student) session.getAttribute("student2");
        String sNum=student.getsNum();
        int n = umlService.ChangePassword(password1,sNum);
        if (n == 1) {
            return "student/pasChangeCg";
        } else {
            return "student/pasChangeSb";
        }
    }

    @RequestMapping(value = "insertJiaFenXiang",method = RequestMethod.POST)
    public String insertJiaFenXiang(@RequestParam("num") String num,@RequestParam("jiaFenXiang") MultipartFile file) {
        wenJianShangChuan wenJianShangChuan = new wenJianShangChuan();//使用了封装的图片上传代码，减少了代码的冗余
        String newFileName = wenJianShangChuan.wenJianShangChuan(file);
        String file1 = "http://localhost:8088/image/" + newFileName;
        int n = umlService.insertJiaFenXiang(num, file1);
        if (n == 1) {
            return "student/jiaFenSc";
        }else {
            return "student/jiaFenSb";
        }
    }

    @RequestMapping("chaxunjiafenxiang")
    public String chaxunjiafenxiang(HttpSession session, Model model, @RequestParam(value = "page", defaultValue = "1") Integer page,
                                    @RequestParam(name = "size", defaultValue = "3") int size){
        PageHelper.startPage(page, size);
        student student=(student)session.getAttribute("student2");
        List<jiafenxiang> jiafenxiang=umlService.jiafenxiangselect(student.getsNum());
        PageInfo<jiafenxiang> p = new PageInfo<jiafenxiang>(jiafenxiang);
        model.addAttribute("student3",p);
        return "student/SjiaFenXiang";
    }

    @RequestMapping(value = "yuanPass1",method = RequestMethod.POST)
    public void yuanPass1(@RequestParam("namm") String yuan, HttpSession session, HttpServletResponse response) {
        teacher teacher=(teacher) session.getAttribute("teacher");
        String num = teacher.gettGongHao();
        teacher teacher1=umlService.selectTeacherByNum(num);
        if (yuan.equals(teacher1.gettPassword())) {
            try {
                response.getWriter().print(1);//1表示正确
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else {
            try {
                response.getWriter().print(0);//0表示错误
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    @RequestMapping("changePassword1")
    public String changePassword1(@RequestParam("password1") String password1,HttpSession session) {
        teacher teacher=(teacher) session.getAttribute("teacher");
        String tNum=teacher.gettGongHao();
        int n = umlService.ChangePassword1(password1,tNum);
        if (n == 1) {
            return "teacher/pasChangeCg";
        } else {
            return "teacher/pasChangeSb";
        }
    }

    @RequestMapping(value = "yuanPass2",method = RequestMethod.POST)
    public void yuanPass2(@RequestParam("nam") String yuan, HttpSession session, HttpServletResponse response) {
        guanliyuan guanliyuan=(guanliyuan) session.getAttribute("guan") ;
        String num = guanliyuan.getgGongHao();
        guanliyuan guanliyuan1=umlService.selectGuanliyuanByNum(num);
        if (yuan.equals(guanliyuan1.getgPassword())) {
            try {
                response.getWriter().print(1);//1表示正确
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else {
            try {
                response.getWriter().print(0);//0表示错误
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @RequestMapping("changePassword2")
    public String changePassword2(@RequestParam("password1") String password1,HttpSession session) {
        guanliyuan guanliyuan=(guanliyuan) session.getAttribute("guan");
        String gNum=guanliyuan.getgGongHao();
        int n = umlService.ChangePassword2(password1,gNum);
        if (n == 1) {
            return "administrator/pasChangeCg";
        } else {
            return "administrator/pasChangeSb";
        }
    }

    @RequestMapping("shenheJiaFengXiang")
    public String shenheJiaFengXiang(Model model, @RequestParam(value = "page", defaultValue = "1") Integer page,
                                     @RequestParam(name = "size", defaultValue = "3") int size){
        PageHelper.startPage(page, size);
        List<jiafenxiang> list=umlService.selectJianFenXiang();
        PageInfo<jiafenxiang> p = new PageInfo<jiafenxiang>(list);
        model.addAttribute("ll",p);
       return "administrator/shenheJiaFengXiang";
    }

    @RequestMapping(value = "addCourse",method = RequestMethod.POST)
    public String addCourse(HttpSession session,@RequestParam("Cname") String cname,@RequestParam("time") String time) {
        teacher teacher = (teacher) session.getAttribute("teacher");
        String name = teacher.gettName();
        String num = teacher.gettGongHao();
        course course = new course();
        course.setcCourse(cname);
        course.setcTime(time);
        course.setsNum(num);
        course.setsName(name);
        int n = umlService.addCourse(course);
        if (n == 1) {
            return "course/addCourseSc";
        } else {
            return "course/addCourseSb";
        }
    }

    @RequestMapping("selectCourse")
    public String selectCourse(HttpSession session,Model model,@RequestParam(value = "page", defaultValue = "1") Integer page,
                               @RequestParam(name = "size", defaultValue = "3") int size){
        PageHelper.startPage(page, size);
        teacher teacher=(teacher) session.getAttribute("teacher");
        String sNum=teacher.gettGongHao();
        course course=new course();
        course.setsNum(sNum);
        List<course> course1=umlService.selectCourse(course);
        PageInfo<course> p=new PageInfo<com.entity.course>(course1);
        model.addAttribute("course",p);
        return "teacher/course";

    }

    @RequestMapping("selectCourse1")
    public String selectCourse1(Model model,@RequestParam(value = "page", defaultValue = "1") Integer page,
                                @RequestParam(name = "size", defaultValue = "3") int size){
        PageHelper.startPage(page, size);
        List<course> courseList=umlService.selectCourse1();
        PageInfo<course> p=new PageInfo<course>(courseList);
        model.addAttribute("course1",p);
        return "student/course";
    }

    @ResponseBody
    @RequestMapping(value = "xuanKeSelect",method = RequestMethod.POST)
    public void xuanKeSelect(@RequestBody course course,HttpSession session,HttpServletResponse response){
        student student=(student) session.getAttribute("student2");
        String sName=student.getsName();
        xuanke xuanke=new xuanke();
        xuanke.setsName(sName);
        xuanke.setcName(course.getcCourse());
        xuanke.setcTime(course.getcTime());
        xuanke.settName(course.getsName());
        xuanke xuanke1=umlService.xuanKeSelect(xuanke);
        if (xuanke1 == null) {
            try {
                response.getWriter().println(1);//1表示还未选，可以选
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                response.getWriter().println(0);//0表示已选，不能重复选
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    @ResponseBody
    @RequestMapping(value = "/xuanKeInsert")
    public void xuanKeInsert(@RequestBody course course, HttpSession session,  HttpServletResponse response) {
        System.out.println(course.getcCourse());
        response.setContentType("text/text;charset=utf-8");
        response.setCharacterEncoding("UTF-8");
        student student = (student) session.getAttribute("student2");
        String sName = student.getsName();
        System.out.println(sName);
        xuanke xuanke = new xuanke();
        xuanke.setsName(sName);
        xuanke.setcName(course.getcCourse());
        xuanke.setcTime(course.getcTime());
        System.out.println(course.getcCourse());
        System.out.println(course.getsName());
        xuanke.settName(course.getsName());
        int hh = umlService.xuanKeInsert(xuanke);
        if (hh == 1) {
            try {
                response.getWriter().println(1);//1表示插入成功
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                response.getWriter().println(0);//0表示插入失败
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @RequestMapping("selectXuanKe")
    public String selectXuanKe(HttpSession session,Model model,@RequestParam(value = "page", defaultValue = "1") Integer page,
                               @RequestParam(name = "size", defaultValue = "3") int size){
        teacher teacher=(teacher) session.getAttribute("teacher");
        PageHelper.startPage(page, size);
        List<xuanke> xuankeList=umlService.selectXuanKe(teacher.gettName());
        PageInfo<xuanke> p=new PageInfo<xuanke>(xuankeList);
        model.addAttribute("xuanke",p);
        return "teacher/student";

    }



}
