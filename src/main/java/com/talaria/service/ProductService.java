package com.talaria.service;

import java.util.List;

import com.talaria.model.Product;

public interface ProductService {

	Product findById(int id);
	
	List<Product> findByCategory(String category);
	
	List<Product> findByName(String name);
	
	List<Product> findByLike(String name);
	
	void saveProduct(Product product);
	
	void updateProduct(Product product);
	
	void deleteByProductId(int id);
	
	List<Product> findAllProducts();
	
}
