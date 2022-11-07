package com.loveGod.demo.Controller.Management;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.loveGod.demo.model.Order;
import com.loveGod.demo.model.RegisterModel;
import com.loveGod.demo.service.MemberManagementService;
import com.loveGod.demo.service.RegisterService;
import com.loveGod.demo.service.ordermanagementService;

@Controller
public class ordermanagementController {
	
	@Autowired
	private ordermanagementService orService;
	
	@Autowired
	private EmailSenderService emailSenderService;
	
	
	@Autowired
	private MemberManagementService memberManagementService;
	
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
		if(od.getShipstatus()==1) {
			RegisterModel member= memberManagementService.findbyMemberId(od.getUserId());
			emailSenderService.sendEmail(member.getMail(), 
					"[[歸心寺 出貨通知]]", 
					"您訂購的惜福商品已經出貨囉！麻煩顧客近期留意收件地址 歸心寺團隊敬上");
			
		}
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
