package com.zxy.Controller;

import com.zxy.Dao.CompanyDao;
import com.zxy.Dao.FurlDao;
import com.zxy.Dao.UserDao;
import com.zxy.Model.Company;
import com.zxy.Model.Furl;
import com.zxy.Model.User;
import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * 用于系统的登录,
 */
@Controller
@RequestMapping("/sys")
public class SystermController {


    @Autowired
    private UserDao userDao;

    @Autowired
    private CompanyDao companyDao;
    @Autowired
    private FurlDao furlDao;

    /**
     * 进入登录页面
     * @return
     */
    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    /**
     * 成功则进入药材添加，新闻发布的页面
     * @param username
     * @param passwd
     * @return
     */
    @RequestMapping("/check")
    public String check(@RequestParam("UserName") String  username,@RequestParam("passWd") String  passwd){
      User user=  userDao.findByUsername(username);
       if( user.getPasswd().equals(passwd)){
           /**
            * 至于药材的管理,希望添加到ES库
            */
           return "m_manager";
       }else{
           return "login";
       }
    }
    @ResponseBody
    @RequestMapping("/findC")
    public Company findcompany(){
        Company company=  companyDao.findById(1).get();
        return company;
    }

    @ResponseBody
    @RequestMapping("/findUrls")
    public List<Furl> findUrls(){
        return  furlDao.findAll();
    }

}

