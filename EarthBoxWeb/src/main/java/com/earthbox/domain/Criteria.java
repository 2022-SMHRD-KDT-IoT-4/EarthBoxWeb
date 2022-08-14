package com.earthbox.domain;

public class Criteria {
	// 게시글 조회 쿼리에 전달될 파라미터 담을 클래스

	// 현재 페이지 번호
	private int page;
	// 한 페이지 당 보여줄 게시글 갯수
	private int perPageNum;

	// 특정 페이지의 게시글 시작 번호, 게시글 시작 행 번호
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}

	public Criteria() {
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	// 페이지가 음수값이 되지 않도록
	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
		} else {
			this.page = page;
		}
	}

	// 페이지 당 보여줄 게시글 수 변하지 않도록
	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int pageCount) {
		int cnt = this.perPageNum;
		if (pageCount != cnt) {
			this.perPageNum = cnt;
		} else {
			this.perPageNum = pageCount;
		}
	}
	
	

}
