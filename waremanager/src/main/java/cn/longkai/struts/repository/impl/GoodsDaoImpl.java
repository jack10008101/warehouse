package cn.longkai.struts.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import cn.longkai.struts.repository.GoodsDao;

/**
 * 
 * @author jack 2015年7月25日
 *
 */
@Repository(value="goodsDao")
public class GoodsDaoImpl implements GoodsDao {
	private EntityManager entityManager;

	@PersistenceContext
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public EntityManager getEntityManager() {
		return entityManager;
	}
}
