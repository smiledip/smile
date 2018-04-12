package com.zxy.Controller;

import com.zxy.Dao.MedicinalDao;
import com.zxy.Model.Medicinal;
import com.zxy.Util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/com")
public class CompanyController {


    @Autowired
    private MedicinalDao medicinalDao;

    /**
     * 打开首页
     * @param
     * @return
     */
    @RequestMapping(value = "/index")
    public String  show(){
        return "main/index";
    }


    /**
     * 关于我们
     * @param
     * @return
     */
    @RequestMapping(value = "/profile")
    public String  profile(){
        return "main/profile";
    }

    /**
     * 主营产品
     * @param
     * @return
     */
    @RequestMapping(value = "/product")
    public String  product(){
        return "main/product";
    }



    /**
     * 主营药材，种子的调用接口
     * @param mtype 0,药材，1.种子,2加工
     * @return
     */

    @ResponseBody
    @RequestMapping("/findMain")
    public List<Medicinal>   findMain(@RequestParam("mtype") int mtype,@RequestParam("mflag") String mflag){
        List<Medicinal> lis= medicinalDao.findByMtypeAndMflag(mtype,mflag);
        return lis;
    }

    /**
     * 主要产品，主要ES要实现翻页的查询,默认每页12条吧
     * @param type
     * @param currentPage
     * @return 返回的json 要包含list列表，还要包含总页数，当前页数等信息，需要辅助的page类
     */
    @ResponseBody
    @RequestMapping(value = "/product", produces ="application/json;charset=UTF-8;")
    public Page<Medicinal>  product(@RequestParam("type") int type,@RequestParam("currentPage") int currentPage){
         Page<Medicinal> page= medicinalDao.findBypage(type,new Page(currentPage));
           return page;
    }


}
