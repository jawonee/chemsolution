package net.chemsolution.website.controller.api;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletResponse;
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

	@PostMapping(value = "/login/authCheck")
	public boolean checkUserInfo(@ModelAttribute UserDto loginUser, HttpSession session, HttpServletResponse res)
			throws IOException {
		UserDto user = userService.getUserInfo(loginUser);
		if (user != null) {
			session.setAttribute("loginUser", user);
			return true;
		} else {
			return false;
		}
	}

//	@GetMapping(value = "/join/duplicateCheck")
//	public boolean CheckIdDuplicate(@RequestParam("id") String id) {
//		return userService.checkIdDuplicatie(id);
//	}

	@PostMapping(value = "/join/validCheck") // , produces = "text/json;charset=UTF-8")
	public Map<String, Object> validateInputValue(@RequestBody Map<String, String> input) {

		String key = input.get("key");
		String value = input.get("value");
		String idValid = "^[A-Za-z0-9]{4,16}$";
		String pValid = "^[A-Za-z0-9]{4,16}$";
		String nValid = "^[가-힣]{2,10}$";
		String tValid = "^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-([0-9]{3,4})-([0-9]{4})$";
		String eValid = "^([0-9a-zA-Z_\\.-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}$";

		Map<String, Object> map = new HashMap<String, Object>();
		switch (key) {
		case "id":
			if (userService.checkIdDuplicatie(value)) {
				map.put("msg", "이미 사용중인 아이디 입니다.");
			} else {
				if (!Pattern.compile(idValid).matcher(value).matches()) {
					map.put("msg", "영문소문자/숫자, 4~16자");
				}
			}
			break;
		case "password":
			if (!Pattern.compile(pValid).matcher(value).matches()) {
				map.put("msg", "영문소문자/숫자, 4~16자");
			}
			break;
		case "name":
			if (!Pattern.compile(nValid).matcher(value).matches()) {
				map.put("msg", "한글 2~10자");
			}
			break;
		case "tel":
			if (!Pattern.compile(tValid).matcher(value).matches()) {
				map.put("msg", "010 - ***(*) - **** 형식");
			}
			break;
		case "email":
			if (!Pattern.compile(eValid).matcher(value).matches()) {
				map.put("msg", "***@***.*** 형식");
			}
			break;
		}
		if (map.get("msg") == null) {
			map.put("msg", "");
			map.put("src", "img/approved.png");
		} else {
			map.put("src", "img/non_approved.png");
		}
		return map;

		/*
		 * switch (key) { case "id": if (userService.checkIdDuplicatie(value)) { return
		 * "이미 사용중인 아이디 입니다."; } else { if
		 * (!Pattern.compile(idValid).matcher(value).matches()) { return
		 * "영문소문자/숫자, 4~16자"; } else { return "사용 가능한 아이디 입니다."; } } case "password": if
		 * (!Pattern.compile(pValid).matcher(value).matches()) { return
		 * "영문소문자/숫자, 4~16자"; } break; case "name": if
		 * (!Pattern.compile(nValid).matcher(value).matches()) { return "한글 2~10자"; }
		 * break; case "tel": if (!Pattern.compile(tValid).matcher(value).matches()) {
		 * return "010 - ***(*) - **** 형식"; } break; case "email": if
		 * (!Pattern.compile(eValid).matcher(value).matches()) { return
		 * "***@***.*** 형식"; } break; } return null;
		 */
	}
}
