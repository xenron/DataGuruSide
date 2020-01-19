package com.youfan.service;

import com.youfan.entity.ProductTypeInfo;
import com.youfan.vo.ConstomProductTypeInfo;
import com.youfan.vo.ProductTypeInfoVo;

import java.util.List;

public interface ProductTypeService {
    public void insertProductType(ProductTypeInfo productTypeInfo);
    public void updateProductTypeById(ProductTypeInfo productTypeInfo);
    public ProductTypeInfo findProductTypeById(long id);
    public List<ProductTypeInfo> findProductTypeByVo(ConstomProductTypeInfo constomProductTypeInfo);
}
