package net.chemsolution.website.service;

import net.chemsolution.website.dto.CommentDto;

public interface CommentService {
	public int writeComment(CommentDto comment);
	public int deleteComment(int boradId);
	public CommentDto getComment(int boradId);
}
