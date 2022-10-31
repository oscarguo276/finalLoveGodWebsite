package com.loveGod.demo.Controller.Management;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.loveGod.demo.model.Order;
import com.loveGod.demo.service.ordermanagementService;

@Controller
public class ordermanagementController {
	
	@Autowired
	private ordermanagementService orService;
	
	@GetMapping("/order/page")
	public String viewOrder(@RequestParam(name="p",defaultValue="1") Integer pageNumber, Model model) {
		Page<Order> page = orService.findByPage(pageNumber);
		model.addAttribute("page", page);
		return "management/orderManagement";
	}
	
	@GetMapping("/order/deleteOrder")
	public String deleteOrder(@RequestParam("id") Integer id) {
		orService.deleteById(id);
		return "redirect:/order/page";
	}
	
	@GetMapping("order/editOrder")
	public String editOrder(@RequestParam("id") Integer id, Model model) {
		Order od = orService.findById(id);
		model.addAttribute("orders",od);
		return "management/editOrder";
	}
	
	@PostMapping("/order/postEditOrder")
	public String postEditOrder(@ModelAttribute("orders") Order od) {
		orService.insert(od);
		return "redirect:/order/page";
	}
	
//	@PostMapping("/order/postEditOrder")
//	public String postEditOrder(
//			@RequestParam("orderId") Integer orderId,
//			@RequestParam("orderSum") Integer orderSum,
//			@RequestParam("orderDate") Date orderDate,
//			@RequestParam("conName") String conName,
//			@RequestParam("conPhone") String conPhone,
//			@RequestParam("address") String address,
//			@RequestParam("paystatus") String paystatus,
//			@RequestParam("shipstatus") String shipstatus
//			
//			) {
//		
//		Order order = new Order(orderId,orderSum,orderDate,conName,conPhone,address,paystatus,shipstatus);
//		orService.insert(order);
//		return "redirect:/order/page";
//		
//	}
	

}