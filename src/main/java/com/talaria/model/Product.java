package com.talaria.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.Set;


/**
 * The persistent class for the products database table.
 * 
 */
@Entity
@Table(name="products")
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product extends GeneralObject implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(unique=true, nullable=false)
	private int idproducts;

	@Column(nullable=false, length=300)
	private String description;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="dt_crte", nullable=false)
	private Date dtCrte;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="dt_updte", nullable=false)
	private Date dtUpdte;

	@Column(nullable=false, length=150)
	private String imglnk;

	@Column(name="is_avlbl", nullable=false)
	private byte isAvlbl;

	@Column(nullable=false)
	private double prce;

	@Column(name="prd_nme", nullable=false, length=45)
	private String prdNme;

	//bi-directional many-to-one association to Inventory
	@OneToOne(mappedBy="product")
	private Inventory inventories;

	//bi-directional many-to-many association to Category
	@ManyToMany
	@JoinTable(
		name="prd_ctgry"
		, joinColumns={
			@JoinColumn(name="products_idproducts", nullable=false)
			}
		, inverseJoinColumns={
			@JoinColumn(name="category_idcategory", nullable=false)
			}
		)
	private Set<Category> categories;

	//bi-directional many-to-one association to Review
	@OneToMany(mappedBy="product")
	private Set<Review> reviews;

	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="product")
	private Set<Order> orders;

	public Product() {
	}

	public int getIdproducts() {
		return this.idproducts;
	}

	public void setIdproducts(int idproducts) {
		this.idproducts = idproducts;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDtCrte() {
		return this.dtCrte;
	}

	public void setDtCrte(Date dtCrte) {
		this.dtCrte = dtCrte;
	}

	public Date getDtUpdte() {
		return this.dtUpdte;
	}

	public void setDtUpdte(Date dtUpdte) {
		this.dtUpdte = dtUpdte;
	}

	public String getImglnk() {
		return this.imglnk;
	}

	public void setImglnk(String imglnk) {
		this.imglnk = imglnk;
	}

	public byte getIsAvlbl() {
		return this.isAvlbl;
	}

	public void setIsAvlbl(byte isAvlbl) {
		this.isAvlbl = isAvlbl;
	}

	public double getPrce() {
		return this.prce;
	}

	public void setPrce(double prce) {
		this.prce = prce;
	}

	public String getPrdNme() {
		return this.prdNme;
	}

	public void setPrdNme(String prdNme) {
		this.prdNme = prdNme;
	}
	
//	public void editInventory(){
//		this.inventories.
//	}

	public Inventory getInventories() {
		return this.inventories;
	}

	public void setInventories(Inventory inventories) {
		this.inventories = inventories;
	}

	public Set<Category> getCategories() {
		return this.categories;
	}

	public void setCategories(Set<Category> categories) {
		this.categories = categories;
	}

		public Set<Review> getReviews() {
		return this.reviews;
	}

	public void setReviews(Set<Review> reviews) {
		this.reviews = reviews;
	}

	public Review addReview(Review review) {
		getReviews().add(review);
		review.setProduct(this);

		return review;
	}

	public Review removeReview(Review review) {
		getReviews().remove(review);
		review.setProduct(null);

		return review;
	}

	public Set<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	public Order addOrder(Order order) {
		getOrders().add(order);
		order.setProduct(this);

		return order;
	}

	public Order removeOrder(Order order) {
		getOrders().remove(order);
		order.setProduct(null);

		return order;
	}

}