package com.zxy.Dao;

import com.zxy.Model.Company;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyDao extends JpaRepository<Company,Integer> {

}
