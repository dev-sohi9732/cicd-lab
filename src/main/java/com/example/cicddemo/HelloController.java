package com.example.cicddemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

@GetMapping("/")
public String hello() {
    return "Hello CI/CD - v1";
}

@GetMapping("/health")
public String health() {
    return "OK";
}

}
