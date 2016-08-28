package com.talaria.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.talaria.model.Order;

@Repository("orderDao")
public class OrderDaoImpl extends AbstractDao<Integer, Order>  implements OrderDao {

	@Override
	public List<Order> getOrders() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Order findById(int id){
		Order order = getByKey(id);
		return order;
		
	}

	@Override
	public void save(Order order) {
		// TODO Auto-generated method stub
		persist(order);
	}

}
