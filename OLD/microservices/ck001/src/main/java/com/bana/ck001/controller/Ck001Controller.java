package com.bana.ck001.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Ck001Controller {

	private static final String template = "Hello, %s!";

	@RequestMapping("/ck001/{name}")
	public String hello(@PathVariable("name")  String name) {
		return String.format("Welcome, %s!", name);
	}
}
