package cn.longkai.struts.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import cn.longkai.struts.entity.UserInfo;
import cn.longkai.struts.repository.UserInfoDao;

@Repository(value = "userInfoDao")
public class UserInfoDaoImpl implements UserInfoDao {
	private EntityManager entityManager;

	@PersistenceContext
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public void save(UserInfo userInfo) {
		// TODO Auto-generated method stub
		this.entityManager.persist(userInfo);
	}

	@SuppressWarnings("unchecked")
	public List<UserInfo> getUserInfos(int offset, int length) {
		// TODO Auto-generated method stub
		String hqlString = "from UserInfo u where u.status=true";
		Query query = this.entityManager.createQuery(hqlString);
		query.setFirstResult(offset);
		query.setMaxResults(length);
		List<UserInfo> list = query.getResultList();
		return list;
	}

	/**
	 * 查询所有的记录数
	 * 
	 * @return 总记录数
	 */
	public int getALlRowCount() {
		// TODO Auto-generated method stub
		String hqlString = "from UserInfo u where u.status=true";
		Query query = this.entityManager.createQuery(hqlString);
		return query.getResultList().size();
	}

	public boolean isExistsByUserName(String userName) {
		// TODO Auto-generated method stub
		String hql = "select u.userName from UserInfo u where u.userName=?";
		boolean flag = false;
		Query query = this.entityManager.createQuery(hql);
		query.setParameter(1, userName);
		List<UserInfo> list = query.getResultList();
		if (list.size() == 0 || list == null) {
			flag = false;
		} else {
			flag = true;
		}
		return flag;
	}

	public void deleteUserInfoById(Integer id) {
		// TODO Auto-generated method stub
		Query query = this.entityManager
				.createQuery("update UserInfo u set u.status=false where u.id=:uid");
		query.setParameter("uid", id);
		query.executeUpdate();
	}

}
