package com.youfan.service;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Service
@CacheConfig(cacheNames = "YouFanCache")
public class CacheServiceImpl {

    @Cacheable(value = "YouFanCache",key = "#id")
    public String queryById(String id){
        System.out.println("queryById");
        return id;
    }

    @CachePut(value = "YouFanCache",key = "#id")
    public String updateById(String id){
        System.out.println("updateById");
        return id;
    }
}
