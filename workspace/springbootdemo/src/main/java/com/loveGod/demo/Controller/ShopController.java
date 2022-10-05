package com.loveGod.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShopController {
		//產生商城頁面
	@GetMapping("/shop/more")
	public String moreShop() {
		return "shop/shop";
	}
}
