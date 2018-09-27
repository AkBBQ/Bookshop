package com.shop.mapper;

import java.util.List;

import com.shop.model.LargeClass;
import com.shop.model.SmallClass;

public interface SmallClassMapper {

	List<SmallClass> queryAll();//查询所有大类
	List<SmallClass> querySmallname(String name);//根据大类的名字查询对应小类的名字
	void add(SmallClass smallClass);//增加一个大类
	void del(int id);//删除大类
	void update(SmallClass smallClass);//编辑大类
	SmallClass queryById(int id);//编辑大类的时候根据id来传值
}
