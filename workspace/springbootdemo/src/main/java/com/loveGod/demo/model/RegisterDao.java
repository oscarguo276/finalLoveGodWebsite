package com.loveGod.demo.model;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.Query;

public interface RegisterDao extends JpaRepository<RegisterModel, Long> {

	//================================== 使用者登入判斷帳密是否正確 ========================
	@Query("select r from RegisterModel r where r.memberId = ?1 and r.password = ?2 ")
	RegisterModel findLogin(String memberId, String password);

}
