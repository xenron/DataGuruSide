package com.youfan.control;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Ribbon2Test {

    @RequestMapping("ribbonTest")
    public String ribbonTest(){
        System.out.println("ribbon2");
        return "ribbon2";
    }
}
