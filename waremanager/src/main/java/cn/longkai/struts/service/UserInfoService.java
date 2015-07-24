package cn.longkai.struts.service;

import cn.longkai.struts.entity.PageBean;
import cn.longkai.struts.entity.UserInfo;

public interface UserInfoService {

	void saveUserInfo(UserInfo userInfo);
	/**
	 * 分页查询
	 * @param pageSize 每一页显示多少记录数
	 * @param page 当前页
	 * @return 封装了分页信息的PageBean
	 */
    PageBean<UserInfo> queryForPage(int pageSize,int page);
}
