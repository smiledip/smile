package com.zxy.util;

import java.util.List;

public class Page<T> {



    private  int pagesize=12;//每页显示记录条数
    private  int pageCounts=0;//总共页码数目
    private  int currentPage=1;//当前页码数
    private  int rsCount=0;//总共记录条数



    private List<T> list;
    private String backMsg; //无记录提示语


    public String getBackMsg() {
        return backMsg;
    }

    public void setBackMsg(String backMsg) {
        this.backMsg = backMsg;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getPageCounts() {
        return  pageCounts ;
    }

    public void setPageCounts(int pageCounts) {
        this.pageCounts=pageCounts;


    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getRsCount() {
        return rsCount;
    }
    public void setRsCount(int rsCount) {
        this.rsCount = rsCount;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
        setPageCounts(rsCount/pagesize+(rsCount%pagesize==0?0:1));
    }




}
