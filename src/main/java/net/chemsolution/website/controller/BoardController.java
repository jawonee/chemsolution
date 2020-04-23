package net.chemsolution.website.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.chemsolution.website.dto.BoardDto;
import net.chemsolution.website.dto.CommentDto;
import net.chemsolution.website.dto.UserDto;
import net.chemsolution.website.service.BoardService;
import net.chemsolution.website.service.CommentService;

@Controller
@RequestMapping(path = "/board")
public class BoardController {
	@Autowired
	BoardService boardService;
	@Autowired
	CommentService commentService;

	@GetMapping(value = { "/{catName}" })
	public String getBoardList(@PathVariable("catName") String catName,
			@RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "search_key", required = false) String key,
			@RequestParam(name = "search_value", required = false) String value, ModelMap model) {
		List<BoardDto> boardList = boardService.getBoardList(catName, page, key, value);
		/* paging */
		int count = boardService.getCount(catName);
		int pageCount = count / BoardService.LIMIT;
		if (count % BoardService.LIMIT > 0) {
			pageCount++;
		}
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("presentPage", page);
		return "board/board";
	}

	@PostMapping(value = { "/submit" })
	public String submitQuestion(@ModelAttribute BoardDto question, HttpSession session) throws IOException {
		UserDto loginUser = (UserDto) session.getAttribute("loginUser");
		question.setMemberId(loginUser.getId());
		question.setAnswerFlag(0);
		int boardId = boardService.submitQuestion(question);
		return "redirect:/board/article/" + boardId;
	}

	@GetMapping(value = { "/article/{boardNo}" })
	public String getBoardItem(@PathVariable("boardNo") int boardNo, HttpServletRequest req, ModelMap model) {
		model.addAttribute("boardItem", boardService.getBoardItem(boardNo));
		CommentDto comment = commentService.getComment(boardNo);
		if (comment != null) {
			model.addAttribute("comment", commentService.getComment(boardNo));
		}
		return "board/boardItem";
	}

	@GetMapping(value = { "/article/{boardNo}/delete" })
	public String deleteBoardItem(@PathVariable("boardNo") int boardNo) {
		boardService.deleteBoardItem(boardNo);
		return "redirect:/board";
	}

	@GetMapping(value = { "/article/{boardNo}/modify" })
	public String showBoardModifyPage(@PathVariable("boardNo") int boardNo, ModelMap model) {
		model.addAttribute("boardItem", boardService.getBoardItem(boardNo));
		return "board/boardWrite";
	}

	@PutMapping(value = { "/submit" })
	public String modifyBoardItem(@ModelAttribute BoardDto question) {
		boardService.modifyBoardItem(question);
		return "redirect:/board/article/" + question.getId();
	}
}
