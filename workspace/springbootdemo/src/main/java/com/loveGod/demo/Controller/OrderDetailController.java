package com.loveGod.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.loveGod.demo.model.OrderDetail;
import com.loveGod.demo.service.OrderDetailService;

public class OrderDetailController {
	
	@Autowired
	private OrderDetailService odService;
	@PostMapping("/orderconfirm")
	public String postNewOrderDetail(@RequestParam("orderId")String oid,
									@RequestParam("prodId")Integer pid,
									@RequestParam("quantity")Integer quan,
									@RequestParam("subtotal")Integer subto) {
		OrderDetail addod = new OrderDetail();
		addod.setOrderId(oid);
		addod.setProdId(pid);
		addod.setQuantity(quan);
		addod.setSubtotal(subto);
		odService.insertOrderDetail(addod);
		
		return"/shop/confirmSuccess" ;
	}

}
