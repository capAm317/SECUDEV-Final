package com.talaria.model;

import java.io.Serializable;
import javax.persistence.*;

import com.talaria.model.Product;


/**
 * The persistent class for the inventory database table.
 * 
 */
@Entity
@Table(name="inventory")
@NamedQuery(name="Inventory.findAll", query="SELECT i FROM Inventory i")
public class Inventory implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(unique=true, nullable=false)
	private int idinventory;

	@Column(name="qty_on_hand", nullable=false)
	private int qtyOnHand;

	//bi-directional many-to-one association to Product
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="products_idproducts", nullable=false)
	private Product product;

	public Inventory() {
	}

	public int getIdinventory() {
		return this.idinventory;
	}

	public void setIdinventory(int idinventory) {
		this.idinventory = idinventory;
	}

	public int getQtyOnHand() {
		return this.qtyOnHand;
	}

	public void setQtyOnHand(int qtyOnHand) {
		this.qtyOnHand = qtyOnHand;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}