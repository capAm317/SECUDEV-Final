package com.talaria.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the reviews database table.
 * 
 */
@Entity
@Table(name="reviews")
@NamedQuery(name="Review.findAll", query="SELECT r FROM Review r")
public class Review implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(unique=true, nullable=false)
	private int idreviews;

	@Column(nullable=false, length=150)
	private String reviewscol;

	//bi-directional many-to-one association to AppUser
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="app_user_id", nullable=false)
	private User user;

	//bi-directional many-to-one association to Product
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="products_idproducts", nullable=false)
	private Product product;

	public Review() {
	}

	public int getIdreviews() {
		return this.idreviews;
	}

	public void setIdreviews(int idreviews) {
		this.idreviews = idreviews;
	}

	public String getReviewscol() {
		return this.reviewscol;
	}

	public void setReviewscol(String reviewscol) {
		this.reviewscol = reviewscol;
	}

	public User getAppUser() {
		return this.user;
	}

	public void setAppUser(User appUser) {
		this.user = appUser;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}