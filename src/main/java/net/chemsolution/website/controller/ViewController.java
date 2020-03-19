package net.chemsolution.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewController {
	@GetMapping(path = "/about")
	String showAboutUsPage() {
		return "about";
	}

	@GetMapping(path = "/product")
	String showProductPage() {
		return "product";
	}

	@GetMapping(path = "/contact")
	String showContactUsPage() {
		return "contact";
	}

	@GetMapping(path = "/board")
	String showCommunityPage() {
		 return "redirect:/board/notice";
	}
	
	@GetMapping(path = "/join")
	String showJoinPage() {
		return "join";
	}
	@GetMapping(path = "/success")
	String showSuccessPage() {
		return "success";
	}
	@GetMapping(path = "/login")
	String showLoginPage() {
		return "login";
	}
	@GetMapping(path = "/boardWrite")
	String showBoardPage() {
		return "boardWrite";
	}
}
