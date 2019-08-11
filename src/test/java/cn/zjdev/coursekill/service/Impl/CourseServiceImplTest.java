package cn.zjdev.coursekill.service.Impl;


import cn.zjdev.coursekill.model.Course;
import cn.zjdev.coursekill.service.CourseService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml",
        "classpath:spring/spring-service.xml"})
public class CourseServiceImplTest {
    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    CourseService courseService;


    @Test
    public void deleteCourseChoosed() {
    courseService.deleteCourseChoosed(1625110001,1005);
    }

    @Test
    public void queryAllCourses() {
        List<Course> list = courseService.queryAllCourses();
    }

    @Test
    public void executeChooseCourse() {
        List<Course> list = courseService.executeChooseCourse(1625110001,1005);
        for(Course course:list){
            logger.info(course.toString());
        }
    }
}