package cn.zjdev.coursekill.dao;//package com.gdufe.course.mapper;



import cn.zjdev.coursekill.model.Course;
import cn.zjdev.coursekill.model.Course_choose;
import cn.zjdev.coursekill.model.Course_limit;
import cn.zjdev.coursekill.model.Institution;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface CourseDao {
    //退课：
    //减少已选数量
    public void reduceChooseNum(int id);
    public void deleteCourseChoose(@Param("stuId") int stuId,@Param("classId") int classId);

    //抢课：
    //增加已选数量，“减库存”
    public int increaseChooseNum(int id);
    //增加关系到选课表，“插入记录购物明晰”
    public int insertCourseChoose(@Param("stuId") int stuId,@Param("classId") int classId);


    //课程列表
    public List<Course> queryAllCourseInfo(@Param("offset") int offset,@Param("limit") int limit);
}
