package com.zxy.Dao;

import com.zxy.Model.Medicinal;
import com.zxy.Util.Page;
import org.springframework.stereotype.Component;
import java.util.List;

public interface MedicinalDao {
    public List<Medicinal> findByMtypeAndMflag(int mtype ,String mflag );
    public Medicinal getid(String id);
    public Page<Medicinal> findBypage(int mtype ,Page page);

}
