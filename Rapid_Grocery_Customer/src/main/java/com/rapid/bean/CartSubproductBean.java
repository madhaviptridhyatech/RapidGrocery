package com.rapid.bean;

public class CartSubproductBean {

	public Integer cartId;
	public Integer subproductId;//fk
	public Integer userMasterId;//fk
	public Integer quantity;
	public Integer totalAmount;
	public String subproductName;
	public String subproductImage;
	public Integer subproductPrice;
	public Integer subproductQuantity;
	public String subproductDescription;
	
	public Integer getCartId() {
		return cartId;
	}
	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}
	public Integer getSubproductId() {
		return subproductId;
	}
	public void setSubproductId(Integer subproductId) {
		this.subproductId = subproductId;
	}
	public Integer getUserMasterId() {
		return userMasterId;
	}
	public void setUserMasterId(Integer userMasterId) {
		this.userMasterId = userMasterId;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getSubproductName() {
		return subproductName;
	}
	public void setSubproductName(String subproductName) {
		this.subproductName = subproductName;
	}
	public String getSubproductImage() {
		return subproductImage;
	}
	public void setSubproductImage(String subproductImage) {
		this.subproductImage = subproductImage;
	}
	public Integer getSubproductPrice() {
		return subproductPrice;
	}
	public void setSubproductPrice(Integer subproductPrice) {
		this.subproductPrice = subproductPrice;
	}
	public Integer getSubproductQuantity() {
		return subproductQuantity;
	}
	public void setSubproductQuantity(Integer subproductQuantity) {
		this.subproductQuantity = subproductQuantity;
	}
	public String getSubproductDescription() {
		return subproductDescription;
	}
	public void setSubproductDescription(String subproductDescription) {
		this.subproductDescription = subproductDescription;
	}	
	
}
