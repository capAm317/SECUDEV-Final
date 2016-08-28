package com.talaria.model;

import java.io.Serializable;

public enum AddressType implements Serializable{

	BILLING("bill"),
	SHPPING("ship");
	
	private String address;
	
	private AddressType(String addressType){
		this.address = addressType;
	}
	
	public String getAddressType(){
		return address;
	}
	
	
}
