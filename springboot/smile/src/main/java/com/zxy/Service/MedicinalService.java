package com.zxy.Service;

import com.zxy.Dao.MedicinalDao;
import com.zxy.Model.Medicinal;
import com.zxy.Util.Page;
import jdk.nashorn.internal.runtime.JSONFunctions;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.action.search.SearchRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.RangeQueryBuilder;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHitField;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.w3c.dom.Entity;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Component("MedicinalDao")
public class MedicinalService implements MedicinalDao {
    @Autowired
    private TransportClient client;

    /**
     * 根据类型状态查询
     *
     * @param mtype
     * @param mflag
     * @return
     */
    @Override
    public List<Medicinal> findByMtypeAndMflag(int mtype, String mflag) {
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
        boolQueryBuilder.must(QueryBuilders.matchQuery("mtype", mtype));
        if (mflag != null) {
            boolQueryBuilder.must(QueryBuilders.matchQuery("mflag", mflag));
        }
        SearchRequestBuilder builder = client.prepareSearch("xinhua").setTypes("medicinal").setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
                .setQuery(boolQueryBuilder).setFrom(0).setSize(10);
        SearchResponse response = builder.get();
        List<Medicinal> lis = new ArrayList<Medicinal>();
        SearchHits hits = response.getHits();
        SearchHit[] searchHists = hits.getHits();

        for (SearchHit hit : searchHists) {
            //  String a=   hit.getSourceAsString();
            String name = (String) hit.getSource().get("name");
            double price = Double.parseDouble(hit.getSource().get("price").toString());   //有问题
            String shotintro = (String) hit.getSource().get("shotintro");
            String url = (String) hit.getSource().get("url");
            lis.add(new Medicinal(name, price, shotintro, url));

        }

        return lis;
    }

    /**
     * 根据id查询,注意强制类型的转换source就是对象的类
     *
     * @param id 错误的方法，不改了
     * @return
     */
    @Override
    public Medicinal getid(String id) {
        GetResponse response = client.prepareGet("xinhua", "medicinal", id).get();
        return (Medicinal) response.getSource();
    }

    /**
     * @param mtype 类型
     * @return
     */
    @Override
    public Page<Medicinal> findBypage(int mtype, Page page) {
        Page<Medicinal> pages = new Page<Medicinal>(mtype);
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
        boolQueryBuilder.must(QueryBuilders.matchQuery("mtype", mtype));
        SearchResponse response = client.prepareSearch("xinhua")
                .setTypes("medicinal")
                .setSearchType(SearchType.DFS_QUERY_THEN_FETCH)
                .setQuery(boolQueryBuilder)
                // .setPostFilter(QueryBuilders.rangeQuery("age").from(12).to(18))     // Filter 过滤字段的范围
                .setFrom((page.getCurrentPage()-1) * page.getPagesize()).setSize(page.getPagesize()).get();
        List<Medicinal> lis = new ArrayList<Medicinal>();
        SearchHit[] searchHists = response.getHits().getHits();
        for (SearchHit hit : searchHists) {
            String name = (String) hit.getSource().get("name");
            double price = Double.parseDouble(hit.getSource().get("price").toString());   //有问题
            String shotintro = (String) hit.getSource().get("shotintro");
            String url = (String) hit.getSource().get("url");
            lis.add(new Medicinal(name, price, shotintro, url));
        }
        pages.setParts(lis);
        Long count = response.getHits().getTotalHits();
        pages.setRsCount(count.intValue());//第一次不返回数据);
        return pages;
    }
}
