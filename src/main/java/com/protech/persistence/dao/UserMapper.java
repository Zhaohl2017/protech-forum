package com.protech.persistence.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.protech.persistence.model.User;

@Mapper
public interface UserMapper {

	int save(User user);

	int update(User user);

	List<User> findAll();

	User findById(Long id);

	User findByUsername(String username);

	User findByEmail(String email);

}
