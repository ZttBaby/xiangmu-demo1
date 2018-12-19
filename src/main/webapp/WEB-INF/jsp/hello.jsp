<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
     <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">--%>
        <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-table.min.css">--%>
        <%--<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>--%>
        <%--<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>--%>
        <%--<script src="${pageContext.request.contextPath}/js/bootstrap-table.min.js"></script>--%>
        <%--<script src="${pageContext.request.contextPath}/js/locale/bootstrap-table-zh-CN.js"></script>--%>

        <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <!-- 引入bootstrap-table样式 -->
        <link href="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.min.css" rel="stylesheet">
        <!-- jquery -->
        <script src="https://cdn.bootcss.com/jquery/2.2.3/jquery.min.js"></script>
        <script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> <!-- bootstrap-table.min.js -->
        <script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.min.js"></script> <!-- 引入中文语言包 -->
        <script src="https://cdn.bootcss.com/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>
    <%--时间控件css--%>
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
</head>
<body>
    <table id="table" class="table"></table>


    <script>
       $(function(){
                   //初始化表格
                   $('#table').bootstrapTable({
                       //表格属性
                       url:'users',
                       columns:[{
                           checkbox: true
                       },{
                           //列属性
                           field:'classid',
                           title:'编号'
                       },{
                           field:'username',
                           title:'用户名'
                       },{
                           field:'password',
                           title:'密码'
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
    </script>
</body>
</html>
