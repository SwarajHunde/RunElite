package com.runfast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    // Root URL
    @GetMapping("/")
    public String root() {
        return "Home";
    }

    // Explicit home URL
    @GetMapping("/Home")
    public String home() {
        return "Home";
    }
}
