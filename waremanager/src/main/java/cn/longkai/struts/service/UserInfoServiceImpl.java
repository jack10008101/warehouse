package cn.longkai.struts.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.longkai.struts.entity.PageBean;
import cn.longkai.struts.entity.UserInfo;
import cn.longkai.struts.repository.UserInfoDao;

@Service(value = "userInfoService")
@Transactional
public class UserInfoServiceImpl implements UserInfoService {
	private UserInfoDao userInfoDao;

	public UserInfoDao getUserInfoDao() {
		return userInfoDao;
	}

	@Inject
	public void setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
	}

	public void saveUserInfo(UserInfo userInfo) {
		// TODO Auto-generated method stub
		this.userInfoDao.save(userInfo);
	}

	/**
	 * 分页查询
	 * 
	 * @param pageSize
	 *            每一页显示多少记录数
	 * @param page
	 *            当前页
	 * @return 封装了分页信息的PageBean
	 */
	public PageBean<UserInfo> queryForPage(int pageSize, int page) {
		// TODO Auto-generated method stub
		int allRow = this.userInfoDao.getALlRowCount();// 总记录数
		int totalPage = PageBean.countTotalPage(pageSize, allRow);// 总页数
		final int offset = PageBean.countOffset(pageSize, page);// 当前页开始记录
		final int length = pageSize;// 每一页的记录数
		final int currentPage = PageBean.countCurrentPage(page);// 当前页
		List<UserInfo> list = this.userInfoDao.getUserInfos(offset, length);
        //把分页的信息存储到PageBean中
		PageBean<UserInfo> pageBean=new PageBean<UserInfo>();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}

	public boolean existsUserInfoByUserName(String userName) {
		// TODO Auto-generated method stub
		return this.userInfoDao.isExistsByUserName(userName);
	}

}
