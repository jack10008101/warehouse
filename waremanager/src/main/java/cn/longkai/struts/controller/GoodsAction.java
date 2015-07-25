package cn.longkai.struts.controller;

import javax.inject.Inject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.longkai.struts.entity.Goods;
import cn.longkai.struts.service.GoodsService;

import com.opensymphony.xwork2.ActionSupport;
@Controller(value="goodsAction")
@Scope("prototype")
public class GoodsAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private Goods goods;
    private GoodsService goodsService;
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public GoodsService getGoodsService() {
		return goodsService;
	}
	@Inject
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
    
}
