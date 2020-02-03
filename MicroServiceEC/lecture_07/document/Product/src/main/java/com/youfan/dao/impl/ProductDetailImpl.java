package com.youfan.dao.impl;

import com.youfan.entity.ProductDetail;
import com.youfan.entity.ProductInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;
import com.youfan.dao.ProductDetailDao;
import com.youfan.mappers.ProductDetailMapper;

@Component
@CacheConfig(cacheNames = "ProductCache")
public class ProductDetailImpl implements ProductDetailDao {

    @Autowired
    private ProductDetailMapper productDetailMapper;

    @Override
    public void insertProductDetail(ProductDetail productDetail) {
        productDetailMapper.insertProductDetail(productDetail);
    }

    @Override
    @Cacheable(value = "ProductCache",key = "'productDetail'+#id")
    public ProductDetail findProductDetailByProductId(Long id) {
        System.out.println("findProductDetailByProductId");
        ProductInfo productInfo = new ProductInfo();
        return  productDetailMapper.findProductDetailByProductId(productInfo);
    }
}
