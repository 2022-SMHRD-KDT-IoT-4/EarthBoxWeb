package com.earthbox.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuestionListVO {

	private int q_seq;
	private String q_content;
	private String q_date;
	private String q_file;
	private String q_title;
	private String user_id;
	private String user_nick;
	/** 원글번호, 답변을 단 원래 글(부모글)의 번호, 여기서는 q_Seq가 되며 원글의 경우 본인의 q_Seq값을 가진다. **/
    private int groupNo;
    
    /** 원글과 답글(과 답글의 답글)들은 groupNo로 묶일것이다. 이것을 하나의 그룹으로 봤을때 그룹내의 순서를 의미한다 **/
    private int groupOrd;
 
}
