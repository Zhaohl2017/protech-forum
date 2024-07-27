package com.protech.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.protech.service.PostService;

@Controller
public class SearchController {

    private static Integer pageSize = 10;

	@Autowired
	private PostService postService;

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String getSearchPostsByKey(@RequestParam String searchkey, Model model,
            @RequestParam(value = "p", required = false) Integer pageNum) {
        int currPage = pageNum == null ? 1 : pageNum;
		Map<String, Object> attributes = this.postService.findPostsListBySearch(searchkey, currPage, pageSize);
		model.addAllAttributes(attributes);
		return "forum/home";
	}

}
