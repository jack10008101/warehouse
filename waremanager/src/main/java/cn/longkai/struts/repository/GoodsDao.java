package cn.longkai.struts.repository;

import cn.longkai.struts.entity.Goods;

/**
 * 关于物品类的数据库操作
 * @author jack
 *  2015年7月25日
 *
 */
public interface GoodsDao {

	void persistGoods(Goods goods);

}
