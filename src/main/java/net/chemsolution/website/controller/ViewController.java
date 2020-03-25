package net.chemsolution.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ViewController {
	@GetMapping(path = "/about")
	String showAboutUsPage() {
		return "about";
	}

	@GetMapping(path = "/contact")
	String showContactUsPage() {
		return "contact";
	}

	@GetMapping(path = "/join")
	String showJoinPage() {
		return "user/join";
	}

	@GetMapping(path = "/success")
	String showSuccessPage() {
		return "user/success";
	}

	@GetMapping(path = "/login")
	String showLoginPage() {
		return "user/login";
	}

	@GetMapping(path = "/mypage")
	String showMyPage() {
		return "user/mypage";
	}

	@GetMapping(path = "/board")
	String showBoardPage() {
		return "redirect:/board/notice";
	}

	@GetMapping(path = "/boardWrite")
	String showBoardWritePage() {
		return "board/boardWrite";
	}

	@GetMapping(path = "/product")
	String showProductPage() {
		return "redirect:/product/s2_1";
	}

	@GetMapping(path = "/product/{name}")
	String showProductItemPage(@PathVariable("name") String name) {
		return "product/" + name;
	}
}
