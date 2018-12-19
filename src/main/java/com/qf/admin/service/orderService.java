package com.qf.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Order;

public interface orderService {
    JSONObject listProducts(JSONObject jsonObject);

    Order OrderPro(String uid);

    int delOrderPro(String uid);

    int updateorder(Order order);

    int saveorders(Order order);
}
