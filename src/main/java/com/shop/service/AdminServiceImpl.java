package com.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.mapper.AdminMapper;
import com.shop.mapper.UsersMapper;
import com.shop.model.Admin;
import com.shop.model.Users;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminMapper adminMapper;

	public Admin Login(Admin admin) {
		// TODO Auto-generated method stub
		return adminMapper.Login(admin);
	}
	
	

}
