package com.earthbox.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.earthbox.domain.Criteria;
import com.earthbox.domain.QuestionListVO;
import com.earthbox.domain.QuestionVO;

@Mapper
public interface QnaMapper {
	
	// q&a 게시판 리스트 불러오기
	public List<QuestionListVO> qnaBoardList(Criteria cri);
	
	// q&a 게시판에 글 쓰기
	public int qnaBoardWrite(QuestionListVO vo);
	
	// 작성한 게시글 보기
	public QuestionListVO questionContentView(Integer q_seq);
	
	// 작성한 게시글 수정
	public int qnaBoardUpdate(QuestionVO vo);
	
	// 작성한 게시글 삭제
	public int qnaBoardDelete(Integer q_seq);
	
	// 게시글 검색
	public List<QuestionListVO> boardSearch(String search);

	// 답변 작성하기
	public int qnaAnswerWrite(QuestionListVO vo);

}
