package com.zxy.Model;

import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;

import javax.persistence.Id;

/**
 * 文章的管理
 * ES
 */
@Document(indexName = "xinhua",type = "Article", shards = 1,replicas = 0, refreshInterval = "-1")
public class Article {
    @Id
    private String id;
    @Field
    private String  title;    //标题
    @Field
    private String  author;   //作者
    @Field
    private  String createtime;//时间
    @Field
    private String  content; //内容

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
