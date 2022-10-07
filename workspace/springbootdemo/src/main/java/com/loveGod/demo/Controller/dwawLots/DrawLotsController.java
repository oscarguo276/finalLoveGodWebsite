package com.loveGod.demo.Controller.dwawLots;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DrawLotsController {
		//產生香油錢頁面
	@GetMapping("/drawlots")
	public String drawlots() {
		return "drawlots/drawlots";
	}
}
