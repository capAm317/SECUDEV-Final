package com.talaria.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.*;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

import java.util.Date;


/**
 * The persistent class for the orders database table.
 * 
 */
@Entity
@Table(name="orders")
@NamedQuery(name="Order.findAll", query="SELECT o FROM Order o")
public class Order implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(unique=true, nullable=false)
	private int idorders;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ordr_dte", nullable=false)
	private Date ordrDte;

	@Column(nullable=false)
	private int quantity;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ship_dte")
	private Date shipDte;

	@Column(nullable=false, length=1)
	private String status;

	@Column(nullable=false)
	private double total;

	//bi-directional many-to-one association to Address
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="adrsses_idadrsses", nullable=false)
	private UserAdress adrss;

	//bi-directional many-to-one association to AppUser
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="app_user_id", nullable=false)
	private User user;

	//bi-directional many-to-one association to Product
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="products_idproducts", nullable=false)
	private Product product;

	public Order() {
	}
	
	@PrePersist
	protected void onCreate() {
	    this.setOrdrDte(new Timestamp((new Date()).getTime()));
	}
	
	@PreUpdate
    protected void onUpdate() {
		this.setOrdrDte(new Timestamp((new Date()).getTime()));
    }

	public int getIdorders() {
		return this.idorders;
	}

	public void setIdorders(int idorders) {
		this.idorders = idorders;
	}

	public Date getOrdrDte() {
		return this.ordrDte;
	}

	public void setOrdrDte(Date ordrDte) {
		this.ordrDte = ordrDte;
	}

	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Date getShipDte() {
		return this.shipDte;
	}

	public void setShipDte(Date shipDte) {
		this.shipDte = shipDte;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getTotal() {
		return this.total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public UserAdress getAdrss() {
		return this.adrss;
	}

	public void setAdrss(UserAdress adrss) {
		this.adrss = adrss;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}