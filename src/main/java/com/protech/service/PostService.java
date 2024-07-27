package com.protech.service;

import java.util.Map;

import com.protech.persistence.model.Post;
import com.protech.web.dto.PostDto;

import jakarta.servlet.http.HttpSession;

public interface PostService {

	void save(Post post);

	void delete(Long postId);

	void update(Post post);

	Post findById(Long id);

	Post createNewPost(PostDto newPostForm, HttpSession session);

	int deletePostAndComments(Long postId);

	Map<String, Object> findPosts();

	Map<String, Object> findPostsByPage(int currPage, int pageSize);

	Map<String, Object> findPostsListByCategoryByPage(String categoryName, int currPage, int pageSize);

	Map<String, Object> findPostDetailsAndCommentsByPostId(Long postId);

	Map<String, Object> findPostsBetweenDateRange(String start, String end);

	Map<String, Object> findPostsListBySearch(String searchKey, int currPage, int pageSize);

}
