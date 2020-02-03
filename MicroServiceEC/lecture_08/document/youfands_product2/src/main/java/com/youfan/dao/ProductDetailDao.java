package com.youfan.dao;

import com.youfan.entity.ProductDetail;
import com.youfan.entity.ProductInfo;

public interface ProductDetailDao {
    public void insertProductDetail(ProductDetail productDetail);
    public ProductDetail findProductDetailByProductId(Long id);
}
