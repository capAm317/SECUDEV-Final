package com.talaria.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ADRSSES")
public class UserAdress extends GeneralObject implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="IDADRSSES")
	private Integer id;	
	
	@Column(name="PSTL_CODE")
	private Integer pstl_code;
	
	@Column(name="TYPE", length=15, unique=true, nullable=false)
	private String adrtyp = AddressType.BILLING.getAddressType();
	
	@Column(name="HNUM")
	private String hnum;
	
	@Column(name="STRT", length=45, nullable=false)
	private String strt;
	
	@Column(name="SBDV", length=45, nullable=false)
	private String sbdv;
	
	@Column(name="CITY", length=45)
	private String city;
	
	@Column(name="CNTRY", length=45)
	private String cntry;
	
	//bi-directional many-to-many association to AppUser
	@ManyToMany(mappedBy="userAddresses")
	private Set<User> users;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPstl_code() {
		return pstl_code;
	}

	public void setPstl_code(Integer pstl_code) {
		this.pstl_code = pstl_code;
	}

	public String getAdrtyp() {
		return adrtyp;
	}

	public void setAdrtyp(String adrtyp) {
		this.adrtyp = adrtyp;
	}

	public String getHnum() {
		return hnum;
	}

	public void setHnum(String hnum) {
		this.hnum = hnum;
	}

	public String getStrt() {
		return strt;
	}

	public void setStrt(String strt) {
		this.strt = strt;
	}

	public String getSbdv() {
		return sbdv;
	}

	public void setSbdv(String sbdv) {
		this.sbdv = sbdv;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCntry() {
		return cntry;
	}

	public void setCntry(String cntry) {
		this.cntry = cntry;
	}
	
	public Set<User> getUsers() {
		return this.users;
	}

	public void setUsers(Set<User> appUsers) {
		this.users = appUsers;
	}
	
	public void addUser(User user){
		this.users.add(user);
	}
	
	public String toString(){
		
		String str =  hnum + ", " + strt + ", " + sbdv + ", " + city + ", " + cntry + ", " + pstl_code;
		
		return  str;
	}
}
