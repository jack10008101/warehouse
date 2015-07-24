package cn.longkai.struts.controller;

import javax.inject.Inject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.longkai.struts.entity.UserInfo;
import cn.longkai.struts.service.UserInfoService;

import com.opensymphony.xwork2.ActionSupport;

@Controller(value="userInfoAction")
@Scope("prototype")
public class UserInfoAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserInfo userInfo;
	private UserInfoService userInfoService;
	
	public UserInfoService getUserInfoService() {
		return userInfoService;
	}
	@Inject
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public String add() {
		this.getUserInfo().setStatus(true);
		this.getUserInfoService().saveUserInfo(userInfo);
		return "addSuccess";
	}

}
