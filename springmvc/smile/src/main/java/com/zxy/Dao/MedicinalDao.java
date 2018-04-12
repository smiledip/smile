package com.zxy.Dao;


import com.zxy.model.Medicinal;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/7/1.
 */
@Repository
public interface MedicinalDao {
      List<Medicinal> list(Medicinal medicinal);
       //查询总记录数
      int Countsize(int type);
      //查询翻页的数据
      List<Medicinal> MessList(Medicinal medicinal);
}
