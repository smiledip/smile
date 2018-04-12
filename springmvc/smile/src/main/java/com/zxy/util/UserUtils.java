/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.zxy.util;


import com.zxy.Dao.CompanyDao;
import com.zxy.Dao.FurlDao;
import com.zxy.model.Company;

import com.zxy.model.Furl;


import java.util.List;

/**
 * 用户工具类
 * @author ThinkGem
 * @version 2013-12-05
 */
public class UserUtils {

	private static CompanyDao companyDao = SpringContextHolder.getBean(CompanyDao.class);
	private static FurlDao furlDao = SpringContextHolder.getBean(FurlDao.class);

	/**
	 * 获取当前用户
	 * @return 取不到返回 new User()
	 */
	public static Company getCompany(){
		Company company=companyDao.show("1");

		if (company!=null){

				return company;
			}
			return new Company();
		}
	/**
	 * 获取url
	 * @return 取不到返回 new User()
	 */
	public static List<Furl>  getFurl(){
		List<Furl> fuls=furlDao.list();

		return fuls;

	}


}
