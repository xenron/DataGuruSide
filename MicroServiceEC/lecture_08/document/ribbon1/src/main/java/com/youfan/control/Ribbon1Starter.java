package com.youfan.control;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class Ribbon1Starter {

    public static void main(String[] args) {

        SpringApplication.run(Ribbon1Starter.class,args);
    }
}
