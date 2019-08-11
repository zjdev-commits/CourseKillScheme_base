package cn.zjdev.coursekill.controller;



import cn.zjdev.coursekill.model.Course;
import cn.zjdev.coursekill.service.CourseService;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("/course")
public class CourseController {

    private final org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource
    private CourseService courseService;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        List<Course> courseList = courseService.queryAllCourses();
        model.addAttribute("list", courseList);
        return "list";
    }


    @RequestMapping(value = "/{classId}", method = RequestMethod.GET,
            produces = {"application/json;charset=UTF-8"})
    public String chooseCourse(@PathVariable("classId") int classId, Model model, HttpServletRequest request) {
        int stuId = (int) request.getSession().getAttribute("stuid");
        List<Course> courses = courseService.executeChooseCourse(stuId, classId);
        return "forward:list";
    }

    @RequestMapping(value = "/test")
    public String test() {
        return "test";
    }
}