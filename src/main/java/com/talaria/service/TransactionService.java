package com.talaria.service;

import com.talaria.model.Order;

public interface TransactionService {
	
	void saveTransaction(Order order);
	
	void updateTransaction(Order order);
	
}
