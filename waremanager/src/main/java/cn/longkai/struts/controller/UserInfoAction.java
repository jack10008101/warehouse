package cn.longkai.struts.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.longkai.struts.entity.UserInfo;

import com.opensymphony.xwork2.ActionSupport;

@Controller(value="userInfoAction")
@Scope("prototype")
public class UserInfoAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserInfo userInfo;
	//private UserInfoService userInfoService;
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public String add() {
		return "addSuccess";
	}

}
