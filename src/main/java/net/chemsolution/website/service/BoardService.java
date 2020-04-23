package net.chemsolution.website.service;

import java.util.List;

import net.chemsolution.website.dto.BoardDto;

public interface BoardService {
	public static final Integer LIMIT = 10;
	public int getCount(String catName);
	public List<BoardDto> getBoardList(String catName, int page, String key, String value);
	public BoardDto getBoardItem(int boradNo);
	public int modifyBoardItem(BoardDto question);
	public int deleteBoardItem(int boradNo);
	public int submitQuestion(BoardDto question);
}
