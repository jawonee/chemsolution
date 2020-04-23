package net.chemsolution.website.dao;

import static net.chemsolution.website.dao.DaoSqls.DELETE_COMMENT;
import static net.chemsolution.website.dao.DaoSqls.SELECT_COMMENT;

import java.util.Collections;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import net.chemsolution.website.dto.CommentDto;

@Repository
public class CommentDao {
	private NamedParameterJdbcTemplate jdbc;
	private SimpleJdbcInsert insertAction;
	private RowMapper<CommentDto> rowMapper = BeanPropertyRowMapper.newInstance(CommentDto.class);

	public CommentDao(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
		this.insertAction = new SimpleJdbcInsert(dataSource).withTableName("comment").usingGeneratedKeyColumns("id");
	}

	public int insertComment(CommentDto comment) {
		SqlParameterSource param = new BeanPropertySqlParameterSource(comment);
		return insertAction.execute(param);
	}

	public int deleteComment(int boardNo) {
		Map<String, ?> params = Collections.singletonMap("boardNo", boardNo);
		return jdbc.update(DELETE_COMMENT, params);
	}

	public CommentDto selectComment(int boardNo) {
		Map<String, ?> params = Collections.singletonMap("boardNo", boardNo);
		try {
			return jdbc.queryForObject(SELECT_COMMENT, params, rowMapper);
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
}
