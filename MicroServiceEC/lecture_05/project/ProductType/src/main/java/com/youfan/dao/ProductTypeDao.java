package com.youfan.dao;

import com.youfan.entity.ProductTypeInfo;
import com.youfan.vo.ProductTypeInfoVo;

import java.util.List;

public interface ProductTypeDao {
    public void insertProductType(ProductTypeInfo productTypeInfo);
    public void updateProductTypeById(ProductTypeInfo productTypeInfo);
    public ProductTypeInfo findProductTypeById(long id);
    public List<ProductTypeInfo> findProductTypeByVo(ProductTypeInfoVo productTypeInfoVo);
}
