package com.earthbox.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.earthbox.domain.QuestionVO;
import com.earthbox.domain.UserVO;


@Mapper
public interface QnaMapper {
	
	// q&a 게시판 리스트 불러오기
	@Select("select q_seq, q_title, user_id, q_date from question_tb")
	public List<QuestionVO> qnaBoardList();
	
	// q&a 게시판에 글 쓰기
	@Insert("insert into question_tb (q_title, q_content, q_date, q_file, user_id) values (#{q_title}, #{q_content}, now(), #{q_file}, #{user_id})")
	public int qnaBoardWrite(QuestionVO vo);
	
	// 작성한 게시글 보기
	@Select("select * from question_tb where q_seq=#{q_seq}")
	public QuestionVO questionContentView(Integer q_seq);

}
