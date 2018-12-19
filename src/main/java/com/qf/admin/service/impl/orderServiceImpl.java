package com.qf.admin.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.dao.OrderDao;
import com.qf.admin.pojo.po.Order;
import com.qf.admin.service.orderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class orderServiceImpl implements orderService {
    //日志类的定义
    private final static Logger logger = LoggerFactory.getLogger(orderServiceImpl.class);
    //注入属性
    @Autowired
    private OrderDao orderDao;

    @Override
    public JSONObject listProducts(JSONObject jsonObject) {
        JSONObject jo = new JSONObject();
        try {
            List<Order> rows = orderDao.listProducts(jsonObject);
            Long total = orderDao.countProducts(jsonObject);
            jo.put("total", total);
            jo.put("rows", rows);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }

        return jo;
    }

    @Override
    public Order OrderPro(String uid) {
        return orderDao.getOrderPro(uid);

    }

    @Override
    public int delOrderPro(String uid) {
        return orderDao.delOrderPro(uid);
    }

    @Override
    public int updateorder(Order order) {
        return orderDao.updateorder(order);
    }

    @Override
    public int saveorders(Order order) {
        return orderDao.saveorder(order);
    }


}
