package com.earthbox.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {
	
	// 회원 정보 vo
	
	@NonNull
	private String user_id;
	@NonNull
	private String user_pw;
	private String user_nick;
	private String user_nm;
	private String user_birthdate;
	private String user_email;
	private String user_addr;
	private String user_joindate;
	private String user_type;
	private int user_point;
	
}
