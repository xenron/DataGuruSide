package com.youfan.service;

import com.youfan.entity.ProductInfo;
import com.youfan.entity.ProductTypeInfo;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@FeignClient(value = "youfands-producttype")
public interface ProductTypeService {

    @RequestMapping(value = "productOutType/list")
    public List<ProductTypeInfo> listAllProductType(@RequestParam(value = "parentId") long parentId);
}
