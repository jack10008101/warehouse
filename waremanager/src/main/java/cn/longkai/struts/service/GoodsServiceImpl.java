package cn.longkai.struts.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.longkai.struts.entity.Goods;
import cn.longkai.struts.repository.GoodsDao;

/**
 * 关于物品的服务接口实现类
 * 
 * @author jack 2015年7月25日
 *
 */
@Service(value = "goodsService")
@Transactional
public class GoodsServiceImpl implements GoodsService {
	private GoodsDao goodsDao;

	public GoodsDao getGoodsDao() {
		return goodsDao;
	}
    @Inject
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	public void saveGoods(Goods goods) {
		// TODO Auto-generated method stub
		this.goodsDao.persistGoods(goods);
	}
    
}
