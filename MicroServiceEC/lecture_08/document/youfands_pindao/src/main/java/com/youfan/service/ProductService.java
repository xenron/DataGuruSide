package com.youfan.service;

import com.youfan.entity.ProductInfo;
import com.youfan.entity.ProductTotal;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@FeignClient(value = "youfands-product")
public interface ProductService {

    @RequestMapping(value = "productOut/queryAll",method = RequestMethod.GET)
    public List<ProductInfo> queryAll(@RequestParam(value = "productTypeid") long productTypeid);
    @RequestMapping(value = "productOut/findById",method = RequestMethod.GET)
    public ProductTotal findById(@RequestParam(value = "productId") long productId);
}
