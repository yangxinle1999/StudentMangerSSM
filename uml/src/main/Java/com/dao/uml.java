package com.dao;

import com.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface uml {
    int studentInsert(student student);
    int teacherInsert(teacher teacher);
    int guanLiYuanInsert(guanliyuan guanliyuan);
    student selectStudent(student student);
    teacher selectTeacher(teacher teacher);
    guanliyuan selectGuanLiYuan(guanliyuan guanliyuan);
    int ChangePassword(@Param("pass") String pass,@Param("num") String num);
    student selectStudentByNum(@Param("num") String num);
    int insertJiaFenXiang(@Param("num") String num,@Param("jiafen") String jiafen);
    List<jiafenxiang> jiafenxiangselect(@Param("num") String num);
    int ChangePassword1(@Param("pass") String pass,@Param("num") String num);
    teacher selectTeacherByNum(@Param("num") String num);
    guanliyuan selectGuanliyuanByNum(@Param("num") String num);
    int ChangePassword2(@Param("pass") String pass,@Param("num") String num);
    List<jiafenxiang> selectJianFenXiang();
    int addCourse(course course);
    List<course> selectCourse(course course);
    List<course> selectCourse1();
    xuanke xuanKeSelect(xuanke xuanke);
    int xuanKeInsert(xuanke xuanke);
    List<xuanke> selectXuanKe(@Param("name") String name);
}
