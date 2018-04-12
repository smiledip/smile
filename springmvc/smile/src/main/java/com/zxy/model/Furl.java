package com.zxy.model;

import java.io.Serializable;
import java.util.List;

/**
 * @Author: Smile [smile_dip@163.com]
 * @Description:
 * @Date; 2017/9/7 10:24
 */

public class Furl  implements Serializable {
    private static final long serialVersionUID = 9174194101246733501L;
    private String  id;
    private String name;
    private String url;
    private String delflag;
  /*  private List<Furl> lisurl;*/

/*    public List<Furl> getLisurl() {
        return lisurl;
    }

    public void setLisurl(List<Furl> lisurl) {
        this.lisurl = lisurl;
    }*/

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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDelflag() {
        return delflag;
    }




}
