package com.earthbox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class earthboxcontroller {
	
	@RequestMapping("/")
	public String f0() {
		System.out.println("초기화면 실행");
		return "index";
	}
	
	
	@RequestMapping("/faq.do")
	public String f1() {
		System.out.println("이용방법 실행");
		return "faq";
	}
	
	@RequestMapping("/qna.do")
	public String f2() {
		System.out.println("이용방법 실행");
		return "qna";
	}
	
	@RequestMapping("/streaming.do")
	public String f3() {
		System.out.println("이용방법 실행");
		return "streaming";
	}
}
