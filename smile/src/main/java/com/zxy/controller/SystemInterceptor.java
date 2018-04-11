package com.zxy.controller;

import com.zxy.model.Company;
import com.zxy.model.Furl;
import com.zxy.service.CompanyService;
import com.zxy.service.FurlService;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;


import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;


import javax.servlet.http.HttpSession;
import java.util.List;

@Component
public class SystemInterceptor implements InitializingBean {

    @Autowired
    private CompanyService companyService;

    @Autowired
    private FurlService furlService;



    /*add session*/
   public void addCache() throws Exception {
       companyService.show("1");
       furlService.list();
      }

    public void afterPropertiesSet() throws Exception {

       this.addCache();
    }
}
