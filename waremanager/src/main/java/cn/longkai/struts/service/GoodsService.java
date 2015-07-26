/**
 * 
 */
package cn.longkai.struts.service;

import cn.longkai.struts.entity.Goods;

/**
 * @author jack
 *  2015年7月25日
 *
 */
public interface GoodsService {
    /**
     * 保存新的商品
     * @param goods
     */
	void saveGoods(Goods goods);

}
