package com.youfan.dao.impl;

import com.youfan.dao.OrderDetailDao;
import com.youfan.entity.Orderdetail;
import com.youfan.mappers.OrderDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class OrderDetailDaoImpl implements OrderDetailDao {

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Override
    public void insertOrderDetail(Orderdetail orderdetail) {
        orderDetailMapper.insertOrderDetail(orderdetail);
    }
}
