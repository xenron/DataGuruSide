package com.youfan.control;

import com.youfan.entity.ProductInfo;
import com.youfan.entity.ProductTypeInfo;
import com.youfan.service.ProductService;
import com.youfan.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("productlist")
public class ProductControl {

    @Autowired
    private ProductService productService;

    @Autowired
    private ProductTypeService productTypeService;

    @RequestMapping(value = "listProduct")
    public String listProductByTypeId(long productypeid, Model model){
        List<ProductInfo> list = productService.queryAll(productypeid);
        List<ProductTypeInfo> productTypeInfoList = productTypeService.listAllProductType(-1);
        model.addAttribute("list",list);
        model.addAttribute("typelist",productTypeInfoList);
        return "listProduct";

    }

    @RequestMapping(value = "/indexproduct")
    public String indexproduct(long productypeid, Model model){
        Map<ProductTypeInfo,List<ProductTypeInfo>> datamap = new HashMap<ProductTypeInfo,List<ProductTypeInfo>>();
        List<ProductTypeInfo> list = productTypeService.listAllProductType(-1);
        for(ProductTypeInfo productType:list){
            long parentid = productType.getId();
            List<ProductTypeInfo> innerlist = productTypeService.listAllProductType(parentid);
            datamap.put(productType,innerlist);
        }
        model.addAttribute("datamap",datamap);
        model.addAttribute("productypelist",list);
        if(productypeid == -1){
            productypeid = list.get(0).getId();
        }
        List<ProductInfo> productlist = productService.queryAll(productypeid);
        List<List<ProductInfo>> productlistfinal = new ArrayList<List<ProductInfo>>();
        List<ProductInfo> innerlist = new ArrayList<ProductInfo>();
        for(int i=0;i<productlist.size();i++){
            innerlist.add(productlist.get(i));
            if((i+1)%3==0){
                productlistfinal.add(innerlist);
                innerlist = new ArrayList<ProductInfo>();
            }
        }
        if(productlist.size()%3 != 0){
            productlistfinal.add(innerlist);
        }
        model.addAttribute("productlistfinal",productlistfinal);
        return "beautiful/index";
    }
}
