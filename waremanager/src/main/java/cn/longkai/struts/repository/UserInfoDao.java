package cn.longkai.struts.repository;

import java.util.List;

import cn.longkai.struts.entity.UserInfo;

public interface UserInfoDao {

	void save(UserInfo userInfo);
	/**
	 * 分页查询
	 * @param offset 开始记录
	 * @param length 一次查询几条记录
	 * @return
	 */
    List<UserInfo> getUserInfos(int offset,int length);//查询用户信息
    /**
     * 查询所有的记录数
     * @return 总记录数
     */
    int getALlRowCount();
	boolean isExistsByUserName(String userName);
	void deleteUserInfoById(Integer id);
}
