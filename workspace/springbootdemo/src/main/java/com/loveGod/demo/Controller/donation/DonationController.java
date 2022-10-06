package com.loveGod.demo.Controller.donation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DonationController {
		//產生香油錢頁面
	@GetMapping("/donation")
	public String donation() {
		return "donation/donation";
	}
}
