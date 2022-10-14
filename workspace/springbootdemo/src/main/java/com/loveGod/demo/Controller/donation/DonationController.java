package com.loveGod.demo.Controller.donation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.loveGod.demo.model.DonationModel;
import com.loveGod.demo.service.DonationService;

@Controller
public class DonationController {

	@Autowired
	private DonationService dService;

	// 產生香油錢頁面
	@GetMapping("/donation")
	public String donation(Model model) {

		DonationModel d1 = new DonationModel();

		model.addAttribute("donations", d1);
		
		System.out.println(123);
		return "donation/donation";
	}

	@PostMapping("/donation")
	public String postdonation(@ModelAttribute(name ="donations") DonationModel dsg) {
		
		dService.insert(dsg);
		
		System.out.println(456);
		return "index";
		
	}

}