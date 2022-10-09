package com.loveGod.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.loveGod.demo.model.RegisterModel;
import com.loveGod.demo.service.RegisterService;
@Controller
public class LoginController {
	
	@Autowired		
	private RegisterService rService; // Service部分

	// jsp 分別為：login(登入)、register(註冊)、registerSuccess(註冊成功)
	
	//================================== 登入頁面 ==================================	
	@GetMapping("/login")       // 網址http://localhost:8080/my-app/login
	public String login() {		// 進入方法(login)
		return "login/login";   // 找  /login.jsp  顯示畫面：登入畫面
	}
	@PostMapping("/login")      // 網址http://localhost:8080/my-app/login
	public String Postlogin() {	// 進入方法(login)
		return "login/login";   // 找  /login.jsp  顯示畫面：登入畫面
	}
	//================================== 註冊頁面 ==================================	
	@GetMapping("/register") 	   // 網址http://localhost:8080/my-app/register
	public String register() {	   // 進入方法(register)
		return "login/register";   // 找  /register.jsp  顯示畫面：註冊畫面
	}
	@PostMapping("/register") 	   // 網址http://localhost:8080/my-app/register
	public String Postregister() { // 進入方法(register)
		return "login/register";   // 找  /register.jsp  顯示畫面：註冊畫面
	}
	//================================== 註冊成功 ==================================

//	@RequestMapping(value = "/registersubmit", method = RequestMethod.POST)
	@PostMapping("/registersubmit")
	public String registersubmit(@ModelAttribute(name="registersubmit")RegisterModel rM, Model model) {	
		System.out.println("快讓我成功ㄚㄚㄚㄚㄚㄚ");
	    //------------------- 資料傳到SQL --------------------------------
		System.out.println(rM.getBirthday());     // 確認裡面有無帳號資料
		System.out.println("看到沒!!!有資料啦!!!!!");
		rService.insertRegister(rM);		      // 把資料放進去
		System.out.println("成功沒!!!!我放進去啦!!!");
		RegisterModel r1 = new RegisterModel();	  // 資料表RegisterModel 	
		System.out.println("我的老天啊!!!!!!!!!!!");
		model.addAttribute("registersubmit",r1);
		System.out.println("我要下班去吃大餐啦@@@@@@");

		return "login/registerSuccess"; 		  // 找  /registerSuccess.jsp 顯示畫面：註冊成功畫面
		}
	}	


