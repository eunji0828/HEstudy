package com.study.hestudy.common.model;

import lombok.Getter;
import lombok.Setter;

@Getter //getter 메소드 생성 
@Setter //setter 메소드 생성
public class HeMemverVO {

	private int member_num;  		// 회원 번호
	private String member_id;		// 회원 아이디
	private String member_pw;		// 회원 비밀번호
	private String member_name;		// 회원 이름
	private String member_email;	// 회원 이메일
	private String member_phone;	// 회원 폰번호
	private String member_address;	// 회원 주소
	private String member_birth;	// 회원 생일
	private String member_gender;	// 회원 성별
	private String member_join;		// 회원 가입일
	private String memeber_leave;	// 회원 탈퇴일
	
	
}
