package com.talaria.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.talaria.model.Product;

@Repository("productDao")
public class ProductDaoImpl extends AbstractDao<Integer, Product> implements ProductDao{
	
	static final Logger logger = LoggerFactory.getLogger(ProductDaoImpl.class);
	
	@Override
	public Product findById(int id) {
		// TODO Auto-generated method stub
		Product product = getByKey(id);
		if(product != null){
			Hibernate.initialize(product.getInventories());
		}
		
		return product;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> findByName(String name) {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("prdNme"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		criteria.add(Restrictions.eq("prdNme", name));
		List<Product> products = (List<Product>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return products;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> findByLike(String name) {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("prdNme"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		criteria.add(Restrictions.like("prdNme", "%" + name+ "%"));
		
		List<Product> products = (List<Product>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return products;
	}

	@Override
	public void save(Product product) {
		// TODO Auto-generated method stub
		persist(product);
		
	}

	@Override
	public void deleteByProductId(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("idproducts", id));
		Product product = (Product)crit.uniqueResult();
		delete(product);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> findAllProducts() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("prdNme"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Product> products = (List<Product>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return products;
	}

}
