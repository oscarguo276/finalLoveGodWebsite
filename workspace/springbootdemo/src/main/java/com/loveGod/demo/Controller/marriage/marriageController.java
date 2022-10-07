package com.loveGod.demo.Controller.marriage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class marriageController {
		//產生配對頁面
	@GetMapping("/marriage")
	public String drawlots() {
		return "marriage/marriage";
	}
}
