package net.chemsolution.website.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.chemsolution.website.dao.BoardDao;
import net.chemsolution.website.dao.CommentDao;
import net.chemsolution.website.dto.CommentDto;
import net.chemsolution.website.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	CommentDao commentDao;
	@Autowired
	BoardDao boardDao;

	@Override
	@Transactional
	public int writeComment(CommentDto comment) {
		boardDao.updateAnswerFlag(comment.getBoardId());
		return commentDao.insertComment(comment);
	}

	@Override
	public List<CommentDto> getComment(int boardNo) {
		return commentDao.selectComment(boardNo);
	}
}
