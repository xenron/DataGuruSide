package com.youfan.service;

import com.alibaba.fastjson.JSONObject;
import com.youfan.page.EsPage;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@FeignClient(value = "youfands-pay")
public interface ZhiFuBaoPayService {

    /**
     * @return 1支付成功 2支付失败
     */
    @RequestMapping(value = "zhifubao/payWithAmoutbyzhifubao")
    public String payWithAmoutbyzhifubao(@RequestParam(value = "orderid") int orderid);


    @RequestMapping(value = "zhifubao/notifyzhifubao")
    public void notifyzhifubao(@RequestBody HttpServletRequest request) ;

    @RequestMapping(value = "zhifubao/returnzhifubao")
    public String returnzhifubao(@RequestBody HttpServletRequest request);
}
