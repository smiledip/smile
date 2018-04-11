package com.zxy.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/7/1.
 */
public class Medicinal implements Serializable {
    private static final long serialVersionUID = 9174194101246733501L;

    private String  id;
    private String name;
    private String price;
    private String shotintro;
    private String url;
    private String longintro;
    private String delflag;
    private int mtype;
    private  int start;
    private int end;
    private String mflag;  //1:jinjichushou

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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
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

    public String getDelflag() {
        return delflag;
    }

    public void setDelflag(String delflag) {
        this.delflag = delflag;
    }

    public int getMtype() {
        return mtype;
    }

    public void setMtype(int mtype) {
        this.mtype = mtype;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public String getMflag() {
        return mflag;
    }

    public void setMflag(String mflag) {
        this.mflag = mflag;
    }
}
