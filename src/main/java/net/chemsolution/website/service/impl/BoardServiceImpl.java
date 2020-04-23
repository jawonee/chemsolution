package net.chemsolution.website.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.chemsolution.website.dao.BoardDao;
import net.chemsolution.website.dao.CommentDao;
import net.chemsolution.website.dto.BoardDto;
import net.chemsolution.website.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDao boardDao;
	@Autowired
	CommentDao commentDao;

	@Override
	public int getCount(String catName) {
		return boardDao.getCount(catName);
	}

	@Override
	public List<BoardDto> getBoardList(String catName, int page, String key, String value) {
		return boardDao.selectBoardList(catName, page, key, value);
	}

	@Override
	public BoardDto getBoardItem(int boradNo) {
		return boardDao.selectBoardItem(boradNo);
	}

	@Override
	public int submitQuestion(BoardDto question) {
		return boardDao.insertQuestion(question);
	}

	@Override
	@Transactional
	public int deleteBoardItem(int boradNo) {
		commentDao.deleteComment(boradNo);
		return boardDao.deleteBoardItem(boradNo);

	}

	@Override
	public int modifyBoardItem(BoardDto question) {
		return boardDao.updateBoardItem(question);
	}
}
