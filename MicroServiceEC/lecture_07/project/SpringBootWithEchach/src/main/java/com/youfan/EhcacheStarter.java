package com.youfan;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;


@SpringBootApplication
@EnableEurekaClient
// 启用缓存注解
@EnableCaching
public class EhcacheStarter {


    public static void main(String[] args) {

        SpringApplication.run(EhcacheStarter.class,args);
    }
}
