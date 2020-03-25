package net.chemsolution.website.controller.api;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.chemsolution.website.dto.CommentDto;
import net.chemsolution.website.dto.UserDto;
import net.chemsolution.website.service.CommentService;

@RestController
@RequestMapping(path = "/board")
public class CommentApiController {
	@Autowired
	CommentService commentService;

	@GetMapping(value = { "/*/{boardNo}/comment" })
	public List<CommentDto> getComment(@PathVariable("boardNo") int boardNo) {
		return commentService.getComment(boardNo);
	}

	@PostMapping(value = { "/*/{boardNo}/comment/write" })
	public boolean writeComment(@ModelAttribute CommentDto comment, @PathVariable("boardNo") int boardNo,
			HttpSession session) {
		UserDto loginUser = (UserDto) session.getAttribute("loginUser");
		comment.setMemberId(loginUser.getId());
		comment.setBoardId(boardNo);
		return (commentService.writeComment(comment) == 1 ? true : false);

	}
}
