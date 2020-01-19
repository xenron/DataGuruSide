package com.youfan.service;

import com.youfan.entity.Orderdetail;
import com.youfan.entity.Ordermain;
import com.youfan.vo.ConstomOrderInfo;
import com.youfan.vo.OrderInfoVo;

import java.util.List;

public interface OrderService {

    public void insertOrder(Ordermain ordermain, List<Orderdetail> orderdetaillist);
    public List<Ordermain> findOrderByVo(ConstomOrderInfo constomOrderInfo);
    public void updateOrderInfoById(Ordermain ordermain);
    public Ordermain findOrderInfoById(long id);
    public void updateOrderInfoStatus(Ordermain ordermain);
    public void checkOrderTime();
}
