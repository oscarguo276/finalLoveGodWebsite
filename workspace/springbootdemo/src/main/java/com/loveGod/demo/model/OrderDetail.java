package com.loveGod.demo.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.sun.istack.NotNull;

@Entity
@Table(name = "orderDetail_y")
public class OrderDetail {
	
	@Id
	@Column(name = "orderDetailId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderDetailId;	
	
	@Column(name = "orderId")
	private String orderId;				//訂單id
	

	@Column(name = "prodId" )
	private Integer prodId;			//商品id(FK)(PK)
	

	@Column(name="quantity")
	private Integer quantity;			//商品數量
	

	@Column(name="subtotal")
	private Integer subtotal;			//商品小計
	
	public OrderDetail() {
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Integer getProdId() {
		return prodId;
	}

	public void setProdId(Integer prodId) {
		this.prodId = prodId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(Integer subtotal) {
		this.subtotal = subtotal;
	}
	
	

	public Integer getOrderDetailId() {
		return orderDetailId;
	}

	public void setOrderDetailId(Integer orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	

}
	