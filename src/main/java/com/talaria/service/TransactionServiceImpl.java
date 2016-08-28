package com.talaria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.talaria.dao.OrderDao;
import com.talaria.model.Order;

@Service("transactionService")
@Transactional
public class TransactionServiceImpl implements TransactionService {
	
	@Autowired
	private OrderDao dao;
	
	@Override
	public void saveTransaction(Order order) {
		// TODO Auto-generated method stub
		dao.save(order);
	}
	
	public void updateTransaction(Order order){
		Order entity = dao.findById(order.getIdorders());
		if(entity!=null){
			entity.setStatus("ordered");
			
		}
	}

}
