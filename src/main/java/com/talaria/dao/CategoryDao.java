package com.talaria.dao;

import java.util.List;

import com.talaria.model.Product;
import com.talaria.model.Category;

public interface CategoryDao {
	
	List<Product> getProductsByCategory(String category);
	
	Category findById(int id);

	List<Category> findAllCategories();


}
