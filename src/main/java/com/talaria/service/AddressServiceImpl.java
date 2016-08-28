package com.talaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.talaria.dao.UserAdressDao;
import com.talaria.model.UserAdress;

@Service("addressService")
@Transactional
public class AddressServiceImpl implements AddressService{

	
	@Autowired
	private UserAdressDao dao;
	
	@Override
	public UserAdress findById(int id) {
		return dao.findById(id);
	}

	@Override
	public void saveUserAddress(UserAdress userAdress) {
		dao.save(userAdress);
		
	}

	@Override
	public List<UserAdress> findAll() {

		return dao.findAll();
	}

}

