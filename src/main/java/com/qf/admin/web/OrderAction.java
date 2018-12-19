package com.qf.admin.web;


import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Order;
import com.qf.admin.service.orderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class OrderAction {

    @Autowired
    private orderService orderService;

    @GetMapping("/{page}")
    public String page(@PathVariable String page){
        return page;
    }

    @ResponseBody
    @RequestMapping(value = "/orders",method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public Object listUsersByCondition(@RequestBody JSONObject jsonObject){
        jsonObject = orderService.listProducts(jsonObject);
        return jsonObject;
    }

    @ResponseBody
    @GetMapping("/order/{uid}")
    public Order getOrderPro(@PathVariable("uid") String uid){
            return orderService.OrderPro(uid);
    }
    @ResponseBody
    @RequestMapping(value = "/order/{uid}",method = RequestMethod.DELETE)
    public int delOrderPro(@PathVariable("uid") String uid){
        return orderService.delOrderPro(uid);
    }

    @ResponseBody
    @RequestMapping(value = "/order",method = RequestMethod.PUT)
    public int Update(Order order){
        System.out.println("11111");
       return orderService.updateorder(order);

    }
    @ResponseBody
    @PostMapping("order")
    public int saveorders(Order order){
        return orderService.saveorders(order);
    }
}
