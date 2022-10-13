package com.loveGod.demo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loveGod.demo.model.RegisterDao;
import com.loveGod.demo.model.RegisterModel;

	@Transactional
	@Service
	public class RegisterService {

		@Autowired
		private RegisterDao rDao;
		
	//----------- 新增 -------------------
		public RegisterModel insertRegister(RegisterModel reg) {
			return rDao.save(reg);
		}
	//----------- 確認資料庫是否存在此帳戶，有就登入.... -------------------		
		public RegisterModel findLogin(RegisterModel reg) {
			return rDao.findLogin(reg.getMemberId(), reg.getPassword());
		}
		
	
//		public RegisterModel login(RegisterModel reg) {
//			// 檢查帳號是否存在
//			RegisterModel data = rDao.findRegisterModelByMemberId(reg.getMemberId());
//			if(data == null) return null;
//			return data;
//		}
		
		//----------- 確認帳戶是否重複.... -------------------	
		
		
		
}