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
 * 入库单（InputBill）表。入库单用户系统管理员用户申请入库时，存储相应的入库信息，期存储信息有入库的货品名称和数量等信息
 * @author jack
 *  2015年7月21日
 *
 */
@Entity
@Table(name="T_InputOrder")
public class InputOrder implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private Integer id;
    private Integer goodsId;/*物品编号*/
	private String goodsName;/* 物品名称，如导线等 */
	private String unit;/* 单位，物品的计量单位 */
	private String partNumber;/* 出厂编号型号，出厂单位不规范的一个标识 */
	private Double innumber;
	private String type;//物品的类型，如备件、耗材、工具等
	private Double price;/*单价*/
	private String address;//存储地址
    private String providerName;//供应商信息
    private Integer inputUserId;//入库人员Id
    private Date inputDate;//入库时间
    private String remark;
    private String orderUrl;
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
	@Column(length=30)
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
	@Column(length=20)
	public String getPartNumber() {
		return partNumber;
	}
	public void setPartNumber(String partNumber) {
		this.partNumber = partNumber;
	}
	@Column
	public Double getInnumber() {
		return innumber;
	}
	public void setInnumber(Double innumber) {
		this.innumber = innumber;
	}
	@Column(length=10)
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Column
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	@Column(length=60)
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(length=60)
	public String getProviderName() {
		return providerName;
	}
	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}
	@Column
	public Integer getInputUserId() {
		return inputUserId;
	}
	public void setInputUserId(Integer inputUserId) {
		this.inputUserId = inputUserId;
	}
	@Temporal(TemporalType.DATE)
	@Column(nullable=false)
	public Date getInputDate() {
		return inputDate;
	}
	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}
	@Column
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Column(length=30)
	public String getOrderUrl() {
		return orderUrl;
	}
	public void setOrderUrl(String orderUrl) {
		this.orderUrl = orderUrl;
	}
    
}
