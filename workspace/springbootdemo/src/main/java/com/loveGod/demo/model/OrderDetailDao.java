package com.loveGod.demo.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrderDetailDao extends JpaRepository<OrderDetail, Integer> {
	@Query(value="from OrderDetail  where orderId = :orderId")
	public List <OrderDetail> findByOrderId(Integer orderId);

	
}
