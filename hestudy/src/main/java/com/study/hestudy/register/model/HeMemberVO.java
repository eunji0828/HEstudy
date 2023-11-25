package com.study.hestudy.register.model;

import lombok.Getter;
import lombok.Setter;

@Getter //getter 메소드 생성 
@Setter //setter 메소드 생성
public class HeMemberVO {

	private int member_num;  		// 회원 번호
	private String member_id;		// 회원 아이디
	private String member_pw;		// 회원 비밀번호
	private String member_name;		// 회원 이름
	private String member_nickName; // 회원 닉네임
	private String member_email;	// 회원 이메일
	private String member_phone;	// 회원 폰번호
	private String member_address;	// 회원 주소
	private String member_birth;	// 회원 생일
	private String member_gender;	// 회원 성별
	private String member_join;		// 회원 가입일
	private String memeber_leave;	// 회원 탈퇴일
	
	
	@Override
	public String toString() {
		return "HeMemberVO [member_num=" + member_num + ", member_id=" + member_id + ", member_pw=" + member_pw
				+ ", member_name=" + member_name + ", member_nickName=" + member_nickName + ", member_email="
				+ member_email + ", member_phone=" + member_phone + ", member_address=" + member_address
				+ ", member_birth=" + member_birth + ", member_gender=" + member_gender + ", member_join=" + member_join
				+ ", memeber_leave=" + memeber_leave + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

	
	
}
