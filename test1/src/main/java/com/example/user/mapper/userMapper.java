package com.example.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.user.model.UserVo;



@Mapper
public interface userMapper {

	public List<UserVo> UserList();
	
	public UserVo readUser (String dg_user_id);
	
	public List<String> readAuthority(String dg_user_id);
	
	//20.08.31 유진
	public int overlapName(UserVo vo);
	
	public void insertUserAuthority(String dg_user_id);
	
	// 20.09.01 유진 회원가입
	public void UserSignUp(UserVo vo);
}
