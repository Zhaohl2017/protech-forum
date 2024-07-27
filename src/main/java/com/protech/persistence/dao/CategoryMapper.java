package com.protech.persistence.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.protech.persistence.model.Category;

@Mapper
public interface CategoryMapper {

	Category findByName(String categoryName);

	int save(Category category);

	List<Category> findAll();

}
