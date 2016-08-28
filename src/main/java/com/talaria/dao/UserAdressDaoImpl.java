package com.talaria.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.talaria.model.UserAdress;

@Repository("userAdressDao")
public class UserAdressDaoImpl extends AbstractDao<Integer, UserAdress>implements UserAdressDao{

	public UserAdress findById(int id) {
		return getByKey(id);
	}

	public UserAdress findByType(String type) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("type", type));
		return (UserAdress) crit.uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	public List<UserAdress> findAll(){
		Criteria crit = createEntityCriteria();
		crit.addOrder(Order.asc("type"));
		return (List<UserAdress>)crit.list();
	}
	
	public void save(UserAdress userAddress){
		persist(userAddress);
	}
	
}
