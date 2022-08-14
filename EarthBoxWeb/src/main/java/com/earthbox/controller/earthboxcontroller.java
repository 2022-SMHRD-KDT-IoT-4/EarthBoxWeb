package com.earthbox.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("/logoutService.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main.do";
	}
	
	// Q&A 게시판 실행(게시글 리스트 불러오기)
	@RequestMapping("/qnaBoard.do")
	public String qnaBoardList(HttpSession session, Model model) {
		System.out.println("q&a 게시판 실행");
		String user_id = (String) session.getAttribute("user_id");
		
		List<QuestionVO> list = q_mapper.qnaBoardList();
		model.addAttribute("list", list);
		System.out.println(list);
		session.setAttribute("user_id", user_id);
		
		return "qna";
	}
	
	// Q&A 게시글 작성하기 위한 폼으로 이동
	@RequestMapping("/qnaWriteForm.do")
	public String qnaForm(HttpSession session) {
		String user_id = (String) session.getAttribute("user_id");
		session.setAttribute("user_id", user_id);
		return "qnaForm";
	}
	
	// Q&A 게시글 작성
	@RequestMapping("/questionWrite.do")
	public String writeQuestion(HttpSession session, QuestionVO vo) {
		String user_id = (String) session.getAttribute("user_id");
		
		vo.setUser_id(user_id);
		q_mapper.qnaBoardWrite(vo);
		session.setAttribute("user_id", user_id);
		return "redirect:/qnaBoard.do";
	}
	
	// 작성한 게시글 보기
	@RequestMapping("/questionContentView.do")
	public String questionContentView(HttpSession session, Model model, Integer q_seq) {
		System.out.println("게시글 보기 페이지 진입");
		String user_id = (String) session.getAttribute("user_id");
		
		QuestionVO vo = q_mapper.questionContentView(q_seq);
		model.addAttribute("vo", vo);
		
		return "qnaContent";
	}

	
	
	
	
	
	
	@RequestMapping("/faq.do")
	public String f1() {
		System.out.println("이용방법 실행");
		return "faq";
	}


	@RequestMapping("/streaming.do")
	public String f3() {
		System.out.println("이용방법 실행");
		return "streaming";
	}
}
