package net.chemsolution.website.service;

import java.util.List;

import net.chemsolution.website.dto.CommentDto;

public interface CommentService {
	public int writeComment(CommentDto comment);
	public List<CommentDto> getComment(int boardNo);
}
