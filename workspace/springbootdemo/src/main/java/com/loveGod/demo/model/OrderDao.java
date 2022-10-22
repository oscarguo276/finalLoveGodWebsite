package com.loveGod.demo.model;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface OrderDao extends JpaRepository<Order, Long> {
	
	@Query(value="from Order  where userId = :userId")
	public List <Order> findByUserId(String userId);

}
