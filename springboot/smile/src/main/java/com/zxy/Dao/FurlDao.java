package com.zxy.Dao;

import com.zxy.Model.Furl;
import com.zxy.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FurlDao extends JpaRepository<Furl,Integer> {

}
