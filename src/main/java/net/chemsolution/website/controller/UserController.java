package net.chemsolution.website.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
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

	@GetMapping(value = "/logout")
	public String logoutUser(HttpSession session, HttpServletResponse response) {
		session.removeAttribute("loginUser");
		return "redirect:../";
	}

	@PostMapping
	public String registerUser(@ModelAttribute UserDto userDto, HttpSession session) {
		userService.submitUserInfo(userDto);
		return "redirect:/success";
	}

	@PutMapping
	public void modifyUserInfo(@ModelAttribute UserDto userDto, HttpSession session) {
		// Todo
	}

	@DeleteMapping
	public void withdrawUser(@ModelAttribute UserDto userDto, HttpSession session) {
		// Todo
	}
}
