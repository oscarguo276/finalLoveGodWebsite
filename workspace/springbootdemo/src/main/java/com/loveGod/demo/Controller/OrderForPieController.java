package com.loveGod.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.loveGod.demo.model.OrderDetail;
import com.loveGod.demo.service.OrderDetailService;

@Controller
public class OrderForPieController {
	
	@Autowired
	private OrderDetailService oDService;
	
	
	@GetMapping("/orderPie")
	public String viewHomePage(Model model){
		List<OrderDetail> orderDetail = oDService.listOrderDetail();
		model.addAttribute("orderDetail", orderDetail);
	        return "/shop/orderPie";
	 }

}
