package net.chemsolution.website.dao;

import static net.chemsolution.website.dao.DaoSqls.DELETE_BOARD_ITEM;
import static net.chemsolution.website.dao.DaoSqls.SELECT_BOARD_ITEM;
import static net.chemsolution.website.dao.DaoSqls.SELECT_BOARD_LIST;
import static net.chemsolution.website.dao.DaoSqls.SELECT_COUNT;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import net.chemsolution.website.dto.BoardDto;
import net.chemsolution.website.service.BoardService;

@Repository
public class BoardDao {
	private NamedParameterJdbcTemplate jdbc;
	private SimpleJdbcInsert insertAction;
	private RowMapper<BoardDto> rowMapper = BeanPropertyRowMapper.newInstance(BoardDto.class);

	public BoardDao(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
		this.insertAction = new SimpleJdbcInsert(dataSource).withTableName("board").usingGeneratedKeyColumns("id");
	}

	public int getCount(String catName) {
		Map<String, Object> params = new HashMap<>();
		params.put("catName", catName);
		return jdbc.queryForObject(SELECT_COUNT, params, Integer.class);
	}

	public List<BoardDto> selectBoardList(String catName, int page) {
		Map<String, Object> params = new HashMap<>();
		params.put("catName", catName);
		params.put("from", (page - 1) * BoardService.LIMIT);
		params.put("count", BoardService.LIMIT);
		return jdbc.query(SELECT_BOARD_LIST, params, rowMapper);
	}

	public BoardDto selectBoardItem(int boardNo) {
		Map<String, ?> params = Collections.singletonMap("boardNo", boardNo);
		return jdbc.queryForObject(SELECT_BOARD_ITEM, params, rowMapper);
	}
	
	public int deleteBoardItem(int boardNo) {
		Map<String, ?> params = Collections.singletonMap("boardNo", boardNo);
		return jdbc.update(DELETE_BOARD_ITEM, params);
	}

	public void insertQuestion(BoardDto question) {
		question.setAnswerFlag(0);
		SqlParameterSource param = new BeanPropertySqlParameterSource(question);
		insertAction.execute(param);
	}
}
