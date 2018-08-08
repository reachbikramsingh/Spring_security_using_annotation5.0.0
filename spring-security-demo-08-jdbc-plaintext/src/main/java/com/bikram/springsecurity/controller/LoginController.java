package com.bikram.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showMyLginPage() {
		return "fancy-login";

	}

	@GetMapping("/access-denied")
	public String accessDeniedPage() {
		return "access-denied-page";
	}

}
