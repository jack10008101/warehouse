package cn.longkai.struts.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.longkai.struts.entity.PageBean;
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
	private PageBean<UserInfo> pageBean;//封装了分页信息和数据内容的PageBean
	private List<UserInfo> list;//用于存储pageBean当中被封存的UserInfo信息
	private int page=1;//表示从当前网页中返回的当前页的值，默认为1表示从第一页开始
	public PageBean<UserInfo> getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean<UserInfo> pageBean) {
		this.pageBean = pageBean;
	}
	public List<UserInfo> getList() {
		return list;
	}
	public void setList(List<UserInfo> list) {
		this.list = list;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
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
    public String getUserInfoList() {
		this.pageBean=userInfoService.queryForPage(10, page);
		this.list=this.pageBean.getList();
		return "list_success";
	}
}
