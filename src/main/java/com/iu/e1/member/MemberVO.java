package com.iu.e1.member;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String pw;	
	private String name;
	private String nickName;
	private String email;
	private String phone;
	private String address;
	private String role;
}
