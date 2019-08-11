package cn.zjdev.coursekill.controller;

import cn.zjdev.coursekill.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes({"stuid"})
public class LoginController {
    @Resource
    private UserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String checkAccount(@RequestParam("userid") int id, @RequestParam("userpass") String pass, Model model,HttpSession session) {
        System.out.println(id);
        System.out.println(pass);
        System.out.println(userService.checkPassword(id,pass));
        if(userService.checkPassword(id,pass)){
            model.addAttribute("stuid",id);
            return "redirect:course/list";
        }
        else{
            model.addAttribute("msg","账号或密码错误");
            return "redirect:/login";
        }
    }


}
