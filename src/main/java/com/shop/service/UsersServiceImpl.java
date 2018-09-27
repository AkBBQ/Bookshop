package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.mapper.UsersMapper;
import com.shop.model.Users;

@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	UsersMapper usersMapper;
	public Users LoginQuery(Users users) {
		
		return usersMapper.LoginQuery(users);
	}
	public void AddUsers(Users users) {
		usersMapper.AddUsers(users);
		
	}
	public List<Users> queryAll() {
		// TODO Auto-generated method stub
		return usersMapper.queryAll();
	}

}
