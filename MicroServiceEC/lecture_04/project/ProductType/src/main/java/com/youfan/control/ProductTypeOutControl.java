package com.youfan.control;

import com.youfan.entity.ProductTypeInfo;
import com.youfan.service.ProductTypeService;
import com.youfan.vo.ConstomProductTypeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("productOutType")
public class ProductTypeOutControl {

    @Autowired
    private ProductTypeService productTypeService;

    @RequestMapping(value = "list")
    public List<ProductTypeInfo> listAllProductType(long parentId){
        ConstomProductTypeInfo constomProductTypeInfo = new ConstomProductTypeInfo();
        constomProductTypeInfo.setParentid(parentId);
        List<ProductTypeInfo> list = productTypeService.findProductTypeByVo(constomProductTypeInfo);
        return list;
    }


}
