package com.talaria.dao;

import java.util.List;

import com.talaria.model.UserAdress;

public interface UserAdressDao {
	
	List<UserAdress> findAll();
	
	UserAdress findByType(String type);
	
	UserAdress findById(int id);
	
	void save(UserAdress address);

}
