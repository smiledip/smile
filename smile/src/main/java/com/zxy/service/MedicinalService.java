package com.zxy.service;

import com.zxy.Dao.MedicinalDao;
import com.zxy.model.Medicinal;
import com.zxy.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;


/**
 * Created by Administrator on 2017/6/29.
 */
@Service
public class MedicinalService {

      @Autowired
        private MedicinalDao medicinalDao;

    public List<Medicinal> list(int type,String mflag){
        Medicinal med=new Medicinal();
        med.setMtype(type);
        if(mflag!=null){
            med.setMflag(mflag);
        }
        return medicinalDao.list(med);
      }


    public Page<Medicinal> getPageList(int type, Page<Medicinal> p){

        //查询总记录数
        p.setRsCount(medicinalDao.Countsize(type));
        Medicinal m=new Medicinal();
        m.setMtype(type);
        m.setStart((p.getCurrentPage()-1) * p.getPagesize());
        /*p.getCurrentPage() * */
        m.setEnd(p.getPagesize());
        //查询分页的记录
        p.setList(medicinalDao.MessList(m));

        return p;

    }
}
