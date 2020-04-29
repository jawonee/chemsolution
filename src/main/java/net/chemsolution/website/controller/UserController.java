package net.chemsolution.website.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.chemsolution.website.dto.UserDto;
import net.chemsolution.website.service.UserService;

@Controller
@RequestMapping(path = "/user")
public class UserController {
	@Autowired
	UserService userService;

	@GetMapping(path = { "/join", "/success", "/login" })
	String showNonUserPage(HttpServletRequest res, HttpSession session) {
		String requestPath = res.getServletPath();
		if (session.getAttribute("loginUser") != null) {
			return "redirect:/";
		} else if (requestPath.contains("join")) {
			return "user/userForm";
		} else {
			return requestPath;
		}
	}

	@GetMapping(path = "/profile")
	String showLoginUserPage(HttpSession session) {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/user/login";
		} else {
			return "user/userForm";
		}
	}

	@GetMapping(value = "/logout")
	public String logoutUser(HttpSession session, HttpServletResponse response) {
		session.invalidate();
		return "redirect:../";
	}

	@PostMapping
	public String registerUser(@ModelAttribute UserDto userDto, HttpSession session) {
		userDto.setTel(userDto.getTel1(), userDto.getTel2(), userDto.getTel3());
		userService.submitUserInfo(userDto);
		return "redirect:/user/success";
	}

	@PutMapping
	public String modifyUserInfo(@ModelAttribute UserDto userDto, HttpSession session) {
		userDto.setTel(userDto.getTel1(), userDto.getTel2(), userDto.getTel3());
		session.setAttribute("loginUser", userService.modifyUserInfo(userDto));
		return "redirect:/user/profile";
	}

	@GetMapping(value = "/withdraw")
	public String withdrawUser(HttpSession session) {
		UserDto loginUser = (UserDto) session.getAttribute("loginUser");
		userService.withdrawUser(loginUser.getId());
		session.invalidate();
		return "redirect:../";
	}
}
