package com.protech.service;

import java.util.Map;

import com.protech.web.dto.PostDto;
import com.protech.web.dto.UserDto;

public interface DashboardService {

	Map<String, Object> getDashboard(String tab, String start, String end);

	Map<String, Object> getPostEditJson(Long postId);

	Map<String, Object> editPost(PostDto newPostForm);

	Map<String, Object> getNumOfPostsByCategoriesForPieChart();

	Map<String, Object> getNumOfPostsByMonthForBarChart();

	Map<String, Object> getUserEditJson(Long postId);

	Map<String, Object> editUser(UserDto userForm);

}
