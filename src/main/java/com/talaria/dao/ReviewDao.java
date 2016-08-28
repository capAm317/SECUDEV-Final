package com.talaria.dao;

import java.util.List;

import com.talaria.model.Review;

public interface ReviewDao {
	
	List<Review> findByProduct(String nme);
	
	
	
}
