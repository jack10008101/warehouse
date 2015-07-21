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
 * 
 * @author jack 2015年7月21日
 *
 */
@Entity
@Table(name = "T_OutputOrder")
public class OutputOrder implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
    private Integer goodsId;/*物品编号*/
	private String goodsName;/* 物品名称，如导线等 */
	private Double outputNumber;/*出库数量*/
	private String partNumber;/* 出厂编号型号，出厂单位不规范的一个标识 */
	private String type;//物品的类型，如备件、耗材、工具等
	private String address;//存储地址
    private String providerName;//供应商信息
    private Integer outputUserId;//出库人员Id
    private Date outputDate;//出库时间
    private String remark;
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
	@Column
	public Double getOutputNumber() {
		return outputNumber;
	}
	public void setOutputNumber(Double outputNumber) {
		this.outputNumber = outputNumber;
	}
	@Column(length=20)
	public String getPartNumber() {
		return partNumber;
	}
	public void setPartNumber(String partNumber) {
		this.partNumber = partNumber;
	}
	@Column(length=10)
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Column(length=80)
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(length=80)
	public String getProviderName() {
		return providerName;
	}
	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}
	@Column
	public Integer getOutputUserId() {
		return outputUserId;
	}
	public void setOutputUserId(Integer outputUserId) {
		this.outputUserId = outputUserId;
	}
	@Temporal(TemporalType.DATE)
	@Column
	public Date getOutputDate() {
		return outputDate;
	}
	public void setOutputDate(Date outputDate) {
		this.outputDate = outputDate;
	}
	@Column(length=80)
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
    
}
