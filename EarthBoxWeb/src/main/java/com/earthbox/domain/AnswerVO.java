package com.earthbox.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnswerVO {

	private String a_content;
	private String a_date;
	private int a_seq;
	private String admin_id;
	private int g_seq;
}
