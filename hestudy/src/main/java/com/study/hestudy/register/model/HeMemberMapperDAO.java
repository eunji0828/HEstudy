package com.study.hestudy.register.model;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
//mybatis 설정으로 인해 mapper 어노테이션으로 더 수월하게 db 접근
public interface HeMemberMapperDAO {

	// 회원 정보 db 전달
	void siguUpInsert(HeMemberVO heMemberVo) throws Exception;

	
	
}
