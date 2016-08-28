package com.talaria.dao;

import java.util.List;

import com.talaria.model.Order;

public interface OrderDao {
	
	List<Order> getOrders();
	
	void save(Order order);

	Order findById(int id);

}
