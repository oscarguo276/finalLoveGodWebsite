package com.loveGod.demo.Controller.marriage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.loveGod.demo.model.pairDetail;
import com.loveGod.demo.service.pairDetailService;

@Controller
public class marriageController {
	
	@Autowired
	pairDetailService pairDetailS;
	
		//產生配對頁面
	@GetMapping("/marriage")
	public String drawlots() {
		return "marriage/marriage";
	}
	//產生新的配對表
	@GetMapping("/NewMarriageTable")
	public String NewTable() {
		pairDetail pd = new pairDetail();
		pairDetailS.newPairDetail(pd);
		return "/";
	}
	
	
	
}

