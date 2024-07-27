package com.protech.service;

import com.protech.persistence.model.Comment;
import com.protech.web.dto.CommentDto;

import jakarta.servlet.http.HttpSession;

public interface CommentService {

	void save(Comment comment);

	int countNumCommentsByPostId(Long postId);

	Comment createNewCommentOnPost(Long postId, CommentDto newCommentForm, HttpSession session);

}
