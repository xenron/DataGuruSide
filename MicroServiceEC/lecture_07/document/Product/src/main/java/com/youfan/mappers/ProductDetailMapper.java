package com.youfan.mappers;

import com.youfan.entity.ProductDetail;
import com.youfan.entity.ProductInfo;

public interface ProductDetailMapper {
    public void insertProductDetail(ProductDetail productDetail);
    public ProductDetail findProductDetailByProductId(ProductInfo productInfo);
}
