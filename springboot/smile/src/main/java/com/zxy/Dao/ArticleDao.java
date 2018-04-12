package com.zxy.Dao;

import com.zxy.Model.Article;
import org.springframework.stereotype.Component;

@Component("ArticleDao")
public interface ArticleDao  {
    public Article getid(String id);


}
