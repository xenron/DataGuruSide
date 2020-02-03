package com.youfan.control;

import com.youfan.service.CacheServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "ehcache")
public class EhcacheControl {

    @Autowired
    private CacheServiceImpl cacheService;

    @RequestMapping("testquery")
    public String queryById(String id){
        return cacheService.queryById(id);
    }

    @RequestMapping("testupdate")
    public String updateById(String id){
        return cacheService.updateById(id);
    }
}
