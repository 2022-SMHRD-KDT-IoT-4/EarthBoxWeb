package com.earthbox.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuestionVO {

	private String q_content;
	private String q_date;
	private String q_file;
	private int q_seq;
	private String q_title;
	private String user_id;
}
