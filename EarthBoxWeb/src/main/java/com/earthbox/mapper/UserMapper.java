package com.earthbox.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.earthbox.domain.QuestionVO;
import com.earthbox.domain.UserVO;


@Mapper
public interface UserMapper {
	
	// 로그인
	@Select("select * from user_tb where user_id = #{user_id}")
	public UserVO loginUser(UserVO vo);
	

}
