package kr.company.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

//JSON STRING으로 넘겨줌
@RestController
public class HelloController {

	@RequestMapping("/hello")
	public String hello() {
		return "hello SpringBoot~";
	}
	
	
	
}
