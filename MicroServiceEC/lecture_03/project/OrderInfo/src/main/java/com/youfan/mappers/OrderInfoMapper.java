package com.youfan.mappers;

import com.youfan.entity.Ordermain;
import com.youfan.vo.OrderInfoVo;

import java.util.List;

public interface OrderInfoMapper {
    public void insertOrderMain(Ordermain ordermain);
    public List<Ordermain> findOrderByVo(OrderInfoVo orderInfoVo);
    public void updateOrderInfoById(Ordermain ordermain);
    public Ordermain findOrderInfoById(long id);
    public void updateOrderInfoStatus(Ordermain ordermain);
}
