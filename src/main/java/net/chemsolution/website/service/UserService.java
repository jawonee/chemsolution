package net.chemsolution.website.service;

import net.chemsolution.website.dto.UserDto;

public interface UserService {
	public UserDto getUserInfo(UserDto loginUser);
	public int submitUserInfo(UserDto nerUser);
}
