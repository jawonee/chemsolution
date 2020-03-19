package net.chemsolution.website.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.chemsolution.website.dao.BoardDao;
import net.chemsolution.website.dto.BoardDto;
import net.chemsolution.website.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDao boardDao;

	@Override
	public int getCount(String catName) {
		return boardDao.getCount(catName);
	}
	
	@Override
	public List<BoardDto> getBoardList(String catName, int page) {
		return boardDao.selectBoardList(catName, page);
	}

	@Override
	public void submitQuestion(BoardDto question) {
		boardDao.insertQuestion(question);
	}
}
