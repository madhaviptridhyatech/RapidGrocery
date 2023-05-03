package com.rapid.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order_place")
public class OrderPlace {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "order_id")
	public Integer OrderId;
	
	@Column(name = "user_master_id")
	public Integer usermasterid;
	
	public Integer getUsermasterid() {
		return usermasterid;
	}

	public void setUsermasterid(Integer usermasterid) {
		this.usermasterid = usermasterid;
	}

	@Column(name = "cart_id")
	public Integer cartId;//fk
	
	@Column(name = "total_amount")
	public Integer totalAmount;
	
	@Column(name = "billing_address")
	public String billingAddress;
	
	@Column(name = "shipping_address")
	public String shippingAddress;
	
	@Column(name = "order_status_id")
	public Integer OrderStatusId;

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
