package net.chemsolution.website.service;

import net.chemsolution.website.dto.UserDto;

public interface UserService {
	public boolean checkIdDuplicatie(String id);
	public UserDto getUserInfo(UserDto loginUser);
	public int submitUserInfo(UserDto nerUser);
	public int withdrawUser(String id);
	public UserDto modifyUserInfo(UserDto userDto);
}
