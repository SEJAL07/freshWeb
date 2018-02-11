package com.web.shoppingbackend.test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.web.shoppingbackend.dao.CategoryDAO;
import com.web.shoppingbackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.web.shoppingbackend");
		context.refresh();
		
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");	
	}
	
	@Test
	public void testAddCategory() {
		category = new Category();
		category.setName("Earrings");
		category.setDescription("this is inside eaRRINGS");
		category.setImageURL("img_1.png");
		
		assertEquals
	}
}
