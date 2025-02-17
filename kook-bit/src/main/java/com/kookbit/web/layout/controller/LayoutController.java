package com.kookbit.web.layout.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LayoutController {
	
	@RequestMapping(value="/web/layout")
	public String layout(Model model) {
		model.addAttribute("title", "layout");
		return "/layout/layout";
	}

	@RequestMapping(value="/web/include")
	public String include(Model model) {
		model.addAttribute("title", "include");
		return "/layout/include";
	}
	
	@RequestMapping(value="/web/header")
	public String header(Model model) {
		return "/layout/header";
	}
	
	@RequestMapping(value="/web/side")
	public String side() {
		return "/layout/side";
	}
	
	@RequestMapping(value="/web/footer")
	public String footer() {
		return "/layout/footer";
	}
}
