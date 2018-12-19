<%--
  Created by IntelliJ IDEA.
  User: ruiyi
  Date: 2018/10/15
  Time: 上午8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Charts - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <%--表格控件css--%>
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
        <%--时间控件css--%>
        <link rel="stylesheet"
              href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="index.jsp">Vali</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <li class="app-search">
            <input class="app-search__input" type="search" placeholder="Search">
            <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>
            <ul class="app-notification dropdown-menu dropdown-menu-right">
                <li class="app-notification__title">You have 4 new notifications.</li>
                <div class="app-notification__content">
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Lisa sent you a mail</p>
                            <p class="app-notification__meta">2 min ago</p>
                        </div></a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Mail server not working</p>
                            <p class="app-notification__meta">5 min ago</p>
                        </div></a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Transaction complete</p>
                            <p class="app-notification__meta">2 days ago</p>
                        </div></a></li>
                    <div class="app-notification__content">
                        <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Lisa sent you a mail</p>
                                <p class="app-notification__meta">2 min ago</p>
                            </div></a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Mail server not working</p>
                                <p class="app-notification__meta">5 min ago</p>
                            </div></a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Transaction complete</p>
                                <p class="app-notification__meta">2 days ago</p>
                            </div></a></li>
                    </div>
                </div>
                <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
            </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <li><a class="dropdown-item" href="page-user.jsp"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
                <li><a class="dropdown-item" href="page-user.jsp"><i class="fa fa-user fa-lg"></i> Profile</a></li>
                <li><a class="dropdown-item" href="page-login.jsp"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
            </ul>
        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
            <p class="app-sidebar__user-name">John Doe</p>
            <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
    </div>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="test1"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Test1</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="test2" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Test2</span></a>
        </li>
        <li><a class="app-menu__item" href="order"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">订单表</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="test3" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Test3</span></a>

        </li>


    </ul>
