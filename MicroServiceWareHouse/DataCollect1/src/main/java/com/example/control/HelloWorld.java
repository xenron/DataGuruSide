package com.example.control;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorld {

    @RequestMapping("helloWorld")
    public String  helloWorld(){
        return "HelloWorld-1";
    }

    @RequestMapping(value = "testCollectData", method = RequestMethod.POST)
    public String  testCollectData(@RequestBody String data){
        System.out.println("Test-1 :" + data);
        return "success";
    }
}