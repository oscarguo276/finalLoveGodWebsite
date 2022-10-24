package com.loveGod.demo.model;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
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
	
	// =================================== 修改使用者 ==================================
	// ======= 顯示使用者資料 =========
	@Query("select r from RegisterModel r where r.memberId = ?1 and r.password = ?2 ")
	public List<RegisterModel> viewUser(String MemberId, String Password);
	// ======= 更新使用者資料 =========
	@Modifying
	@Query("UPDATE RegisterModel r Set r.name = ?1, r.sex = ?2 , r.birthday = ?3, "
			+ "r.phone = ?4, r.mail = ?5, r.address = ?6, r.mach = ?7, "
			+ "r.age = ?8, r.text = ?9, r.line = ?10, r.ig = ?11 "
			+ "where r.memberId = ?12 and r.password = ?13")
	public int updateUser(String name, String sex, Date birthday, 
			String phone, String mail, String address, String mach, 
			int age, String text, String line, String ig, 
			String MemberId, String Password);
	
}
