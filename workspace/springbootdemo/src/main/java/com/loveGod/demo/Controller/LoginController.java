package com.loveGod.demo.Controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
//	@Autowired
//	private RegisterDao rDao;

	// jsp 分別為：login(登入)、register(註冊)、registerSuccess(註冊成功)

	// ================================== 登入頁面 ==================================
	@GetMapping("/login") 								// 網址http://localhost:8080/my-app/login
	public String login(HttpServletRequest request) {   // 進入方法(login)
		HttpSession session = request.getSession();
		Object memberId = session.getAttribute("memberId");
		if (memberId != null) { 						// 如果已有登入未登入
			return "redirect:index"; 					// 強制給我滾回來
		} else {
			return "login/login"; 						// 找 /login.jsp 顯示畫面：登入畫面
		}
	}

	// ================================== 登出頁面 ==================================
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) { // 進入方法(login)
		HttpSession session = request.getSession();
		session.removeAttribute("memberId");		   // 刪掉
		session.removeAttribute("password");
		return "redirect:index";
	}

	// ================================== 註冊頁面 ==================================
	@GetMapping("/register") 			// 網址http://localhost:8080/my-app/register
	public String register() { 			// 進入方法(register)
		return "login/register"; 		// 找 資料夾/register.jsp 顯示畫面：註冊畫面
	}
	
	// ================================== 註冊成功/失敗 ==================================

		// ------------ 生日換算成年齡 -------------------------//
	public int CalculateAge(Date Birthday) {
		// ------------ 當前年份 - 生日 = 年齡 ------------------//
		Calendar cal = Calendar.getInstance();
		Calendar bir = Calendar.getInstance();
		bir.setTime(Birthday);
		/* 取出當前年月日 */
		int yearNow = cal.get(Calendar.YEAR);
		int monthNow = cal.get(Calendar.MONTH);
		int dayNow = cal.get(Calendar.DAY_OF_MONTH);
		/* 取出出生年月日 */
		int yearBirth = bir.get(Calendar.YEAR);
		int monthBirth = bir.get(Calendar.MONTH);
		int dayBirth = bir.get(Calendar.DAY_OF_MONTH);
		/* 大概年齡是當前年減去出生年 */
		int age = yearNow - yearBirth;
		/* 如果出當前月小與出生月，或者當前月等於出生月但是當前日小於出生日，那麽年齡age就減一歲 */
		if (monthNow < monthBirth || (monthNow == monthBirth && dayNow < dayBirth)) {
			age--;
		}
		return age;
	}

	// ---------------------------------- 註冊成功畫面 -------------------------------------
//	@RequestMapping(value = "/registersubmit", method = RequestMethod.POST)
	@PostMapping("/registersubmit")
	public String registersubmit(@ModelAttribute(name = "registersubmit") RegisterModel rM, Model model) {

		List<RegisterModel> resultList = rService.findMemberId(rM);
		if (resultList.size() > 0) { 					 // 他有找到
//			System.out.println("帳號已經有重複的");
			model.addAttribute("Msg", "*帳號已經有重複的");
			return "login/register";
//			return "redirect:register";
		} else {
// ------- 資料傳到SQL -----------------------
			int age = CalculateAge(rM.getBirthday());    // 把生日放進 轉換成年齡的方法 裡面執行再把結果放變數裡面
			rM.setAge(age);				  				 // 放到年齡欄位裡面	
			rService.insertRegister(rM); 				 // 把資料放進去(插入)
//			RegisterModel r1 = new RegisterModel();	     // 資料表RegisterModel 	
//			model.addAttribute("registersubmit",r1);
			return "login/registerSuccess"; 			 //  顯示畫面：註冊成功畫面
		}
	}

	
	// ================================== 使用者登入：判斷帳密是否正確 ========================
	@PostMapping("/loginsubmit")
	public String loginsubmit(HttpServletRequest request, @ModelAttribute(name = "loginsubmit") RegisterModel rM,
			Model model) {
// ---- 資料傳到SQL ----------
		List<RegisterModel> resultList = rService.findLogin(rM);
		if (resultList.size() > 0) { 					 // 登入：不存在資料庫的帳密 => 帳密錯誤
			// 如果登入成功帳密存到Session
			// 第一步：获取session
			HttpSession session = request.getSession();
			// 第二步：将想要保存到数据存入session中
			session.setAttribute("memberId", resultList.get(0).getMemberId());	// 取得那欄位的帳號,從0(陣列)開始,放入session
			session.setAttribute("password", resultList.get(0).getPassword());
			// 这样就完成了用户名和密码保存到session的操作
			

			
			
			return "redirect:index"; 					// 正確返回首頁
		} else {
//			System.out.println("帳密錯誤!!");  	
			model.addAttribute("Msg", "*帳密錯誤!!");		// 畫面顯示：*帳密錯誤!!	
			return "login/login";						// 返回登入畫面
		}
	}
   
	//================================== 使用者登入：判斷是否是後臺管理人員帳密 ========================


	}
	
	
	
	
	
	
	
	
// 使用者修改介面
// 後台管理人員帳密


	
	
	
	
	
	
	
	
