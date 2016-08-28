package com.talaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.talaria.dao.CategoryDao;
import com.talaria.dao.ProductDao;
import com.talaria.model.Product;

@Service("ProductService")
@Transactional
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao dao;
	
	@Autowired
	private CategoryDao cdao;
	
	@Override
	public Product findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public List<Product> findByCategory(String category) {
		// TODO Auto-generated method stub
		return cdao.getProductsByCategory(category);
	}

	@Override
	public List<Product> findByName(String name) {
		// TODO Auto-generated method stub
		return dao.findByName(name);
	}

	@Override
	public List<Product> findByLike(String name) {
		// TODO Auto-generated method stub
		return dao.findByLike(name);
	}

	@Override
	public void saveProduct(Product product) {
		// TODO Auto-generated method stub
		dao.save(product);
	}

	@Override
	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public void deleteByProductId(int id) {
		// TODO Auto-generated method stub
		dao.deleteByProductId(id);
		
	}

	@Override
	public List<Product> findAllProducts() {
		// TODO Auto-generated method stub
		
		return dao.findAllProducts();
	}

}
