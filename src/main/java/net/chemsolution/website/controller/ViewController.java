package net.chemsolution.website.controller;

import javax.servlet.http.HttpSession;

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

	@GetMapping(path = { "/product", "/product/{name}" })
	String showProductsPage(@PathVariable(name = "name", required = false) String name) {
		if (name == null) {
			return "redirect:/product/s2_1";
		} else {
			return "product/" + name;
		}
	}

	@GetMapping(path = "/prevPage")
	String showPrevPage(HttpSession session) {
		try {
			String prevPage = session.getAttribute("prevPage").toString();
			session.removeAttribute("prevPage");
			if (prevPage.contains("join")) {
				return "redirect:/";
			}
			return "redirect:" + prevPage;
		} catch (NullPointerException e) {
			return "redirect:/";
		}
	}
}
