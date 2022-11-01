package com.loveGod.demo.Controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.loveGod.demo.model.Order;
import com.loveGod.demo.model.Products;
import com.loveGod.demo.model.RegisterModel;
import com.loveGod.demo.service.OrderService;
import com.loveGod.demo.service.RegisterService;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;

@Controller
public class OrderController {
	
	public static AllInOne all;
	private static void initial(){
		all = new AllInOne("");
	}
	@Autowired
	private OrderService oService;
	@Autowired
	private RegisterService rService; 
	//-----顯示填寫訂購畫面 以及 自動將使用者的資訊 帶入填寫訂購人資訊的表格
	@GetMapping("/shop/newOrder") 
	public String newOrder(RegisterModel rM, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String memberId = session.getAttribute("memberId").toString(); // 使用Session是因為要用抓這人的帳密來判斷這人的資料
		String password = session.getAttribute("password").toString();
		List<RegisterModel> userList = rService.viewUser(memberId, password);
		model.addAttribute("Name", userList.get(0).getName());
		model.addAttribute("Phone", userList.get(0).getPhone());
		model.addAttribute("Address", userList.get(0).getAddress());
		model.addAttribute("Mail", userList.get(0).getMail());

		return "shop/shopconfirm";
	}
	
	//------------------填寫完訂購資料按下送出--存入orders_y table 
	
	
	
	//------------------填寫完訂購資料按下送出--存入orders_y table 
	@ResponseBody	
	@PostMapping("/shop/oconfirm")
	public String postnewOrder(
							@RequestParam("address") String address,
							@RequestParam("conName") String name,
							@RequestParam("conPhone") String phone,
							@RequestParam("orderSum") Integer sum,
							@RequestParam("orderDetail") String orderd,
							@RequestParam("userId") String uid,
							HttpSession session
							) {
	
			Order addO=new Order();
			
			addO.setaddress(address);
			addO.setConPhone(phone);
			addO.setConName(name);
			addO.setOrderSum(sum);
			addO.setOrderDetail(orderd);
			addO.setUserId(uid);
			
			Order returnorder =oService.insertOrder(addO);
			session.setAttribute("orderObj", returnorder);
			
			// 新增金流串接
			initial();
			AioCheckOutALL obj = new AioCheckOutALL();
			
			obj.setMerchantTradeNo("LL"+String.valueOf((new Date()).getTime()));
			DateFormat df= new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			obj.setMerchantTradeDate(df.format(new java.sql.Timestamp(System.currentTimeMillis())));
			obj.setTotalAmount(String.valueOf(sum));
			obj.setTradeDesc("test Description");
			obj.setItemName("結緣商品");
			obj.setReturnURL("http://localhost:8080/my-app/management/ordermanagement");
			//跳轉回使用者訂單明細
			obj.setClientBackURL("http://localhost:8080/my-app/Order/page");
			obj.setNeedExtraPaidInfo("N");
			String form = all.aioCheckOut(obj, null);
			return form;
			
//			return "/shop/confirmSuccess" ;

	}
	//-------訂單查詢------------Ordertable:識別字串memberOrders  會員table:memberId(帳號)
	
		// @GetMapping("/Order")
		// protected String orderList(HttpServletRequest request,Model model, HttpSession session)  {
			
		
		@GetMapping("/Order/page")
		protected String orderList(HttpServletRequest request,Model model, HttpSession session,@RequestParam(name="p",defaultValue="1") Integer pageNumber)  {
//			HttpSession session = request.getSession();
			Object memberId = session.getAttribute("memberId");
			Order order=(Order) session.getAttribute("orderObj");
//			System.out.println( "kkkkkk"+order.getConName());
//			order.setPaystatus("已付款");
//			System.out.println(order.getPaystatus());
			
			
			model.addAttribute("memberId", memberId);
			String userid_4order=(String)session.getAttribute("memberId");
			if (memberId == null) {
				return "login/login";
			}
			
			List<Order> memberOrders = oService.findUserId(userid_4order);
			
			model.addAttribute("memberOrders", memberOrders);
			Page<Order> page = oService.findByPage(pageNumber);
			model.addAttribute("page", page);
			return "shop/uploadPage";
//			 return "redirect:/Order/page";
		}
		
		
//		@GetMapping("/Order/page")
//		public String viewOrder(@RequestParam(name="p",defaultValue="1") Integer pageNumber, Model model) {
//			Page<Order> page = oService.findByPage(pageNumber);
//			model.addAttribute("page", page);
//			return "shop/uploadPage";
//		}
			
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
