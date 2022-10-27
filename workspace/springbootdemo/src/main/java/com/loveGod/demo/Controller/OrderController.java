package com.loveGod.demo.Controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	//--------------------------存入orders_y table 	
	@PostMapping("/shop/oconfirm")
	public String postnewOrder(HttpServletRequest request,@RequestParam("address") String address,
							@RequestParam("conName") String name,
							@RequestParam("conPhone") String phone,
							@RequestParam("orderSum") Integer sum,
							@RequestParam("orderDetail") String orderd,
							@RequestParam("userId") String uid) {
//		HttpSession session = request.getSession();
//		Object memberId = session.getAttribute("memberId");
//		if (memberId == null) {
//			return "login/login";
//		}	else {

			Order addO=new Order();
			addO.setaddress(address);
			addO.setConPhone(phone);
			addO.setConName(name);
			addO.setOrderSum(sum);
			addO.setOrderDetail(orderd);
			addO.setUserId(uid);
			oService.insertOrder(addO);
			return "/shop/confirmSuccess" ;
			
			
		
	}
	
	//-------訂單查詢------------Ordertable:識別字串memberOrders  會員table:memberId(帳號)
	
		@GetMapping("/Order")
		protected String orderList(HttpServletRequest request,Model model)  {
			HttpSession session = request.getSession();
			Object memberId = session.getAttribute("memberId");
			model.addAttribute("memberId", memberId);
			String userid_4order=(String)session.getAttribute("memberId");
			if (memberId == null) {
				return "login/login";
			}
			List<Order> memberOrders = oService.findUserId(userid_4order);
			
			model.addAttribute("memberOrders", memberOrders);
			

			return "shop/uploadPage";
		
		}
	
			
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
