package com.youfan.dao.impl;

import com.youfan.entity.ProductInfo;
import com.youfan.vo.ProductInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.youfan.dao.ProductInfoDao;
import com.youfan.mappers.ProductMapper;

import java.util.List;

@Component
public class ProductInfoImpl implements ProductInfoDao {

    @Autowired
    private ProductMapper productMapper;

    @Override
    public Long insertProduct(ProductInfo productInfo) {
        return productMapper.insertProduct(productInfo);
    }

    @Override
    public Long updateProductAuditStatus(ProductInfo productInfo) {
        return productMapper.updateProductAuditStatus(productInfo);
    }

    @Override
    public Long updateProductStatus(ProductInfo productInfo) {
        return productMapper.updateProductStatus(productInfo);
    }

    @Override
    public List<ProductInfo> queryByVo(ProductInfoVo productInfoVo) {
        return productMapper.queryByVo(productInfoVo);
    }
}
