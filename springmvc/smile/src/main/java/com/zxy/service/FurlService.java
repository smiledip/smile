package com.zxy.service;

import com.zxy.Dao.FurlDao;
import com.zxy.model.Furl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


/**
 * Created by Administrator on 2017/6/29.
 */
@Service
public class FurlService {

    @Autowired
        private FurlDao furlDao;

   @Cacheable(value="sysCache",key="furl")
    public List<Furl> list(){
        return furlDao.list();
      }

}
