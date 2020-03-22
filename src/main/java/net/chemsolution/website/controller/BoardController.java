package net.chemsolution.website.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.chemsolution.website.dto.BoardDto;
import net.chemsolution.website.dto.UserDto;
import net.chemsolution.website.service.BoardService;

@Controller
@RequestMapping(path = "/board")
public class BoardController {
	@Autowired
	BoardService boardService;
	
	@GetMapping(value =  {"/{catName}"} )
	public String getBoard(@PathVariable("catName") String catName, @RequestParam(name = "page", defaultValue = "1") int page,
			HttpServletRequest req, HttpSession session,ModelMap model) {
		List<BoardDto> boardList = boardService.getBoardList(catName, page);
		// paging
		int count = boardService.getCount(catName);
		int pageCount = count / BoardService.LIMIT;
		if (count % BoardService.LIMIT > 0) {
			pageCount++;
		}
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageCount", pageCount);

		return "board";
	}
	
	@PostMapping(value = "/submit")
	public void submitQuestion(@ModelAttribute BoardDto question, HttpSession session, HttpServletResponse res)
			throws IOException {
		UserDto loginUser = (UserDto) session.getAttribute("loginUser");
		question.setMemberId(loginUser.getId());
		boardService.submitQuestion(question);
		res.sendRedirect("../board");
	}

}
