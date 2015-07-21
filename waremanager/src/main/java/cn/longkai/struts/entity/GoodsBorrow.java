package cn.longkai.struts.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 物品借出表，存储物品借出信息
 * 
 * @author jack 2015年7月21日
 *
 */
@Entity
@Table(name="T_GoodsBorrow")
public class GoodsBorrow {
	private Integer id;
	private Integer goodsId;
	private String goodsName;/* 物品名称，如导线等 */
	private String providerName;/* 哪个厂出产 */
	private String unit;/* 单位，物品的计量单位 */
	private String partNumber;/* 出厂编号型号，出厂单位不规范的一个标识 */
	private Double borrowNumber;/* 物品借出数量 */
	private Double goodsNeed;/* 该物品的最低库存值 */
	// private String remark;/* 相关描述信息 */
	private Date borrowDate;// 借出时间
	private Date returnDate;// 归还时间
	private Integer borrowuserId;// 借出人员Id

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

	@Column(length = 30)
	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	@Column(length = 80)
	public String getProviderName() {
		return providerName;
	}

	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}

	@Column(length = 10)
	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	@Column(length = 20)
	public String getPartNumber() {
		return partNumber;
	}

	public void setPartNumber(String partNumber) {
		this.partNumber = partNumber;
	}

	@Column
	public Double getBorrowNumber() {
		return borrowNumber;
	}

	public void setBorrowNumber(Double borrowNumber) {
		this.borrowNumber = borrowNumber;
	}

	@Column
	public Double getGoodsNeed() {
		return goodsNeed;
	}

	public void setGoodsNeed(Double goodsNeed) {
		this.goodsNeed = goodsNeed;
	}

	@Temporal(TemporalType.DATE)
	@Column
	public Date getBorrowDate() {
		return borrowDate;
	}

	public void setBorrowDate(Date borrowDate) {
		this.borrowDate = borrowDate;
	}

	@Temporal(TemporalType.DATE)
	@Column
	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}
    @Column(nullable=false)
	public Integer getBorrowuserId() {
		return borrowuserId;
	}

	public void setBorrowuserId(Integer borrowuserId) {
		this.borrowuserId = borrowuserId;
	}

}
