package com.loveGod.demo.Controller;

import java.lang.reflect.Member;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.loveGod.demo.model.RegisterDao;
import com.loveGod.demo.model.RegisterModel;
import com.loveGod.demo.service.RegisterService;
@Controller
public class LoginController {
	
	@Autowired		
	private RegisterService rService; // Service部分
	@Autowired
	private RegisterDao rDao;

	// jsp 分別為：login(登入)、register(註冊)、registerSuccess(註冊成功)
	
	//================================== 登入頁面 ==================================	
	@GetMapping("/login")       // 網址http://localhost:8080/my-app/login
	public String login(HttpServletRequest request) {		// 進入方法(login)
		HttpSession session = request.getSession();
		Object memberId = session.getAttribute("memberId");
		if(memberId != null) {
			return "redirect:index";
		}else {
			return "login/login";   // 找  /login.jsp  顯示畫面：登入畫面
		}
	}
	//================================== 註冊頁面 ==================================	
	@GetMapping("/register") 	   // 網址http://localhost:8080/my-app/register
	public String register() {	   // 進入方法(register)
		return "login/register";   // 找  /register.jsp  顯示畫面：註冊畫面
	}
	//================================== 註冊成功 ==================================

//	@RequestMapping(value = "/registersubmit", method = RequestMethod.POST)
	@PostMapping("/registersubmit")
	public String registersubmit(
			@ModelAttribute(name="registersubmit")RegisterModel rM, 
			Model model) {	
	    //------------------- 資料傳到SQL --------------------------------
//		System.out.println("帳號： "+ rM.getMemberId());      // 確認裡面有無帳號資料
		rService.insertRegister(rM);		      // 把資料放進去(插入)
//		rDao.save(rM);
		RegisterModel r1 = new RegisterModel();	  // 資料表RegisterModel 	
		model.addAttribute("registersubmit",r1);
		return "login/registerSuccess"; 		  // 找  /registerSuccess.jsp 顯示畫面：註冊成功畫面
		}

	//================================== 使用者登入判斷帳密是否正確 ========================
	@PostMapping("/loginsubmit")
	public String loginsubmit(HttpServletRequest request,
		@ModelAttribute(name="loginsubmit")RegisterModel rM, 
		Model model) {	
			//---- 資料傳到SQL ----------
		List<RegisterModel> x = rService.findLogin(rM); 	
		if(x != null) {									   // 不是空的表示抓到啦~
			// 如果登入成功帳密存到Session
			//第一步：获取session
			HttpSession session = request.getSession();
			//第二步：将想要保存到数据存入session中
			session.setAttribute("memberId",x.get(0).getMemberId());
			session.setAttribute("password",x.get(0).getPassword());
			//这样就完成了用户名和密码保存到session的操作
			return "redirect:index";					  						   // 正確返回首頁
		}else {
			System.out.println("帳密錯誤!!");  	
			return "login/login";
		}
	}
}

	
	
//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public String doLogin(
//			@ModelAttribute RegisterModel registerModel ,
//			HttpSession session, 
//			RedirectAttributes redirectAttributes) {
//		
//		RegisterModel RegisterModel = RegisterModel.login(memberAccount);
//		if(memberAccountVO == null) {
//			String message = memberAccountVO == null ? "帳號或密碼錯誤" : "";	
//			redirectAttributes.addFlashAttribute("MESSAGE", message);
//			return "redirect:login";
//		}
//		session.setAttribute("member", memberAccountVO);	
//		return "redirect:information";
//	}
//	
	
	//================================== 判斷使用者的帳密是否存在資料庫 ========================
	// ====== Ajax ====  如果輸入資料有錯誤，送回前端，請使用者修正 ============================
//	   
//	   @PostMapping("/login")
//		public @ResponseBody Map<String, String> addMember(
//				@RequestParam(value = "memberId", required = false) String memberId,
//				@RequestParam(value = "password", required = false) String password) {
//
//			Map<String, String> messageMap = new HashMap<>();
//			
//			//  檢查輸入資料
//			if (memberId == null || memberId.trim().length() == 0) {
//				messageMap.put("idError", "請輸入帳號");
//			}
//			if (password == null || password.trim().length() == 0) {
//				messageMap.put("nameError", "請輸入密碼");
//			}
//			
//			//  如果輸入資料有錯誤，送回前端，請使用者修正
//			if (!messageMap.isEmpty()) {
//				return messageMap;
//			}
//
//			Member member = new Member(null, memberId, password);
//			try {
//				rService.save(member);
//			} catch (RuntimeException ex) {
//				messageMap.put("fail", "帳號已經存在，請更換帳號");
//			} catch (Exception ex) {
//				messageMap.put("fail", ex.getMessage());
//			}
//
//			//  依照企業邏輯運算的結果送回適當的訊息
//			messageMap.put("success", "新增成功");
//			return messageMap;
//		}
//



