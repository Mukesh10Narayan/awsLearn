package com.it.awsLearn.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class testController {

    @GetMapping("/hello")
    public String hello() {
        System.out.println("LOGGER");
        return "Hello World";
    }

    @GetMapping("/m")
    public String m() {
        System.out.println("LOGGER");
        return "Hello ";
    }

    @GetMapping()
    public String n() {
        System.out.println("LOGGER");
        return "Hello ";
    }

}
