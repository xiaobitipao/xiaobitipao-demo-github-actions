package com.xiaobitipao.xiaobitipaodemogithubactions.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {

    @GetMapping("/greet/{username}")
    public String greet(@PathVariable(value = "username") String username) {
        return String.format("Hello, %s", username);
    }
}
