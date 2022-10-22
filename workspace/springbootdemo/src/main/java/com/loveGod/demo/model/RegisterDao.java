package com.loveGod.demo.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.Query;

public interface RegisterDao extends JpaRepository<RegisterModel, Integer> {

	// ================================== 使用者登入判斷帳密是否正確 ========================
	@Query("select r from RegisterModel r where r.memberId = ?1 and r.password = ?2 ")
	List<RegisterModel> findLogin(String memberId, String password);

	@Query("select r from RegisterModel r where r.memberId = ?1 ")
	List<RegisterModel> findMemberId(String memberId);
	
	
	
	@Query(value="from RegisterModel r where r.sex = 1")
	public List<RegisterModel> findCustomerBoy();
	@Query(value="from RegisterModel r where r.sex = 0")
	public List<RegisterModel> findCustomerGirl();
	
	

}
