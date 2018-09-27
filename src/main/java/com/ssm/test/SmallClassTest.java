package com.ssm.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shop.mapper.SmallClassMapper;
import com.shop.model.SmallClass;;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class SmallClassTest {


@Autowired
SmallClassMapper smallClassMapper;

	@Test
	public void QueryAll(){
		System.out.println("测试查询全部");
		
	List<SmallClass> smallClasses=smallClassMapper.queryAll( );
            for(SmallClass smallClass:smallClasses){
            	System.out.println(smallClass);
            }	    
	}
	
}	
	
	

	
