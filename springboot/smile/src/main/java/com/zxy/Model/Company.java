package com.zxy.Model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.annotation.sql.DataSourceDefinition;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * 公司部门的信息
 * mysql
 */
@Entity
public class Company  {
    @Id
    @GeneratedValue
    private Integer id;//id
    private String name;//公司名
    private String remarks;//简介
    private String master ;//图片
    private String primaryPerson;//主要人
    private String phone; //电话
    private String address; //地址
    private String email;//邮箱 //改微信
    private String zip_code;//口号
    private String fax;////存放端介绍


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

    public Company() {

    }

    public Company(String name, String remarks, String master, String primaryPerson, String phone, String address, String email, String zip_code, String fax) {
        this.name = name;
        this.remarks = remarks;
        this.master = master;
        this.primaryPerson = primaryPerson;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.zip_code = zip_code;
        this.fax = fax;
    }
}
