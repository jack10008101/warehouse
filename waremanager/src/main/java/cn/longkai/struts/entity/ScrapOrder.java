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
 * 报废单主要存储报废日期、名称、厂家、编号型号、报废数量，数量上报人员、领导审批签字
 * 
 * @author jack 2015年7月21日
 *
 */
@Entity
@Table(name = "T_ScrapOrder")
public class ScrapOrder implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer goodsId;/* 物品编号 */
	private String goodsName;/* 物品名称，如导线等 */
	private String unit;/* 单位，物品的计量单位 */
	private Double scrapNumber;/* 报废数量 */
	private String partNumber;/* 出厂编号型号，出厂单位不规范的一个标识 */
	private String providerName;// 供应商信息
	private Integer reportUserId;//上报人员Id
	private Date scrapDate;//报废时间
	private String scrapReason;
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
	public Double getScrapNumber() {
		return scrapNumber;
	}
	public void setScrapNumber(Double scrapNumber) {
		this.scrapNumber = scrapNumber;
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
	public Date getScrapDate() {
		return scrapDate;
	}
	public void setScrapDate(Date scrapDate) {
		this.scrapDate = scrapDate;
	}
	@Column(length=120)
	public String getScrapReason() {
		return scrapReason;
	}
	public void setScrapReason(String scrapReason) {
		this.scrapReason = scrapReason;
	}
	
}
