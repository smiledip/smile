package com.zxy.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.zxy.model.Company;
import com.zxy.model.Furl;
import com.zxy.model.Medicinal;

import com.zxy.service.CompanyService;
import com.zxy.service.FurlService;
import com.zxy.service.MedicinalService;
import com.zxy.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

/**
 * Created by Administrator on 2017/6/29.
 */
@Controller
public class CompanyController {
  //   private Logger log=Logger.getLogger(CompanyController.class);
    @Autowired
         private CompanyService companyService;

         @Autowired
         private MedicinalService medicinalService;

        @Autowired
        private FurlService furlService;
    //首页
    //将查询到的数据缓存到myCache中,并使用方法名称加上参数中的userNo作为缓存的key
    //通常更新操作只需刷新缓存中的某个值,所以为了准确的清除特定的缓存,故定义了这个唯一的key,从而不会影响其它缓存值
    @RequestMapping("/")
      public String  show(Model model){
        // Company company= companyService.show("1");
        List<Medicinal> lis= medicinalService.list(0,"z");
        Page<Medicinal> page=new Page<Medicinal>();
        page.setList(lis);
        //测试下哈
        //种子
        List<Medicinal> lis1= medicinalService.list(1,"z");
        Page<Medicinal> zpage=new Page<Medicinal>();
        zpage.setList(lis1);
        model.addAttribute("page",page);
        model.addAttribute("zpage",zpage);
        return "view/index";
        }

    /*company介绍的界面*/
    @RequestMapping(value = "/lcurl",produces ="application/json;charset=UTF-8;")
    @ResponseBody
    public String  lcurl(String callback){
        List<Medicinal> lis3= medicinalService.list(2, null);
             String json= JSON.toJSONString(lis3);

       // String result =  "{'ret':'true'}";
        //加上返回参数
        json=callback+"("+json+")";
        // json="callback("+json+")";

        return json;
    }

/*
查询药材或者 种子的界面
 */


/*注意produces ="application/json;charset=UTF-8;"里面是json*/

    @RequestMapping(value = "/product", produces ="application/json;charset=UTF-8;")
    @ResponseBody
    public String  product(int type,int currentPage,String callback){

        Page<Medicinal> page=new Page<Medicinal>();
        page.setCurrentPage(currentPage);
        medicinalService.getPageList(type,page);
//
        String json = JSONObject.toJSONString(page);

        json=callback+"("+json+")";
        // json="callback("+json+")";

        return json;



    }


    @RequestMapping(value = "/medicinal", produces ="application/json;charset=UTF-8;")
    @ResponseBody
    public String  medicinal(int type,String callback){
        List<Medicinal> lis= medicinalService.list(type,"z");
        String json = JSONObject.toJSONString(lis);
        json=callback+"("+json+")";
        return json;

    }

}
