package cn.zjdev.coursekill.service.Impl;

import cn.zjdev.coursekill.dao.UserDao;
import cn.zjdev.coursekill.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public boolean checkPassword(int id,String password) {

        return password.equals(userDao.queryStuPassById(id));
    }

}
