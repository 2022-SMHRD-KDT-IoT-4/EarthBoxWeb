package com.earthbox.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.earthbox.domain.Criteria;
import com.earthbox.domain.PageMaker;
import com.earthbox.domain.QuestionListVO;
import com.earthbox.domain.QuestionVO;
import com.earthbox.domain.UserVO;
import com.earthbox.mapper.QnaMapper;
import com.earthbox.mapper.UserMapper;

@Controller
public class earthboxcontroller {
	@Autowired
	UserMapper u_mapper;
	@Autowired
	QnaMapper q_mapper;

	@RequestMapping("/index.do")
	public String f0() {
		System.out.println("초기화면 실행");
		return "index";
	}

	// login 폼 페이지
	@RequestMapping("/loginForm.do")
	public String loginForm() {
		System.out.println("loginForm.do 진입");
		return "loginForm";
	}

	// login 기능
	@PostMapping("/login.do")
	public String login(UserVO vo, HttpSession session) throws Exception {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		System.out.println("로그인 페이지 진입");
		System.out.println(vo.getUser_id());
		if (u_mapper.loginUser(vo) != null) {
			UserVO result = u_mapper.loginUser(vo);
			System.out.println("로그인 확인" + result);

			// 암호키를 복호화 함
			encoder.matches(vo.getUser_pw(), result.getUser_pw());
			if (encoder.matches(vo.getUser_pw(), result.getUser_pw())) {
				session.setAttribute("user_id", result.getUser_id());
				System.out.println("My model: " + session.getAttribute("user_id"));
				return "redirect:/index.do";
			} else {
				return "redirect:/loginForm.do";
			}
		}
		return "redirect:/loginForm.do";

	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index.do";
	}

	// Q&A 게시판 실행(게시글 리스트 불러오기)
	@RequestMapping("/qnaBoard.do")
	// Criteria = 현재 페이지 번호 / 페이지 당 보여줄 게시글 수가 담긴 객체
	public String qnaBoardList(HttpSession session, Model model, Criteria cri) throws Exception {
		System.out.println("q&a 게시판 실행");
		String user_id = (String) session.getAttribute("user_id");

		PageMaker pagemaker = new PageMaker();
		pagemaker.setCri(cri);
		pagemaker.setTotalCount(100);

		List<QuestionListVO> list = q_mapper.qnaBoardList(cri);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pagemaker);
		System.out.println("게시판 출력 : " + list);
		
		session.setAttribute("user_id", user_id);

		return "qna";
	}

	// Q&A 게시글 작성하기 위한 폼으로 이동
	@RequestMapping("/qnaWriteForm.do")
	public String qnaForm(HttpSession session) {
		String user_id = (String) session.getAttribute("user_id");
		int q_seq = (Integer)session.getAttribute("q_seq");
		session.setAttribute("user_id", user_id);
		return "qnaForm";
	}

	// Q&A 게시글 작성
	@RequestMapping("/questionWrite.do")
	public String writeQuestion(HttpSession session, QuestionListVO vo) {
		String user_id = (String) session.getAttribute("user_id");
		
		vo.setUser_id(user_id);
		
		q_mapper.qnaBoardWrite(vo);
		System.out.println(vo);
		
		session.setAttribute("user_id", user_id);
		return "redirect:/qnaBoard.do";
	}

	// Q&A 답변 작성하기 위한 폼으로 이동
	@RequestMapping("/answerWriteForm.do")
	public String answerForm(HttpSession session, HttpServletRequest request) {
		System.out.println("답변 작성 페이지");
		// admin만 답변할 수 있도록 한다
		int q_seq = (Integer)session.getAttribute("q_seq");
		System.out.println(q_seq);
		
		session.setAttribute("q_seq", q_seq);

		return "answerForm";
	}

	// Q&A 답변 작성
	@RequestMapping("/answerWrite.do")
	public String writeAnswer(HttpSession session, QuestionListVO vo) {
		System.out.println("답변 작성");
		String user_id = (String) session.getAttribute("user_id");
		System.out.println(user_id);
		
		int row = 0;
		row = q_mapper.qnaAnswerWrite(vo);
		
		session.setAttribute("user_id", user_id);
		
		return "redirect:/questionContentView.do?q_seq=" + vo.getQ_seq();
	}

	// 작성한 게시글 보기
	@RequestMapping("/questionContentView.do")
	public String questionContentView(HttpSession session, Model model, Integer q_seq) {
		System.out.println("게시글 보기 페이지 진입");
		String user_id = (String) session.getAttribute("user_id");

		QuestionListVO vo = q_mapper.questionContentView(q_seq);
		model.addAttribute("vo", vo);
		session.setAttribute("user_id", user_id);
		session.setAttribute("q_seq", q_seq);

		return "qnaContent";
	}


	
	// 게시글 수정 Form으로 이동
	@GetMapping("/questionUpdate.do")
	public String questionUpdateForm(HttpSession session, Model model, Integer q_seq) {
		String user_id = (String) session.getAttribute("user_id");

		QuestionListVO vo = q_mapper.questionContentView(q_seq);
		model.addAttribute("vo", vo);
		session.setAttribute("user_id", user_id);

		return "qnaUpdate";
	}

	// 작성한 게시글 수정
	@PostMapping("/questionUpdate.do")
	public String questionUpdate(HttpSession session, QuestionVO vo) {
		String user_id = (String) session.getAttribute("user_id");

		int row = 0;
		row = q_mapper.qnaBoardUpdate(vo);
		session.setAttribute("user_id", user_id);

		return "redirect:/questionContentView.do?q_seq=" + vo.getQ_seq();

	}

	// 작성한 게시글 삭제
	@RequestMapping("/questionDelete.do")
	public String questionDelete(HttpSession session, Integer q_seq) {
		String user_id = (String) session.getAttribute("user_id");

		q_mapper.qnaBoardDelete(q_seq);
		session.setAttribute("user_id", user_id);

		return "redirect:/qnaBoard.do";
	}

	// 게시글 검색
	@RequestMapping("/qnaSearch.do")
	public @ResponseBody List<QuestionListVO> qnaSearch(String search) {
		System.out.println(search);
		search = "%" + search + "%";
		List<QuestionListVO> list = q_mapper.boardSearch(search);

		System.out.println(list);
		return list;
	}

	@RequestMapping("/event.do")
	public String f1() {
		System.out.println("이용방법 실행");
		return "event";
	}

	@RequestMapping("/streaming.do")
	public String f3() {
		System.out.println("이용방법 실행");
		return "streaming";
	}
}
