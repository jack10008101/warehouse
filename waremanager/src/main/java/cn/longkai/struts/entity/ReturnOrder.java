package cn.longkai.struts.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 返厂单存储日期、名称、厂家、编号型号、数量、返厂厂家、联系人员
 * @author jack
 *  2015年7月21日
 *
 */
@Entity
@Table(name="T_ReturnOrder")
public class ReturnOrder implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer goodsId;/* 物品编号 */
	private String goodsName;/* 物品名称，如导线等 */
	private String unit;/* 单位，物品的计量单位 */
	private Double returnNumber;/* 返厂数量 */
	private String partNumber;/* 出厂编号型号，出厂单位不规范的一个标识 */
	private String providerName;// 供应商信息
	private Integer reportUserId;//上报人员Id
	private Date returnDate;//时间
	private String returnReason;
	private String contactName;
	private String contactPhone;
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column
	public Integer getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}
	@Column(length=20)
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	@Column(length=10)
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	@Column
	public Double getReturnNumber() {
		return returnNumber;
	}
	public void setReturnNumber(Double returnNumber) {
		this.returnNumber = returnNumber;
	}
	@Column(length=20)
	public String getPartNumber() {
		return partNumber;
	}
	public void setPartNumber(String partNumber) {
		this.partNumber = partNumber;
	}
	@Column(length=60)
	public String getProviderName() {
		return providerName;
	}
	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}
	@Column
	public Integer getReportUserId() {
		return reportUserId;
	}
	public void setReportUserId(Integer reportUserId) {
		this.reportUserId = reportUserId;
	}
	@Temporal(TemporalType.DATE)
	@Column
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}
	@Column(length=100)
	public String getReturnReason() {
		return returnReason;
	}
	public void setReturnReason(String returnReason) {
		this.returnReason = returnReason;
	}
	@Column(length=16)
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	@Column(length=15)
	public String getContactPhone() {
		return contactPhone;
	}
	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	
}
