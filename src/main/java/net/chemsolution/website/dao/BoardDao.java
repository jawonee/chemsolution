package net.chemsolution.website.dao;

import static net.chemsolution.website.dao.DaoSqls.DELETE_BOARD_ITEM;
import static net.chemsolution.website.dao.DaoSqls.SEARCH_BOARD_LIST_CONTENT;
import static net.chemsolution.website.dao.DaoSqls.SEARCH_BOARD_LIST_SUBJECT;
import static net.chemsolution.website.dao.DaoSqls.SEARCH_BOARD_LIST_USERID;
import static net.chemsolution.website.dao.DaoSqls.SELECT_BOARD_ITEM;
import static net.chemsolution.website.dao.DaoSqls.SELECT_BOARD_LIST;
import static net.chemsolution.website.dao.DaoSqls.SELECT_COUNT;
import static net.chemsolution.website.dao.DaoSqls.UPDATE_ANSWER_FLAG_OFF;
import static net.chemsolution.website.dao.DaoSqls.UPDATE_ANSWER_FLAG_ON;
import static net.chemsolution.website.dao.DaoSqls.UPDATE_BOARD_ITEM;

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

	public List<BoardDto> selectBoardList(String catName, int page, String key, String value) {
		Map<String, Object> params = new HashMap<>();
		params.put("catName", catName);
		params.put("from", (page - 1) * BoardService.LIMIT);
		params.put("count", BoardService.LIMIT);
		if (key != null) {
			String searchValue = "%" + value.toLowerCase().trim() + "%";
			params.put("value", searchValue);
			if (key.equals("subject")) {
				return jdbc.query(SEARCH_BOARD_LIST_SUBJECT, params, rowMapper);
			} else if (key.equals("content")) {
				return jdbc.query(SEARCH_BOARD_LIST_CONTENT, params, rowMapper);
			} else {
				return jdbc.query(SEARCH_BOARD_LIST_USERID, params, rowMapper);
			}
		} else {
			return jdbc.query(SELECT_BOARD_LIST, params, rowMapper);
		}
	}

	public BoardDto selectBoardItem(int boardNo) {
		Map<String, ?> params = Collections.singletonMap("boardNo", boardNo);
		return jdbc.queryForObject(SELECT_BOARD_ITEM, params, rowMapper);
	}

	public int updateBoardItem(BoardDto question) {
		Map<String, Object> params = new HashMap<>();
		params.put("id", question.getId());
		params.put("categoryId", question.getCategoryId());
		params.put("subject", question.getSubject());
		params.put("content", question.getContent());
		return jdbc.update(UPDATE_BOARD_ITEM, params);
	}

	public int deleteBoardItem(int boardNo) {
		Map<String, ?> params = Collections.singletonMap("boardNo", boardNo);
		return jdbc.update(DELETE_BOARD_ITEM, params);
	}

	public int insertQuestion(BoardDto question) {
		SqlParameterSource params = new BeanPropertySqlParameterSource(question);
		return insertAction.executeAndReturnKey(params).intValue();
	}

	public int onAnswerFlag(int boardNo) {
		Map<String, ?> params = Collections.singletonMap("boardNo", boardNo);
		return jdbc.update(UPDATE_ANSWER_FLAG_ON, params);
	}

	public int offAnswerFlag(int boardNo) {
		Map<String, ?> params = Collections.singletonMap("boardNo", boardNo);
		return jdbc.update(UPDATE_ANSWER_FLAG_OFF, params);
	}
}
