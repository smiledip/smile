package com.zxy.service;

import com.zxy.Dao.CompanyDao;
import com.zxy.model.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
public class CompanyService {

    @Autowired
    private CompanyDao companyDao;

    @Cacheable(value="sysCache", key="company")
    public Company show(String id){
        return companyDao.show(id);
    }




}
