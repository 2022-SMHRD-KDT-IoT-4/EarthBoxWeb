package com.earthbox.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.earthbox.domain.Criteria;
import com.earthbox.domain.QuestionListVO;
import com.earthbox.domain.QuestionVO;


@Mapper
public interface QnaMapper {
	
	// q&a 게시판 리스트 불러오기
	// pageStart : 특정 페이지 첫 번째 게시글 행
	// perPageNum : 한 페이지 당 보여줄 게시글 개수
	@Select("select q.q_seq, q.q_title, u.user_nick, q.q_date from question_tb q, user_tb u where q.user_id = u.user_id order by q.q_date limit ${pageStart}, #{perPageNum}")
	public List<QuestionListVO> qnaBoardList(Criteria cri);
	
	// q&a 게시판에 글 쓰기
	@Insert("insert into question_tb (q_title, q_content, q_date, q_file, user_id) values (#{q_title}, #{q_content}, now(), #{q_file}, #{user_id})")
	public int qnaBoardWrite(QuestionListVO vo);
	
	// 작성한 게시글 보기
	@Select("select q.q_seq, q.q_title, q.q_file, q.q_content, q.q_date, u.user_nick from question_tb q, user_tb u where q.user_id = u.user_id and q.q_seq = #{q_seq}")
	public QuestionListVO questionContentView(Integer q_seq);
	
	// 작성한 게시글 수정
	@Update("update question_tb set q_title=#{q_title}, q_file=#{q_file}, q_content=#{q_content} where q_seq=#{q_seq}")
	public int qnaBoardUpdate(QuestionVO vo);
	
	// 작성한 게시글 삭제
	@Delete("delete from question_tb where q_seq=#{q_seq}")
	public int qnaBoardDelete(Integer q_seq);
	
	// 게시글 검색
	@Select("select * from question_tb where q_title like #{search}")
	public List<QuestionListVO> boardSearch(String search);

}
