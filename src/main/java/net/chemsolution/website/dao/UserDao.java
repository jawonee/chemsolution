package net.chemsolution.website.dao;

import static net.chemsolution.website.dao.DaoSqls.SELECT_USER_ID;
import static net.chemsolution.website.dao.DaoSqls.SELECT_USER_INFO;

import java.util.Collections;
import java.util.HashMap;
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

import net.chemsolution.website.dto.UserDto;

@Repository
public class UserDao {
	private NamedParameterJdbcTemplate jdbc;
	private SimpleJdbcInsert insertAction;
	private RowMapper<UserDto> rowMapper = BeanPropertyRowMapper.newInstance(UserDto.class);

	public UserDao(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
		this.insertAction = new SimpleJdbcInsert(dataSource).withTableName("member");
	}

	public boolean selectUserId(String id) {
		Map<String, String> params = Collections.singletonMap("id", id);
		if (jdbc.queryForObject(SELECT_USER_ID, params, Integer.class) == 1) {
			return true;
		} else {
			return false;
		}
	}

	public UserDto selectUserInfo(UserDto loginUser) {
		Map<String, String> params = new HashMap<>();
		params.put("id", loginUser.getId());
		params.put("pw", loginUser.getPassword());
		try {
			return jdbc.queryForObject(SELECT_USER_INFO, params, rowMapper);
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	public int insertUserInfo(UserDto newUser) {
		newUser.setGrade(0);
		newUser.setDeleteFlag(0);
		SqlParameterSource param = new BeanPropertySqlParameterSource(newUser);
		return insertAction.execute(param);
	}
}
