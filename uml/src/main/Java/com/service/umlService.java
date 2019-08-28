package com.service;

import com.entity.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface umlService {
    int studentInsert(student student);
    int teacherInsert(teacher teacher);
    int guanLiYuanInsert(guanliyuan guanliyuan);
    student selectStudent(student student);
    teacher selectTeacher(teacher teacher);
    guanliyuan selectGuanLiYuan(guanliyuan guanliyuan);
    int ChangePassword(String password,String num);
    student selectStudentByNum(String num);
    int insertJiaFenXiang(String num,String jiafen);
    List<jiafenxiang> jiafenxiangselect(String num);
    int ChangePassword1(String password,String num);
    teacher selectTeacherByNum(String num);
    guanliyuan selectGuanliyuanByNum(String num);
    int ChangePassword2(String password,String num);
    List<jiafenxiang> selectJianFenXiang();
    int addCourse(course course);
    List<course> selectCourse(course course);
    List<course> selectCourse1();
    xuanke xuanKeSelect(xuanke xuanke);
    int xuanKeInsert(xuanke xuanke);
    List<xuanke> selectXuanKe(String name);
}
