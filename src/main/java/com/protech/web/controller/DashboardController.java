package com.protech.web.controller;

import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.protech.exception.BadRequestException;
import com.protech.exception.ResourceNotFoundException;
import com.protech.persistence.model.User;
import com.protech.service.DashboardService;
import com.protech.service.PostService;
import com.protech.service.UserService;
import com.protech.web.dto.PostDto;
import com.protech.web.dto.UserDto;

import jakarta.servlet.http.HttpSession;

@Controller
public class DashboardController {

	private static final Logger logger = LoggerFactory.getLogger(DashboardController.class);

	@Autowired
	private PostService postService;

	@Autowired
	private DashboardService dashboardService;

	@Autowired
	private UserService userService;

	@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String getDashboardPage(Model model, @RequestParam(value = "tab", required = false) String tab,
			@RequestParam(value = "start", required = false) String start,
			@RequestParam(value = "end", required = false) String end,
			@Valid @ModelAttribute("userForm") UserDto userForm,
			HttpSession session) {
		Map<String, Object> attributes = this.dashboardService.getDashboard(tab, start, end);
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		model.addAllAttributes(attributes);
		model.addAttribute("tab", tab);
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		// Added on 25/7/2024
		String isLoggedIn = (String) session.getAttribute("MY_SESSION_LOGIN");
		User user = (User) session.getAttribute("MY_SESSION_USER");
		model.addAttribute("isLoggedIn", isLoggedIn);
		model.addAttribute("user", user);
		if ("users".equals(tab)) {
			attributes = this.userService.findUsers();
			model.addAllAttributes(attributes);
		}
		return "forum/dashboard";
	}

	/*
	 * return JSON object
	 */
	@PreAuthorize("hasAuthority('ADMIN')")
	@ResponseBody
	@RequestMapping(value = "/post/{postId}/json", method = RequestMethod.GET, produces = "application/json")
	public ResponseEntity<Map<String, Object>> getPostJson(@PathVariable Long postId) {
		if (null == postId) {
			return ResponseEntity.badRequest().build();
		}
		Map<String, Object> attributes = this.dashboardService.getPostEditJson(postId);
		if (null == attributes) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.accepted().body(attributes);
	}

	@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value = "/post/edit", method = RequestMethod.POST)
	public String processPostEdit(@Valid @ModelAttribute("newPostForm") PostDto newPostForm,
			@RequestParam(value = "tab", required = false) String tab,
			@RequestParam(value = "start", required = false) String start,
			@RequestParam(value = "end", required = false) String end, BindingResult bindingResult, Model model,
			RedirectAttributes redirectAttributes) {
		if (null == newPostForm) {
			throw new BadRequestException("newPostForm cound not be null.");
		}
		Map<String, Object> attributes = this.dashboardService.editPost(newPostForm);
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		model.addAllAttributes(attributes);
		// directly add attribute to redirected URL
		redirectAttributes.addFlashAttribute("editResult", "success");
		return "redirect:/dashboard?tab=" + tab + "&start=" + start + "&end=" + end;
	}

	@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value = "/post/{postId}", method = RequestMethod.DELETE)
	public ResponseEntity<?> deletePost(@PathVariable Long postId) {
		if (null == postId) {
			throw new BadRequestException("Path variable postId cound not be null.");
		}
		int rowAffected = this.postService.deletePostAndComments(postId);
		logger.info("Deleted postId = " + postId + " ; rowAffected = " + rowAffected);
		if (0 == rowAffected) {
			return ResponseEntity.badRequest().build();
		}
		return ResponseEntity.ok().build();
	}

	@RequestMapping(value = "/dashboard/numOfPostsByCategories", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getNumsOfPostsByCategories() {
		Map<String, Object> attributes = this.dashboardService.getNumOfPostsByCategoriesForPieChart();
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		return ResponseEntity.ok().body(attributes);
	}

	@RequestMapping(value = "/dashboard/numOfPostsByMonths", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getNumsOfPostsBymonths() {
		Map<String, Object> attributes = this.dashboardService.getNumOfPostsByMonthForBarChart();
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		return ResponseEntity.ok().body(attributes);
	}

	/*
	 * return JSON object: User
	 */
	@PreAuthorize("hasAuthority('ADMIN')")
	@ResponseBody
	@RequestMapping(value = "/user/{userId}/json", method = RequestMethod.GET, produces = "application/json")
	public ResponseEntity<Map<String, Object>> getUserJson(@PathVariable Long userId) {
		if (null == userId) {
			return ResponseEntity.badRequest().build();
		}
		Map<String, Object> attributes = this.dashboardService.getUserEditJson(userId);
		if (null == attributes) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.accepted().body(attributes);
	}

	@PreAuthorize("hasAuthority('ADMIN')")
	@RequestMapping(value = "/user/edit", method = RequestMethod.POST)
	public String processUserEdit(@Valid @ModelAttribute("userForm") UserDto userForm,
			@RequestParam(value = "tab", required = false) String tab,
			@RequestParam(value = "start", required = false) String start,
			@RequestParam(value = "end", required = false) String end, BindingResult bindingResult, Model model,
			RedirectAttributes redirectAttributes) {
		if (null == userForm) {
			throw new BadRequestException("userForm cound not be null.");
		}
		Map<String, Object> attributes = this.dashboardService.editUser(userForm);
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		model.addAllAttributes(attributes);
		// directly add attribute to redirected URL
		redirectAttributes.addFlashAttribute("editResult", "success");
		return "redirect:/dashboard?tab=" + tab + "&start=" + start + "&end=" + end;
	}

}
