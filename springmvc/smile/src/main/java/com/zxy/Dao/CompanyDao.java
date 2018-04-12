package com.zxy.Dao;


import com.zxy.model.Company;
import org.springframework.stereotype.Repository;


/**
 * Created by Administrator on 2017/7/1.
 */
@Repository
public interface CompanyDao {
       Company show(String id);
}
