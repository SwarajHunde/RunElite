package com.runfast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NavigationController {

    @GetMapping("/explore")
    public String explore() {
        return "explore"; // /WEB-INF/views/explore.jsp
    }

    @GetMapping("/events")
    public String events() {
        return "events"; // /WEB-INF/views/events.jsp
    }

    @GetMapping("/blog")
    public String blog() {
        return "blog"; // /WEB-INF/views/blog.jsp
    }
    @GetMapping("/contact")
    public String contact() {
        return "contact"; // /WEB-INF/views/contact.jsp
    }
}
