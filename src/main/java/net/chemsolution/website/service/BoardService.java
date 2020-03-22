package net.chemsolution.website.service;

import java.util.List;

import net.chemsolution.website.dto.BoardDto;

public interface BoardService {
	public static final Integer LIMIT = 10;
	public int getCount(String catName);
	public List<BoardDto> getBoardList(String catName, int page);
	public BoardDto getBoardItem(int boradNo);
	public int deleteBoardItem(int boradNo);
	public void submitQuestion(BoardDto question);
}
