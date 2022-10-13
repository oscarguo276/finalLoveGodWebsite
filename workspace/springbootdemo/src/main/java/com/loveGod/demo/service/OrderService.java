package com.loveGod.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.loveGod.demo.model.Order;
import com.loveGod.demo.model.OrderDao;

@Transactional
@Service
public class OrderService {
	
	@Autowired
	private OrderDao oDao;
	
	public Order insertOrder(Order or) {
		return oDao.save(or);
	}
	
	public List<Order> findAllOrder() {
		return oDao.findAll();
	}
	
	public Order getProducts(Long id) {
		Optional<Order> optional=oDao.findById(id);
		
		if(optional.isPresent()) {
			return optional.get();
		}
		return null;
	}
	
}