</aside>
<main class="app-content">
    <%--编辑模态框开始--%>
            <div class="modal fade" id="addModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <%--模态框头部--%>
                        <div class="modal-header">
                            <h4 class="modal-title">新增订单</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <%--模态框主体--%>
                        <div class="modal-body">
                            <form id="addForm">
                             <div class="form-group">
                                <label class="control-label">商品ID</label>
                                <input name="uid" class="form-control" type="text" >
                                 </div>
                               <div class="form-group">
                                  <label class="control-label">商品图片</label>
                                 <input name="pimage" class="form-control" type="text" >
                                 </div>

                                <div class="form-group">
                                    <label class="control-label">商品名称</label>
                                    <input name="pname" class="form-control" type="text" placeholder="请填入用户名">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">商品数量</label>
                                    <input class="form-control" type="text" name="count">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">商品价格</label>
                                    <input class="form-control" type="text" name="shop_price">
                                </div>
                            </form>
                        </div>
                        <%--模态框底部--%>
                        <div class="modal-footer">
                            <button id="btnAddCommit" type="button" class="btn btn-primary">提交</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
            <%--编辑模态框结束--%>

         <%--编辑模态框开始--%>
            <div class="modal fade" id="editModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <%--模态框头部--%>
                        <div class="modal-header">
                            <h4 class="modal-title">修改订单</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <%--模态框主体--%>
                        <div class="modal-body">
                            <form id="editForm">
                                <input type="hidden" name="uid"/>
                                <div class="form-group">
                                    <label class="control-label">商品名称</label>
                                    <input name="pname" class="form-control" type="text" >
                                </div>
                                <div class="form-group">
                                    <label class="control-label">商品数量</label>
                                    <input class="form-control" type="text" name="count">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">商品价格</label>
                                    <input class="form-control" type="text" name="shop_price">
                                </div>
                            </form>
                        </div>
                        <%--模态框底部--%>
                        <div class="modal-footer">
                            <button id="btnEditCommit" type="button" class="btn btn-primary">更改</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
            <%--编辑模态框结束--%>
            <%--jquery库--%>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                <%--bootstrap库--%>
                <script src="js/bootstrap.min.js"></script>
                <%--bootstrap-table库--%>
                <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
                <%--bootstrap-table中文库--%>
                <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
                <%--时间控件js--%>
                <script src="https://cdn.bootcss.com/moment.js/2.18.1/moment-with-locales.min.js"></script>
                <%--时间控件库--%>
                <script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

                <div class="tile">
                <table id="table" class="table">
                     <button id="btnAdd" class="btn btn-success" type="button">新增</button>
                </table>
                </div>

    <script>
           $(function(){

           function addButton(){
                return [
                    '&nbsp;&nbsp;&nbsp;&nbsp;<button id="btnEdit" class="btn btn-primary">编辑</button>&nbsp;&nbsp;&nbsp;&nbsp;',
                    '<button id="btnDel" class="btn btn-danger">删除</button>'
                ].join("");
           }
           window.operateEvents = {
                "click #btnEdit" : function(e,v,r,i){
                    $.ajax({
                        url:"order"+"/"+r.uid,
                        type:"get",
                        daraType:"json",
                        success:function(data){

                            console.log(data);
                            $('#editForm [name=uid]').val(data.uid);
                            $('#editForm [name=pname]').val(data.pname);
                            $('#editForm [name=count]').val(data.count);
                            $('#editForm [name=shop_price]').val(data.shop_price);
                        },
                    });
                         var d = $("#editModal").modal({
                                backdrop:"static",
                                keyboard: false
                         });
                         d.modal("show");
                },
                "click #btnDel" : function(e,v,r,i){
                   $.post(
                    'order/' + r.uid,
                    {'_method':'DELETE'},
                    function(data){
                    if(data > 0){
                     //删除成功之后回到第一页（刷新回第一页）
                     $('#table').bootstrapTable(('refresh'),{pageNumber:1});
                      }
                       },
                       'json'
                         );
                }


           }
                       //初¬¬始化表格
                       $('#table').bootstrapTable({
                           //表格属性
                           url:'orders',
                           columns:[{
                               checkbox: true
                           },{
                               //列属性
                               field:'uid',
                               title:'商品编号',
                               align: 'center'

                           },{
                               field:'pimage',
                               title:'商品图片',
                               align: 'center',
                               formatter:function(value,row,index){
                               var s;
                               if(row.pimage!=null){
                               var url = row.pimage;
                               s = '<img style="width:100;height:100px;"  src="'+url+'" />';
                               }
                                        return s;
                               },


                           },{
                               field:'pname',

                               title:'商品名称',
                               align: 'center'
                           },{
                               field:'count',
                               title:'商品数量',
                               align: 'center'
                           },{
                               field:'shop_price',
                               title:'商品价格',
                               align: 'center'
                           },{
                               field:'total_price',
                               title:'商品总价',
                               align: 'center'

                           },{
                               field:'button',
                               title:'操作',
                               formatter:addButton,
                               events:operateEvents

                           }],
                           method:'post',
                           search: true,
                           searchOnEnterKey: true,
                           pageNumber: 1,
                           pageSize: 3,

                           pagination: true,
                           sidePagination: 'server',
                           paginationHAlign: 'right'
                       });
                   });

                    $("#btnEditCommit").click(function(){
                                $.ajax({
                                    url: 'order',
                                    data: $("#editForm").serialize(),
                                    type: 'PUT',
                                    contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                                    success: function (data) {
                                        $('#editModal').modal('hide');
                                        if (data > 0) {
                                            $('#table').bootstrapTable(('refresh'));
                                        }
                                    }
                                });

                            });
                    $("#btnAdd").click(function () {
                                var dialog = $('#addModal').modal({
                                    backdrop: 'static',
                                    keyboard: false
                                });
                                dialog.modal('show');
                            });
                    $("#btnAddCommit").click(function () {
                                 $.post(
                                     'order',
                                     $("#addForm").serialize(),
                                     function (data) {

                                         $('#addModal').modal('hide');
                                         if (data > 0) {
                                             $('#table').bootstrapTable(('refresh'));
                                         }
                                     }
                                 );
                             });



        </script>
</main>

</body>
</html>
