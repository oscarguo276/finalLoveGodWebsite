package com.loveGod.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class Products {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name="prodId")
		private Long prodId;
		
		@Column(name="prodName")
		private String prodName;
		
		@Column(name="prodPrice")
		private Integer prodPrice;
	
		public Products() {
			
		}
	
		public Long getProdId() {
			return prodId;
		}
	
		public void setProdId(Long prodId) {
			this.	prodId = prodId;
		}
	
		public String getProdName() {
			return prodName;
		}
	
		public void setProdName(String prodName) {
			this.prodName = prodName;
		}
	
		public Integer getProdPrice() {
			return prodPrice;
		}
	
		public void setProdPrice(Integer prodPrice) {
			this.prodPrice = prodPrice;
		}
		
	

}
