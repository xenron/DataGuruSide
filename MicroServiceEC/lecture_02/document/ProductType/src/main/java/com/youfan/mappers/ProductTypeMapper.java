package com.youfan.mappers;

import com.youfan.entity.ProductTypeInfo;
import com.youfan.service.ProductTypeService;
import com.youfan.vo.ProductTypeInfoVo;

import java.util.List;

public interface ProductTypeMapper {
    public void insertProductType(ProductTypeInfo productTypeInfo);
    public void updateProductTypeById(ProductTypeInfo productTypeInfo);
    public ProductTypeInfo findProductTypeById(long id);
    public List<ProductTypeInfo> findProductTypeByVo(ProductTypeInfoVo productTypeInfoVo);
}
