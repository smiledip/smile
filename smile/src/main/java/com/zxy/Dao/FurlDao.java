package com.zxy.Dao;

import com.zxy.model.Furl;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/7/1.
 */
@Repository
public interface FurlDao {
      List<Furl> list();
}
