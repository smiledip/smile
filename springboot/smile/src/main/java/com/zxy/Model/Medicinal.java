package com.zxy.Model;

import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;

import javax.persistence.Id;

/**
 * 药材的信息
 * ES
 */

@Document(indexName = "xinhua",type = "medicinal", shards = 1,replicas = 0, refreshInterval = "-1")
public class Medicinal {

    @Id
    private String id;
    @Field
    private String name;
    @Field
    private double price;
    @Field
    private String shotintro;
    @Field
    private String url;
    @Field
    private String longintro;
    @Field
    private Integer delflag;
    @Field
    private Integer mtype;

    @Field
    private Integer mflag;  //1:jinjichushou

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getShotintro() {
        return shotintro;
    }

    public void setShotintro(String shotintro) {
        this.shotintro = shotintro;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getLongintro() {
        return longintro;
    }

    public void setLongintro(String longintro) {
        this.longintro = longintro;
    }

    public Integer getDelflag() {
        return delflag;
    }

    public void setDelflag(Integer delflag) {
        this.delflag = delflag;
    }

    public Integer getMtype() {
        return mtype;
    }

    public void setMtype(Integer mtype) {
        this.mtype = mtype;
    }

    public Integer getMflag() {
        return mflag;
    }

    public void setMflag(Integer mflag) {
        this.mflag = mflag;
    }

    public Medicinal(String name, Double price, String shotintro, String url) {
        this.name = name;
        this.price = price;
        this.shotintro = shotintro;
        this.url = url;
    }
}
