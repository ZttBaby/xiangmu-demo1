package com.qf.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Order;

import java.util.List;

public interface OrderDao {
     List<Order> listProducts(JSONObject jsonObject);

     Long countProducts(JSONObject jsonObject);

     Order getOrderPro(String uid);

     int delOrderPro(String uid);

     int updateorder(Order order);

    int saveorder(Order order);
}
