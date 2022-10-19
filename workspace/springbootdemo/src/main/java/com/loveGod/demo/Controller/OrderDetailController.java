package com.loveGod.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.loveGod.demo.model.OrderDetail;
import com.loveGod.demo.service.OrderDetailService;

public class OrderDetailController {
	
	@Autowired
	private OrderDetailService odService;
	
	
	

}
