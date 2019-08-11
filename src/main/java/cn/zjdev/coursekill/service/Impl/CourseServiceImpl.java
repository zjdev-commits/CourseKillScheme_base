package cn.zjdev.coursekill.service.Impl;


import cn.zjdev.coursekill.dao.CourseDao;
import cn.zjdev.coursekill.exception.KillException;
import cn.zjdev.coursekill.exception.RepeatKillException;
import cn.zjdev.coursekill.model.*;
import cn.zjdev.coursekill.service.CourseService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.logging.Logger;

@Service
public class CourseServiceImpl implements CourseService {
    private org.slf4j.Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CourseDao courseDao;


    @Override
    public void deleteCourseChoosed(int stuId, int classId) {
        courseDao.reduceChooseNum(classId);
        courseDao.deleteCourseChoose(stuId,classId);
    }

    @Override
    public List<Course> queryAllCourses() {
        List<Course> course_list = courseDao.queryAllCourseInfo(0,10);
        return course_list;
    }



   /* @Override
    @Transactional
    public List<Course> executeChooseCourse( int stuId,int classId) {
        try {
            int ret = courseDao.increaseChooseNum(classId);
            if (ret <= 0) {
                throw new KillException("课堂人数已满");
            } else {
                Course_choose course_choose = new Course_choose();
                int insertCount = courseDao.insertCourseChoose(stuId,classId);
                if (insertCount <= 0) {
                    throw new RepeatKillException("课程重复提交");
                } else {
                    List<Course> courseList = courseDao.queryAllCourseInfo(0,10);
                    return courseList;
                }
            }
        } catch (RepeatKillException e) {
            throw e;
        } catch (Exception e) {
            logger.error(e.getMessage());
            throw new KillException("seckill inner error :" + e.getMessage());
        }
    }*/
/*
优化1：先增加联系，再加已选量
*/
    @Override
    @Transactional
    public List<Course> executeChooseCourse( int stuId,int classId) {
        try{
            Course_choose course_choose = new Course_choose();
            int insertCount = courseDao.insertCourseChoose(stuId,classId);
            if (insertCount <= 0) {
                throw new RepeatKillException("课程重复提交");
            } else {
                int ret = courseDao.increaseChooseNum(classId);
                if (ret <= 0) {
                    throw new KillException("课堂人数已满");
                }  else {
                    List<Course> courseList = courseDao.queryAllCourseInfo(0,10);
                    return courseList;
                }
            }
        } catch (RepeatKillException e) {
            throw e;
        } catch (Exception e) {
            logger.error(e.getMessage());
            throw new KillException("seckill inner error :" + e.getMessage());
        }
    }

}
