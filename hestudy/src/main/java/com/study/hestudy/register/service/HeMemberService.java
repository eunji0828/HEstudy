package com.study.hestudy.register.service;

import com.study.hestudy.register.model.HeMemberVO;

public interface HeMemberService {
	
	// 회원 정보 db 전달
	void signUpInsert(HeMemberVO heMemberVo) throws Exception;

}
