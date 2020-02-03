package com.youfan.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.youfan.config.OrderConfigure;
import com.youfan.entity.OrderTotal;
import com.youfan.entity.Orderdetail;
import com.youfan.entity.Ordermain;
import com.youfan.service.OrderService;
import org.springframework.amqp.core.ExchangeTypes;
import org.springframework.amqp.rabbit.annotation.Exchange;
import org.springframework.amqp.rabbit.annotation.Queue;
import org.springframework.amqp.rabbit.annotation.QueueBinding;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ReceiveOrderInfo {

    @Autowired
    private OrderService orderService;

    /**
     * === 在RabbitMQ上创建queue,exchange,binding 方法二：直接在@RabbitListener声明 begin ===
     * 接收
     * @param content
     */
    @RabbitListener(containerFactory = "rabbitListenerContainerFactory",
            bindings = @QueueBinding(
            value = @Queue(value = OrderConfigure.SPRING_BOOT_QUEUE+"3", durable = "true", autoDelete="true"),
            exchange = @Exchange(value = OrderConfigure.SPRING_BOOT_EXCHANGE, type = ExchangeTypes.TOPIC),
            key = OrderConfigure.SPRING_BOOT_BIND_KEY)
    )
    public void receive_2(String content) {
        System.out.println("[ReceiveOrderInfo] receive msg: " + content);
        OrderTotal orderTotal = JSONObject.parseObject(content,OrderTotal.class);
        Orderdetail orderdetail = orderTotal.getOrderdetail();
        Ordermain ordermain = orderTotal.getOrdermain();
        List<Orderdetail> detailList = new ArrayList<Orderdetail>();
        detailList.add(orderdetail);
        orderService.insertOrder(ordermain,detailList);
    }

}
