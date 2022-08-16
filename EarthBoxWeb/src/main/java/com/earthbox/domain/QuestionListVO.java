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
	private String q_title;
	private String user_id;
	private String user_nick;
	private String q_answer;
	private String user_type;
 
}
