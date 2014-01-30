package edu.spitfire.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TreeController
{
	@RequestMapping("/tree/home")
	public String home(ModelMap model)
	{
		return "/sample/tree/home";
	}
}
