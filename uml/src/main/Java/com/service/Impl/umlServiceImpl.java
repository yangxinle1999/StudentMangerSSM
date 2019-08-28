package com.service.Impl;

import com.dao.uml;
import com.entity.*;
import com.service.umlService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class umlServiceImpl implements umlService{
    @Autowired
    private uml uml;
    public int studentInsert(student student){
        return uml.studentInsert(student);
    }
    public int teacherInsert(teacher teacher){
       return uml.teacherInsert(teacher);
    }
    public int guanLiYuanInsert(guanliyuan guanliyuan){
       return uml.guanLiYuanInsert(guanliyuan);
    }
    public student selectStudent(student student){
        return uml.selectStudent(student);
    }
   public teacher selectTeacher(teacher teacher){
        return uml.selectTeacher(teacher);
   }
    public guanliyuan selectGuanLiYuan(guanliyuan guanliyuan){
        return uml.selectGuanLiYuan(guanliyuan);
    }
    public int ChangePassword(String password,String num){
        return uml.ChangePassword(password,num);
    }
    public student selectStudentByNum(String num){
        return uml.selectStudentByNum(num);
    }
    public int insertJiaFenXiang(String num,String jiafen){
        return uml.insertJiaFenXiang(num,jiafen);
    }
    public List<jiafenxiang> jiafenxiangselect(String num){
        return uml.jiafenxiangselect(num);
    }
    public int ChangePassword1(String password,String num){
        return uml.ChangePassword1(password,num);
    }
    public teacher selectTeacherByNum(String num){
        return uml.selectTeacherByNum(num);
    }
    public guanliyuan selectGuanliyuanByNum(String num){
        return uml.selectGuanliyuanByNum(num);
    }
    public int ChangePassword2(String password,String num){
        return uml.ChangePassword2(password,num);
    }
    public List<jiafenxiang> selectJianFenXiang(){
        return uml.selectJianFenXiang();
    }
    public int addCourse(course course)
    {
        return uml.addCourse(course);
    }
    public List<course> selectCourse(course course){
        return uml.selectCourse(course);
    }
    public List<course> selectCourse1(){
        return uml.selectCourse1();
    }
    public xuanke xuanKeSelect(xuanke xuanke){
        return uml.xuanKeSelect(xuanke);
    }
    public int xuanKeInsert(xuanke xuanke){
        return uml.xuanKeInsert(xuanke);
    }
    public List<xuanke> selectXuanKe(String name){
        return uml.selectXuanKe(name);
    }
}
