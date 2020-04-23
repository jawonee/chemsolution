package net.chemsolution.website.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.chemsolution.website.dao.UserDao;
import net.chemsolution.website.dto.UserDto;
import net.chemsolution.website.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	
	@Override
	public boolean checkIdDuplicatie(String id) {
		return userDao.selectUserId(id);
	}

	@Override
	public UserDto getUserInfo(UserDto loginUser) {
		return userDao.selectUserInfo(loginUser);
	}

	@Override
	public int submitUserInfo(UserDto newUser) {
		return userDao.insertUserInfo(newUser);

	}
}
