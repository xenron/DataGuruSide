package com.youfan.dao;

import com.youfan.entity.ProductInfo;
import com.youfan.vo.ProductInfoVo;

import java.util.List;

public interface ProductInfoDao {
    public Long  insertProduct(ProductInfo productInfo);
    public Long updateProductAuditStatus(ProductInfo productInfo);
    public Long updateProductStatus(ProductInfo productInfo);
    public List<ProductInfo> queryByVo(ProductInfoVo productInfoVo);
}
