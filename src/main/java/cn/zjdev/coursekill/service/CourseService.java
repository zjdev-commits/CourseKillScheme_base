package cn.zjdev.coursekill.service;

import cn.zjdev.coursekill.model.Course;
import cn.zjdev.coursekill.model.Institution;
import cn.zjdev.coursekill.model.Student;

import java.util.List;

public interface CourseService {

    /*查询全部课程列表*/
    public List<Course> queryAllCourses();

    /*删除所选的课*/
    public void deleteCourseChoosed(int stuId, int classId);

    /*进行选课*/
    public List<Course> executeChooseCourse(int stuId,int classId);

}
