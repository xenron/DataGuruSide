package com.youfan.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping(value = "/ribbonCli")
public class RibbonCliControl {
    /**
     * 注入RestTemplate
     */
    @Autowired
    RestTemplate restTemplate;


    @RequestMapping(value = "/ribbontest" ,method = RequestMethod.GET)
    public String ribbontest(){
        String url="http://RIBBON/ribbonTest";
        return restTemplate.getForObject(url,String.class);
    }

}
