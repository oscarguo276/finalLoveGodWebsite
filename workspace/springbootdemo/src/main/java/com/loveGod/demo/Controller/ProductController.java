package com.loveGod.demo.Controller;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.MediaType;
//import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

@Controller
public class ProductController {
	
//	

	
////-------訂單查詢------------Ordertable:識別字串memberOrders  會員table:memberId(帳號)
//	
//	@GetMapping("/newProducts")
//	protected String orderList(HttpServletRequest request,Model model) {
//		HttpSession session = request.getSession();
//		Object memberId = session.getAttribute("memberId");
//		model.addAttribute("memberId", memberId);
//		String userid_4order=(String)session.getAttribute("memberId");
//		if (memberId == null) {
//			return "login/login";
//		}
//		List<Order> memberOrders = oService.findUserId(userid_4order);
//		
//		model.addAttribute("memberOrders", memberOrders);
//
//		return "shop/uploadPage";
//	}
	
	
	

	
//----------------------	
	//------------依id找產品
//	@GetMapping("/order/get/{id}")
//	public Order getById(@PathVariable("id") Integer  id ) {
//		Optional<Order> optional=oDao.findById(id);
//		
//		if(optional.isPresent()) {
//			Order respr =optional.get();
//			return respr;
//		}
//		
//		Order emptyOrder=new Order();
//		emptyOrder.setUserId("沒有這筆資料");
//		return emptyOrder;
//	}
//	//跳頁 每頁幾筆資料
//	@GetMapping("/products/page/{pageNumber}")
//	public List<Products> findByPage(@PathVariable Integer pageNumber){
//		//從第幾頁開始 每頁三比 根據id屬性 由小排到大
//		Pageable pgb=PageRequest.of(pageNumber-1, 3, Sort.Direction.ASC, "prodPrice");
//		Page<Products> page=pDao.findAll(pgb);
//		List<Products> list=page.getContent();
//		return list;
//	}
		

}
