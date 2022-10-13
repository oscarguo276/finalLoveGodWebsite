package com.loveGod.demo.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.sun.istack.NotNull;

@Entity
@Table(name = "orders_y")
public class Order {
	@Id
	@Column(name="order_id")
	private String orderId;			//訂單編號
	
	@NotNull
	@Column(name="con_address")
	private String address;			//寄送地址
	
	@NotNull
	@Column(name="con_name")
	private String conName;				//收件人姓名
	
	@NotNull
	@Column(name="con_phone")
	private String conPhone;			//收件人手機
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss SSS")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="order_date", columnDefinition="datetime")
	private Date orderDate; 			//訂單成立時間

	@NotNull
	@Column(name="order_sum")
	private Integer orderSum; 			//訂單總金額
	
	@Column(name="buyer_id")
	private Integer buyerId;
	
	
	@PrePersist
	public void onCreate() {
		if(orderDate == null) {
			orderDate = new Date();
		}
	}
	
	public Order() {
	}
	
	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getaddress() {
		return address;
	}
	public void setaddress(String address) {
		this.address = address;
	}
	public String getConName() {
		return conName;
	}
	public void setConName(String conName) {
		this.conName = conName;
	}
	public String getConPhone() {
		return conPhone;
	}
	public void setConPhone(String conPhone) {
		this.conPhone = conPhone;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Integer getOrderSum() {
		return orderSum;
	}
	public void setOrderSum(Integer orderSum) {
		this.orderSum = orderSum;
	}
	public Integer getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(Integer buyerId) {
		this.buyerId = buyerId;
	}
	
}
