package com.talaria.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Set;


/**
 * The persistent class for the category database table.
 * 
 */
@Entity
@Table(name="category")
@NamedQuery(name="Category.findAll", query="SELECT c FROM Category c")
public class Category extends GeneralObject implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(unique=true, nullable=false)
	private int idcategory;

	@Column(name="ctrgy_nme", nullable=false, length=45)
	private String ctrgyNme;

	//bi-directional many-to-many association to Product
	@ManyToMany(mappedBy="categories")
	private Set<Product> products;

	public Category() {
	}

	public int getIdcategory() {
		return this.idcategory;
	}

	public void setIdcategory(int idcategory) {
		this.idcategory = idcategory;
	}

	public String getCtrgyNme() {
		return this.ctrgyNme;
	}

	public void setCtrgyNme(String ctrgyNme) {
		this.ctrgyNme = ctrgyNme;
	}

	public Set<Product> getProducts() {
		return this.products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

}
