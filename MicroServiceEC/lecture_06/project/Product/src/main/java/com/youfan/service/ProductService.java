package com.youfan.service;

import com.youfan.entity.ProductDetail;
import com.youfan.entity.ProductInfo;
import com.youfan.vo.ConstomProductInfo;
import com.youfan.vo.ProductInfoVo;

import java.util.List;

public interface ProductService {
    public void issueProduct(ProductInfo productInfo, ProductDetail productDetail);
    public Long updateProductAuditStatus(long id, int auditstate);
    public Long updateProductStatus(long id, int state);
    public List<ProductInfo> queryByVo(ConstomProductInfo constomProductInfo);
}
