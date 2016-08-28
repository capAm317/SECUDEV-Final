package com.talaria.service;

import java.util.List;

import com.talaria.model.UserAdress;

public interface AddressService {
	
	UserAdress findById(int id);
	void saveUserAddress(UserAdress userAdress);
	List<UserAdress> findAll();

}
