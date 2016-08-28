package com.talaria.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.talaria.model.Category;
import com.talaria.model.Product;

@Repository("categoryDao")
public class CategoryDaoImpl extends AbstractDao<Integer, Category> implements CategoryDao{

	@Override
	public List<Product> getProductsByCategory(String category) {
		List<Product> rett = null;
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("ctrgyNme", category));
		Category categoryProd = (Category) criteria.uniqueResult();
		if(category != null){
			Hibernate.initialize(categoryProd.getProducts());
			Iterator<Product> ir = categoryProd.getProducts().iterator();
			ArrayList<Product> alist = new ArrayList<Product>();
			
			while(ir.hasNext()){
				alist.add(ir.next());
			}
			
			rett = alist;
		}
		
		return rett;
	}

	@Override
	public Category findById(int id) {
		Category category = getByKey(id);
		return category;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> findAllCategories() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("ctrgyNme"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Category> category = (List<Category>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return category;
	}

}
