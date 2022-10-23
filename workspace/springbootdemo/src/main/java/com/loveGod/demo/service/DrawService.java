package com.loveGod.demo.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.loveGod.demo.model.DonationModel;
import com.loveGod.demo.model.DrawlotsDao;
import com.loveGod.demo.model.DrawlotsModel;
import com.loveGod.demo.model.RegisterDao;
import com.loveGod.demo.model.RegisterModel;

	@Transactional
	@Service
	public class DrawService {

		@Autowired
		private DrawlotsDao dDao;
		

		//查
		public Optional<DrawlotsModel> findById(DrawlotsModel rM) {
			return dDao.findById(rM.getDrawId());
		}
		//查全部
		public List<DrawlotsModel> findAllMember() {
			return dDao.findAll();
		}
		public Page<DrawlotsModel> findByPage(Integer pageNumber){
			org.springframework.data.domain.Pageable pgb = PageRequest.of(pageNumber-1,10,Sort.Direction.DESC,"DrawId");
			Page<DrawlotsModel> page = dDao.findAll(pgb);
			return page;
		}
		//增
		public DrawlotsModel insertlots(DrawlotsModel rM) {
			return dDao.save(rM);
		}
		//刪
		public void deleteById(Integer id) {
			dDao.deleteById(id);
		}
		public DrawlotsModel findByIntegerId(Integer id) {
			
			Optional<DrawlotsModel> optional = dDao.findById(id);
			if(optional.isPresent()) {
				return optional.get();
			}
			return null;
		}
	
		
		
		
		//查
//		public DrawlotsModel findById(DrawlotsModel rM) {
//			Optional<DrawlotsModel> optional = dDao.findById(rM);
//			
//			if(optional.isPresent()) {
//				return optional.get();
//			}
//			return null;
//		}

		

		

}