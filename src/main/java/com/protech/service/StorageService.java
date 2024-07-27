package com.protech.service;

import org.springframework.web.multipart.MultipartFile;

import com.protech.persistence.model.User;

public interface StorageService {

	void init();

	User store(MultipartFile file, String path);

	void deleteAll();

}