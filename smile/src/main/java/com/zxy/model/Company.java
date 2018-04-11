package com.zxy.model;

import java.io.Serializable;
import java.sql.Time;

/**
 * Created by Administrator on 2017/6/29.
 */
public class Company implements Serializable {
    private static final long serialVersionUID = 9174194101246733501L;

    private String id;//id
    private String name;//公司名
    private String remarks;//简介
    private String master ;//图片
    private String primaryPerson;//主要人
    private String phone; //电话
    private String address; //地址
    private String email;//邮箱 //改微信
    private String zip_code;//口号
    private String fax;////存放端介绍


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getMaster() {
        return master;
    }

    public void setMaster(String master) {
        this.master = master;
    }

    public String getPrimaryPerson() {
        return primaryPerson;
    }

    public void setPrimaryPerson(String primaryPerson) {
        this.primaryPerson = primaryPerson;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getZip_code() {
        return zip_code;
    }

    public void setZip_code(String zip_code) {
        this.zip_code = zip_code;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }
}
