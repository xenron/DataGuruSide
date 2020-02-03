package com.youfan.control;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Ribbon1Test {

    @RequestMapping("ribbonTest")
    public String ribbonTest(){
        System.out.println("ribbon1");
        return "ribbon1";
    }
}
