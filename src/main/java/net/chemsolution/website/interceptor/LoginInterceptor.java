package net.chemsolution.website.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.chemsolution.website.dto.UserDto;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		if (request.getRequestURI().contains("board")) {
			UserDto loginUser = (UserDto) session.getAttribute("loginUser");
			if (loginUser == null) {
				session.setAttribute("prevPage", request.getRequestURL());
				response.sendRedirect("/website/login");
				return false;
			}
			return true;
		} else {
			if (session.getAttribute("prevPage") == null) {
				session.setAttribute("prevPage", request.getHeader("referer"));
			}
			return true;
		}
	}
}
