package com.example.mvc.service;

import java.util.Map;

import com.example.mvc.dto.Member;

public interface MemberService {

	Map<String, Object> join(Map<String, Object> param);

	Member getMemberByLoginId(String loginId);

	Member getMemberById(int Id);

}
