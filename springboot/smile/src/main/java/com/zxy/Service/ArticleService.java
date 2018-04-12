package com.zxy.Service;

import com.zxy.Dao.ArticleDao;
import com.zxy.Model.Article;
import org.elasticsearch.action.get.GetResponse;

import org.elasticsearch.client.transport.TransportClient;
import org.springframework.beans.factory.annotation.Autowired;


public class ArticleService implements ArticleDao {

    @Autowired
    private TransportClient client;

    @Override
    public Article getid(String id) {
        GetResponse response = client.prepareGet("xinhua", "article", id).get();
        return (Article) response.getSource();
    }
}
