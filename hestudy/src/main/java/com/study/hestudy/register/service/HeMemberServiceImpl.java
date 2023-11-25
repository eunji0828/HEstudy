package com.study.hestudy.register.service;

import org.springframework.stereotype.Service;

import com.study.hestudy.register.model.HeMemberMapperDAO;
import com.study.hestudy.register.model.HeMemberVO;

@Service
public class HeMemberServiceImpl implements HeMemberService {

	private final HeMemberMapperDAO dao;
	
	public HeMemberServiceImpl(HeMemberMapperDAO dao) {
		this.dao = dao;
	}
	
	// 회원 정보 db 전달
	@Override
	public void signUpInsert(HeMemberVO heMemberVo) throws Exception {
		dao.siguUpInsert(heMemberVo);
		
	}

}
