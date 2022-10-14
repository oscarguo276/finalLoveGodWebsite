package com.loveGod.demo.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.loveGod.demo.model.RegisterDao;
import com.loveGod.demo.model.RegisterModel;

@Transactional
@Service
public class MemberManagementService {
	
	@Autowired
	private RegisterDao rDao;
	
	public List<RegisterModel> findAllMember() {
		return rDao.findAll();
	}
	
	public RegisterModel insert(RegisterModel reg) {
		return rDao.save(reg);
		
	}
	
	public RegisterModel findById(Integer id) {
		Optional<RegisterModel> optional = rDao.findById(id);
		if(optional.isPresent()) {
			return optional.get();
		}
		return null;
			
	}
	
	public Page<RegisterModel> findByPage(Integer pageNumber){
		org.springframework.data.domain.Pageable pgb = PageRequest.of(pageNumber-1,10,Sort.Direction.DESC,"registerDate");
		Page<RegisterModel> page = rDao.findAll(pgb);
		return page;
	}
	
	public void deleteById(Integer id) {
		rDao.deleteById(id);
	}
	
//	public List<RegisterModel> findByIdLike(Integer id){
//		return rDao.findByIdLike(id);
//	}
	
	

}
