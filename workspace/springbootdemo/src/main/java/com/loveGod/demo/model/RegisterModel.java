package com.loveGod.demo.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity								//可不打預設值為類別名稱
@Table(name = "MemberMainTable")	//可不打預設值為類別名稱
//public class RegisterModel implements Serializable {
public class RegisterModel {
//	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer Id; 
	private String memberId;   			// 帳號
	private String password;   			// 密碼
	private String name;				// 姓名
	private String sex;					// 性別
	@Temporal(TemporalType.DATE)
	private Date birthday;	// 生日	
	private String phone;     			// 電話
	private String mail;     			// 信箱
	private String address;     		// 地址
	private String mach;     			// 是否開啟配對
	private java.sql.Timestamp registerDate;	// 會員登錄日期
	
	public RegisterModel() {
	}



	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) throws ParseException {
		System.out.print(birthday);
		Date birthday_Date = new SimpleDateFormat("yyyy-MM-dd").parse(birthday);  

		this.birthday = birthday_Date;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMach() {
		return mach;
	}

	public void setMach(String mach) {
		this.mach = mach;
	}

	public java.sql.Timestamp getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(java.sql.Timestamp registerDate) {
		this.registerDate = registerDate;
	}

//	public RegisterModel(String memberId, String password, String name, String sex, Date birthday, String phone,
//			String mail, String address, String mach, Timestamp registerDate) {
//		super();
//		this.memberId = memberId;
//		this.password = password;
//		this.name = name;
//		this.sex = sex;
//		this.birthday = birthday;
//		this.phone = phone;
//		this.mail = mail;
//		this.address = address;
//		this.mach = mach;
//		this.registerDate = registerDate;
//	}
//
//	public String getMemberId() {
//		return memberId;
//	}
//
//	public void setMemberId(String memberId) {
//		this.memberId = memberId;
//	}
//
//	public String getPassword() {
//		return password;
//	}
//
//	public void setPassword(String password) {
//		this.password = password;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//	public String getSex() {
//		return sex;
//	}
//
//	public void setSex(String sex) {
//		this.sex = sex;
//	}
//
//	public java.util.Date getBirthday() {
//		return birthday;
//	}
//
//	public void setBirthday(java.util.Date birthday) {
//		this.birthday = birthday;
//	}
//
//	public String getPhone() {
//		return phone;
//	}
//
//	public void setPhone(String phone) {
//		this.phone = phone;
//	}
//
//	public String getMail() {
//		return mail;
//	}
//
//	public void setMail(String mail) {
//		this.mail = mail;
//	}
//
//	public String getAddress() {
//		return address;
//	}
//
//	public void setAddress(String address) {
//		this.address = address;
//	}
//
//	public String getMach() {
//		return mach;
//	}
//
//	public void setMach(String mach) {
//		this.mach = mach;
//	}
//
//	public java.sql.Timestamp getRegisterDate() {
//		return registerDate;
//	}
//
//	public void setRegisterDate(java.sql.Timestamp registerDate) {
//		this.registerDate = registerDate;
//	}


	
	
	
}