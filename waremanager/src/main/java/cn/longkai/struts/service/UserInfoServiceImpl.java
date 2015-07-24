package cn.longkai.struts.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.longkai.struts.entity.UserInfo;
import cn.longkai.struts.repository.UserInfoDao;
@Service(value="userInfoService")
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

}
