package com.zxy.Dao;

import com.zxy.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User,Integer> {
    public User findByUsername( String username );
}
