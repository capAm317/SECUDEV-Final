package com.talaria.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.talaria.model.Review;

@Repository("reviewDao")
public class ReviewDaoImpl extends AbstractDao<Integer, Review> implements ReviewDao {

	@Override
	public List<Review>  findByProduct(String nme) {
		// TODO Auto-generated method stub
		
		List<Review> arr = new ArrayList();
		
		return arr;
	}
	
	
	
	

}
