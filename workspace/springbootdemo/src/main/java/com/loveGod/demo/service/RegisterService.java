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

		

}