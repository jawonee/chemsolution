package net.chemsolution.website.controller.api;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.chemsolution.website.dto.UserDto;
import net.chemsolution.website.service.UserService;

@RestController
@RequestMapping(path = "/user")
public class UserApiController {
	@Autowired
	UserService userService;

	@PostMapping(value = "/authCheck")
	public boolean checkUserInfo(@ModelAttribute UserDto loginUser, HttpSession session) {
		UserDto user = userService.getUserInfo(loginUser);
		if (user != null) {
			session.setAttribute("loginUser", user);
			return true;
		} else {
			return false;
		}
	}

	@PostMapping(value = "/validCheck")
	public Map<String, Object> validateInputValue(@RequestBody Map<String, String> input) {
		String key = input.get("key");
		String value = input.get("value");
		String idReg = "^(?=.*[a-z])(?=.*[0-9])[a-z0-9]{4,16}$";
		String pwReg = "^(?=.*[a-z])(?=.*[0-9])[a-z0-9]{4,16}$";
		String nReg = "^[가-힣]{2,10}$";
		String tReg = "^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-([0-9]{3,4})-([0-9]{4})$";
		String eReg = "^([0-9a-zA-Z_\\.-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}$";

		Map<String, Object> map = new HashMap<String, Object>();
		switch (key) {
		case "id":
			if (userService.checkIdDuplicatie(value)) {
				map.put("msg", "이미 사용중인 아이디 입니다.");
			} else {
				if (!Pattern.compile(idReg).matcher(value).matches()) {
					map.put("msg", "영문소문자/숫자 조합, 4~16자");
				}
			}
			break;
		case "password":
			if (!Pattern.compile(pwReg).matcher(value).matches()) {
				map.put("msg", "영문소문자/숫자 조합, 4~16자");
			}
			break;
		case "name":
			if (!Pattern.compile(nReg).matcher(value).matches()) {
				map.put("msg", "한글, 2~10자");
			}
			break;
		case "tel":
			if (!Pattern.compile(tReg).matcher(value).matches()) {
				map.put("msg", "올바른 휴대전화 번호를 입력하세요.");
			}
			break;
		case "email":
			if (!Pattern.compile(eReg).matcher(value).matches()) {
				map.put("msg", "올바른 이메일을 입력하세요.");
			}
			break;
		}
//		if (map.get("msg") == null) {
//			map.put("msg", "");
//			map.put("src", "img/approved.png");
//		} else {
//			map.put("src", "img/non_approved.png");
//		}
		if (map.get("msg") == null) {
			map.put("msg", "");
			map.put("result", true);
		} else {
			map.put("result", false);
		}

		return map;
	}

	@PostMapping(value = "/passwordCheck")
	public Map<String, Object> checkPassword(@RequestBody Map<String, String> password) {
		Map<String, Object> map = new HashMap<String, Object>();
		String origin = password.get("origin");
		String check = password.get("check");
		if (check.equals(origin)) {
			map.put("msg", "");
		} else {
			map.put("msg", "비밀번호가 일치하지 않습니다.");
		}
		return map;
	}
}
