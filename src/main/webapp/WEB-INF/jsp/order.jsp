<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
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
</head>
<body>
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


            <table id="table" class="table">

            <div class="row">
                    <div class="col-md-12">
                        <div class="tile">
                            <div class="tile-body">
                                <div id="toolbar" class="btn-group">
                                    <button id="btnAdd" class="btn btn-success" type="button">新增</button>
                                </div>
                                <table id="table" class="table table-striped"></table>
                            </div>
                        </div>
                    </div>
                </div>

            </table>

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
                       pageSize: 5,
                       pageList:[2,5,10],
                       pagination: true,
                       sidePagination: 'server'
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

</body>

</html>
