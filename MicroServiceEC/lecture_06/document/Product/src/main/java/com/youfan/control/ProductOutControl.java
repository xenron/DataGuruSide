package com.youfan.control;

import com.youfan.entity.ProductDetail;
import com.youfan.entity.ProductInfo;
import com.youfan.service.ProductService;
import com.youfan.vo.ConstomProductInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("productOut")
public class ProductOutControl {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "queryAll",method = RequestMethod.GET)
    public List<ProductInfo> queryAll(@RequestParam long productTypeid){
        if (productTypeid == -1){
            productTypeid = 4L;
        }
        ConstomProductInfo constomProductInfo = new ConstomProductInfo();
        constomProductInfo.setProducttypeid(productTypeid);
        List<ProductInfo> list = productService.queryByVo(constomProductInfo);
        return list;
    }









}
