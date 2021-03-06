package com.youfan.timer;

import com.youfan.entity.Ordermain;
import com.youfan.service.OrderService;
import com.youfan.utils.DateUtil;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.QuartzJobBean;

import java.util.Date;
import java.util.List;

public class OrderTimer extends QuartzJobBean {

    @Autowired
    private OrderService orderService;

    @Override
    protected void executeInternal(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        System.out.println("呵呵");
        List<Ordermain> allOrder = orderService.findOrderByVo(null);
        for(Ordermain ordermain:allOrder){
            Date createTime = ordermain.getCreatetime();
            int payStatus = ordermain.getPaystatus();
            if(payStatus== 1){
                long betweenMinute = DateUtil.getTimeBetweenByMin2(createTime,new Date());
                if(betweenMinute > 20){
                    Ordermain ordermain1 = new Ordermain();
                    ordermain1.setId(ordermain.getId());
                    ordermain1.setOrderstatus(2);
                    orderService.updateOrderInfoStatus(ordermain1);
                }
            }

        }
    }
}
