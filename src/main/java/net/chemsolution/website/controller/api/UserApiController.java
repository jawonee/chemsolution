package net.chemsolution.website.controller.api;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.chemsolution.website.dto.UserDto;
import net.chemsolution.website.service.UserService;

@RestController
@RequestMapping(path = "/user")
public class UserApiController {
	@Autowired
	UserService userService;

	@PostMapping(value = "/auth")
	public Map<String, Boolean> checkUserInfo(@ModelAttribute UserDto loginUser, HttpSession session)
			throws IOException {
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		UserDto user = userService.getUserInfo(loginUser);
		if (user != null) {
			session.setAttribute("loginUser", user);
			map.put("result", true);
		} else {
			map.put("result", false);
		}
		return map;
	}

	@GetMapping(value = "/logout")
	public void LogoutUser(HttpSession session, HttpServletResponse response) throws IOException {
		session.removeAttribute("loginUser");
		response.sendRedirect("../");
	}

	@PostMapping
	public void registerUser(@ModelAttribute UserDto userDto, HttpServletResponse response) throws IOException {
		if (userService.submitUserInfo(userDto) == 1) {
			response.sendRedirect("success");
		}
	}
}
