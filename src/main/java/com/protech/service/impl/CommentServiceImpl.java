package com.protech.service.impl;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.protech.persistence.dao.CommentMapper;
import com.protech.persistence.dao.PostMapper;
import com.protech.persistence.dao.UserMapper;
import com.protech.persistence.model.Comment;
import com.protech.persistence.model.Post;
import com.protech.persistence.model.User;
import com.protech.service.CommentService;
import com.protech.web.dto.CommentDto;

import jakarta.servlet.http.HttpSession;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

	@Autowired
	private PostMapper postMapper;

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private CommentMapper commentMapper;

	@Override
	public void save(Comment comment) {
		Post post = this.postMapper.findById(comment.getPostId());
		post.setCommentCount(post.getCommentCount() == null ? 1 : post.getCommentCount() + 1);
		this.postMapper.update(post);
		this.commentMapper.save(comment);
	}

	@Override
	public int countNumCommentsByPostId(Long postId) {
		return this.commentMapper.countNumCommentsByPostId(postId);
	}

	@Override
	public Comment createNewCommentOnPost(Long postId, CommentDto newCommentForm, HttpSession session) {
		// find user from session | 25/7/2024
		String isLoggedIn = (String) session.getAttribute("MY_SESSION_LOGIN");
		User user = (User) session.getAttribute("MY_SESSION_USER");
		if (!"1".equals(isLoggedIn)) {
			// find authenticated user
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String username = auth.getName();
			user = this.userMapper.findByUsername(username);
		}
		// construct new comment
		Comment comment = new Comment();
		comment.setPostId(postId);
		comment.setBody(newCommentForm.getComment());
		comment.setUser(user);
		comment.setDateCreated(new Timestamp(System.currentTimeMillis()));
		return comment;
	}

}
