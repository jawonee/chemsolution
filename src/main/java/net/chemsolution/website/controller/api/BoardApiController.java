//package net.chemsolution.website.controller.api;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import net.chemsolution.website.dto.BoardDto;
//import net.chemsolution.website.dto.UserDto;
//import net.chemsolution.website.service.BoardService;
//
//@RestController
//@RequestMapping(path = "/test")
//public class BoardApiController {
//	@Autowired
//	BoardService boardService;
//
//	@GetMapping(value = "/list/{category}")
//	public List<BoardDto> getBoard(@PathVariable("category") Integer categoryId) {
//		return boardService.getBoardList(categoryId);
//	}
//
//	@PutMapping(value = "/submit")
//	public void submitQuestion(@ModelAttribute BoardDto question, HttpSession session, HttpServletResponse res)
//			throws IOException {
//		UserDto loginUser = (UserDto) session.getAttribute("loginUser");
//		question.setMemberId(loginUser.getId());
//		boardService.submitQuestion(question);
//		res.sendRedirect("board");
//	}
//}
