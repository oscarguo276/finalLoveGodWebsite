package com.loveGod.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.loveGod.demo.model.Order;
import com.loveGod.demo.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService oService;
	
	@GetMapping("/shop/newOrder") //訂單按下確認導入位置

	public String newOrder() {
		return "shop/shopconfirm";
	}
		
	@PostMapping("/shop/oconfirm")
	public String postnewOrder(@RequestParam("orderId") String orderid ,
							@RequestParam("address") String address,
							@RequestParam("conName") String name,
							@RequestParam("conPhone") String phone,
							@RequestParam("orderSum") Integer sum ,
							@RequestParam("buyerId") Integer buyerId) {
		Order addO=new Order();
		
		addO.setOrderId(orderid);
		addO.setaddress(address);
		addO.setConPhone(phone);
		addO.setConName(name);
		addO.setOrderSum(sum);
		addO.setBuyerId(buyerId);
		oService.insertOrder(addO);
		return "/shop/confirmSuccess" ;
		
	}
//	@PostMapping(value="/shop/", consumes = "application/json")
//	public @ResponseBody Map<String, String> save(@RequestBody Order order) {
//		Map<String, String> map = new HashMap<>();
//		try {
//			memberService.save(order);
//			map.put("success", "新增成功");
//		} catch (Exception e) {
//			map.put("fail", e.getMessage());
//		}
//		return map;
//	}
//	
	
			
//	@PostMapping("/shop/oconfirm")
//	public @ResponseBody Map<String , String>postNewOrderDetail(
//		   @RequestParam(value = "orderId", required = false)String oid,
//		   @RequestParam(value = "conAddress", required = false)String address,
//		   @RequestParam(value = "conName", required = false)String name,
//		   @RequestParam(value = "conPhone", required = false)String phone,
//		   @RequestParam(value = "orderSum", required = false)Integer sum,
//		   @RequestParam(value = "buyerId", required = false)Integer buyerId) {
//		
//		Map<String,String> messageMap = new HashMap<>();
//		
//		if(address==null || address.trim().length()==0) {
//			messageMap.put("addressError","請輸入地址");
//		} 
//		if(phone==null || phone.trim().length()==0) {
//			messageMap.put("phoneError","請輸入手機號碼");
//		}
//		if (name == null || name.trim().length() == 0) {
//			messageMap.put("nameError", "請輸入姓名");
//		}
//		if (!messageMap.isEmpty()) {
//			return messageMap;
//		}
//		
//		messageMap.put("success", "訂購成功");
//		return messageMap ;
//	}	

	}
