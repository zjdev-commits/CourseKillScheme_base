package cn.zjdev.coursekill.dao;

import cn.zjdev.coursekill.model.Course;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml",
        "classpath:spring/spring-service.xml"})
public class CourseDaoTest {

    @Autowired
    private CourseDao courseDao;
    @Test
    public void reduceChooseNum() {
        courseDao.reduceChooseNum(1001);
    }

    @Test
    public void deleteCourseChoose() {
        courseDao.deleteCourseChoose(2010000,1002);
    }

    @Test
    public void addChooseNum() {
    }

    @Test
    public void insertCourseChoose() {
    }

    @Test
    public void queryAllCourseInfo() {
        List<Course> courseList = courseDao.queryAllCourseInfo(0,10);
        for(Course course:courseList){
            System.out.println(course);
        }
    }
}