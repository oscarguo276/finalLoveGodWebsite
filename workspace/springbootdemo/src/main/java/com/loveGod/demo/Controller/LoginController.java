package com.loveGod.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loveGod.demo.model.RegisterDao;
import com.loveGod.demo.model.RegisterModel;
import com.loveGod.demo.service.RegisterService;
@Controller
public class LoginController {
	
	@Autowired		
	private RegisterService rService;
	@Autowired	
	private RegisterDao rD;
	
	// jsp 分別為：login(登入)、register(註冊)、registerSuccess(註冊成功)
	
	//================================== 登入頁面 ==================================	
	@GetMapping("/login")       // 網址http://localhost:8080/my-app/login
	public String login() {		// 進入方法(login)
		return "login/login";   // 找  /login.jsp  顯示畫面：登入畫面
	}
	//================================== 註冊頁面 ==================================	
	@GetMapping("/register") 	 // 網址http://localhost:8080/my-app/register
	public String register() {	 // 進入方法(register)
		return "login/register"; // 找  /register.jsp  顯示畫面：註冊畫面
	}
	//================================== 註冊成功 ==================================	
//	@GetMapping("/registerSuccess") 
	@RequestMapping(value = "/registersubmit", method = RequestMethod.POST)
	public String registersubmit(Model model) {
		
	//================================== 資料傳到SQL ===============================		
		RegisterModel r1 = new RegisterModel();	  // 資料表RegisterModel 	
		model.addAttribute("registersubmit",r1);  // (register.jsp的form：action="registersubmit" , r1 ) 
		System.out.println("看我!!!!!!!測試!!!!!我好想打LOL!!!!我想睡覺!!!!!我的筆記!!!!!");
		System.out.println("看我!!!!!!!測試!!!!!我好想打LOL!!!!我想睡覺!!!!!我的筆記!!!!!");
		System.out.println("看我!!!!!!!測試!!!!!我好想打LOL!!!!我想睡覺!!!!!我的筆記!!!!!");
		System.out.println("看我!!!!!!!測試!!!!!我好想打LOL!!!!我想睡覺!!!!!我的筆記!!!!!");
		RegisterModel rM = rD.save(r1);
		return "login/registerSuccess"; 		  // 找  /registerSuccess.jsp 顯示畫面：註冊成功畫面
		}
	}	




	//============= 按下送出資料的註冊按鈕 送出資料 畫面跳到登入頁面 =======
//		@PostMapping("/login/add")
//		public String postNewRegister(
//				@RequestParam("帳號")String memberId,
//				@RequestParam("密碼")String password,
//				@RequestParam("姓名")String name,
//				@RequestParam("性別")String sex,
//				@RequestParam("生日")Date birthday,
//				@RequestParam("電話")String phone,
//				@RequestParam("信箱")String mail,
//				@RequestParam("地址")String address,
//				@RequestParam("是否開啟配對")String mach) {
//			System.out.println("TEST!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
//			
//			Register register = new Register();
//				register.setMemberId(memberId);
//				register.setPassword(password);
//				register.setName(name);
//				register.setSex(sex);
//				register.setBirthday(birthday);
//				register.setPhone(phone);
//				register.setMail(mail);
//				register.setAddress(address);
//				register.setMach(mach);
//				
//				rService.insertRegister(register);
//				return "login/registerSuccess"; // 回傳上傳成功的頁面
//			}	
//}
