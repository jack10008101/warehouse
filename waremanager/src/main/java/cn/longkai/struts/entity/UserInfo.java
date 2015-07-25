package cn.longkai.struts.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 用户表
 * @author jack
 *  2015年7月20日
 *
 */
@Entity
@Table(name="T_UserInfo")
public class UserInfo implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer id;//主键，用户的唯一标识
	private String userName;//用户名
	private String password;//登录密码
	private String workId;//工号
	private boolean manager;//是否管理员
	private String department;//所属部门
	private String name;//真实姓名
	private String phone;//联系方式
	private boolean status;//是否离职,true表示在职
	public UserInfo() {
		// TODO Auto-generated constructor stub
	}
	public UserInfo(String userName) {
		super();
		this.userName = userName;
	}
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(length=20)
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Column(length=30)
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Column(length=20)
	public String getWorkId() {
		return workId;
	}
	public void setWorkId(String workId) {
		this.workId = workId;
	}
    @Column(nullable=false)
	public boolean isManager() {
		return manager;
	}
	public void setManager(boolean manager) {
		this.manager = manager;
	}
	@Column(length=40)
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	@Column(length=20,nullable=false)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(length=15,nullable=false)
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Column(nullable=false)
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
    
	
	
}
