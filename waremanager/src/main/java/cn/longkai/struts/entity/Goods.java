package cn.longkai.struts.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 物品类，用户描述仓库系统中的存储物品
 * 
 * @author jack 2015年7月21日
 *
 */
@Entity
@Table(name="T_Goods")
public class Goods implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;//物品主键，物品的唯一标识
    private String type;//物品的类型，如备件、耗材、工具等
    private String firstType;/*一级分类，如一级备件等*/
    private String secondType;/*二级分类，如 220kV：.线路*/
    private String goodsName;/*物品名称，如导线等*/
    private Double price;/*单价*/
    private String unit;/*单位，物品的计量单位*/
    private String partNumber;/*出厂编号型号，出厂单位不规范的一个标识*/
    private Double needs;/*设置库存最低值*/
    private String remark;/*相关描述信息*/
    private Double storeNumber;/*物品的存库值*/
    private String address;//存储地址
    private String providerName;//供应商信息
    private boolean strored;//是否入库
    @Id
    @GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(length=10)
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Column(length=30)
	public String getFirstType() {
		return firstType;
	}
	public void setFirstType(String firstType) {
		this.firstType = firstType;
	}
	@Column(length=30)
	public String getSecondType() {
		return secondType;
	}
	public void setSecondType(String secondType) {
		this.secondType = secondType;
	}
	@Column(length=30)
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	@Column
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
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
	@Column(nullable=false)
	public Double getNeeds() {
		return needs;
	}
	public void setNeeds(Double needs) {
		this.needs = needs;
	}
	@Column
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Column
	public Double getStoreNumber() {
		return storeNumber;
	}
	public void setStoreNumber(Double storeNumber) {
		this.storeNumber = storeNumber;
	}
	@Column(length=50)
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Column(length=50)
	public String getProviderName() {
		return providerName;
	}
	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}
	@Column
	public boolean isStrored() {
		return strored;
	}
	public void setStrored(boolean strored) {
		this.strored = strored;
	}
}
