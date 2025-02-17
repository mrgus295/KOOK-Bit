package com.kookbit.web.market.controller;

import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MarketController {

	private static final Logger logger = LoggerFactory.getLogger(MarketController.class);
	
	@RequestMapping(value = {"/web/market"}, method = RequestMethod.GET)
	public String market(Model model) {
		model.addAttribute("title", "market");
		model.addAttribute("UUID", UUID.randomUUID());
		return "/market/marketVw";
	}
}
