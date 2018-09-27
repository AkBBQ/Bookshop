package com.shop.mapper;

import java.util.List;

import com.shop.model.LargeClass;

public interface LargeClassMapper {

	List<LargeClass> queryAll();//查询所有大类
	void add(LargeClass largeClass);//增加一个大类
	void del(int id);//删除大类
	void update(LargeClass largeClass);//编辑大类
	LargeClass queryById(int id);//编辑大类的时候根据id来传值
}
