package com.rapid.bean;

public class OrderPlaceBean {

private Integer OrderId;

	private Integer cartId;//fk
	private Integer totalAmount;
	private String billingAddress;
	private String shippingAddress;
	private Integer OrderStatusId;

	public Integer getOrderId() {
		return OrderId;
	}

	public void setOrderId(Integer orderId) {
		OrderId = orderId;
	}

	public Integer getCartId() {
		return cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}

	public Integer getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(String billingAddress) {
		this.billingAddress = billingAddress;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Integer getOrderStatusId() {
		return OrderStatusId;
	}

	public void setOrderStatusId(Integer orderStatusId) {
		OrderStatusId = orderStatusId;
	}
}
