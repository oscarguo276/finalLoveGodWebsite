//package com.loveGod.demo.Controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.loveGod.demo.model.RegisterModel;
//import com.loveGod.demo.service.UserService;
//
//@Controller
//public class UserController {
//
//	@Autowired
//	private UserService uService; // Service部分
//	
//	@GetMapping("/user")
//	public String user() {
//		return "/user/user";
//	}
//	
//	//----------- 編輯功能 -----------------------------		
//		@GetMapping("/user")
//		public String editUser(@RequestParam("id") Integer id,Model model) {
//			System.out.println("---------TEST01-----------");
//			// 拿到ID跳轉到另一個頁面
//			RegisterModel rM = uService.findById(id);
//			// 物件放到model
//			model.addAttribute("RegisterModel",rM); 
//			// 頁面回傳
//			return "/user/user";
//		}
//	//----------- 編輯完成按下送出按鈕的功能 -----------------------------
//		@PostMapping("/user")
//		public String postEditUser(@ModelAttribute("registersubmit") RegisterModel rM) {
//			System.out.println("---------TEST001-----------");
//			uService.insertUser(rM);
//			return "redirect:/user/user";
//		}
//	
//}
