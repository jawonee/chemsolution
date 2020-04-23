package net.chemsolution.website.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.chemsolution.website.dto.CommentDto;
import net.chemsolution.website.dto.UserDto;
import net.chemsolution.website.service.CommentService;

@Controller
@RequestMapping(path = "/board")
public class CommentController {
	@Autowired
	CommentService commentService;

	@PostMapping(value = { "/article/{boardNo}/comment/write" })
	public String writeComment(@ModelAttribute CommentDto comment, @PathVariable("boardNo") int boardNo,
			HttpSession session) {
		UserDto writer = (UserDto) session.getAttribute("loginUser");
		comment.setMemberId(writer.getId());
		comment.setBoardId(boardNo);
		if (commentService.writeComment(comment) == 1) {
			return "redirect:../../" + boardNo;
		} else {
			return "error";
		}
	}

	@GetMapping(value = { "/article/{boardNo}/comment/delete" })
	public String deleteComment(@PathVariable("boardNo") int boardNo) {
		if (commentService.deleteComment(boardNo) == 1) {
			return "redirect:../../" + boardNo;
		} else {
			return "error";
		}
	}
}
