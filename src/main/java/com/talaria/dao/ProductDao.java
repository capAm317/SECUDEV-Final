package com.talaria.dao;

import java.util.List;

import com.talaria.model.Product;

public interface ProductDao {
	
	Product findById(int id);
	
	List<Product> findByName(String name);
	
	List<Product> findByLike(String name);
	
	void save(Product product);
	
	void deleteByProductId(int id);
	
	List<Product> findAllProducts();

}
