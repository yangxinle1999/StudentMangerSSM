<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>审核加分项</title>
    <link href="../img/tubiao.ico" rel="icon">
    <script src="${pageContext.request.contextPath}/jQuery/jquery-1.12.3.js"></script>
    <style>
        @font-face {
            font-family:Semibold;
            src: url("../font/正文宋楷.ttf") ;
        }
        *{
            margin: 0;
            padding: 0;
        }
        a{
            text-decoration: none;
            font-size: 20px;
            color: #20638f;
        }
        table,th,td,tr{
            margin: 0;
            padding: 0;
        }
        table{
            font-family: Semibold;
            width: 700px;
            position: absolute;
            left: 50%;
            top: 5%;
            margin-left: -350px;
            font-size: 25px;
        }
        tr{
            text-align: center;
            height: 50px;
        }
        .pagination {
            position: absolute;
            bottom: 60px;
            left: 370px;
            display: inline-block;
            padding-left: 0;
            margin: 20px 0;
            border-radius: 4px;
        }
        .pagination > li {
            display: inline;
        }
        .pagination > li > a,
        .pagination > li > span {
            position: relative;
            float: left;
            padding: 6px 12px;
            margin-left: -1px;
            line-height: 1.42857143;
            color: #337ab7;
            text-decoration: none;
            background-color: #fff;
            border: 1px solid #ddd;
        }
        .pagination > li:first-child > a,
        .pagination > li:first-child > span {
            margin-left: 0;
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px;
        }
        .pagination > li:last-child > a,
        .pagination > li:last-child > span {
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;
        }
        .pagination > li > a:hover,
        .pagination > li > span:hover,
        .pagination > li > a:focus,
        .pagination > li > span:focus {
            z-index: 2;
            color: #23527c;
            background-color: #eee;
            border-color: #ddd;
        }
        .pagination > .active > a,
        .pagination > .active > span,
        .pagination > .active > a:hover,
        .pagination > .active > span:hover,
        .pagination > .active > a:focus,
        .pagination > .active > span:focus {
            z-index: 3;
            color: #fff;
            cursor: default;
            background-color: #337ab7;
            border-color: #337ab7;
        }
        .pagination > .disabled > span,
        .pagination > .disabled > span:hover,
        .pagination > .disabled > span:focus,
        .pagination > .disabled > a,
        .pagination > .disabled > a:hover,
        .pagination > .disabled > a:focus {
            color: #777;
            cursor: not-allowed;
            background-color: #fff;
            border-color: #ddd;
        }
        .pagination-lg > li > a,
        .pagination-lg > li > span {
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
        }
        .pagination-lg > li:first-child > a,
        .pagination-lg > li:first-child > span {
            border-top-left-radius: 6px;
            border-bottom-left-radius: 6px;
        }
        .pagination-lg > li:last-child > a,
        .pagination-lg > li:last-child > span {
            border-top-right-radius: 6px;
            border-bottom-right-radius: 6px;
        }
        .pagination-sm > li > a,
        .pagination-sm > li > span {
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
        }
        .pagination-sm > li:first-child > a,
        .pagination-sm > li:first-child > span {
            border-top-left-radius: 3px;
            border-bottom-left-radius: 3px;
        }
        .pagination-sm > li:last-child > a,
        .pagination-sm > li:last-child > span {
            border-top-right-radius: 3px;
            border-bottom-right-radius: 3px;
        }
        .pager {
            padding-left: 0;
            margin: 20px 0;
            text-align: center;
            list-style: none;
        }
        .pager li {
            display: inline;
        }
        .pager li > a,
        .pager li > span {
            display: inline-block;
            padding: 5px 14px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 15px;
        }
        .pager li > a:hover,
        .pager li > a:focus {
            text-decoration: none;
            background-color: #eee;
        }
        .pager .next > a,
        .pager .next > span {
            float: right;
        }
        .pager .previous > a,
        .pager .previous > span {
            float: left;
        }
        .pager .disabled > a,
        .pager .disabled > a:hover,
        .pager .disabled > a:focus,
        .pager .disabled > span {
            color: #777;
            cursor: not-allowed;
            background-color: #fff;
        }
    </style>
</head>
<body>
<table border="1" cellpadding="0" cellspacing="0">
    <tr>
        <th>加分项内容</th>
        <th>时间</th>
        <th>审核</th>
    </tr>
    <c:forEach items="${ll.list}" var="list">
    <tr>
        <td><img src="${list.jJiaFenXiang}" width="265px" height="140px"></td>
        <td>${list.jTime}</td>
        <td>
            <input type="radio" name="pass" value="is" id="pass1" class="pass1"/>通过
            <input type="radio" name="pass" value="not" id="pass2" class="pass2"/>不通过
        </td>
    </tr>
    </c:forEach>
</table>
<nav aria-label="Page navigation">
    <ul class="pagination">
        <c:if test="${ll.pageNum>1}">
            <li>
                <a href="${pageContext.request.contextPath}/shenheJiaFengXiang?page=${ll.pageNum-1}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
        </c:if>
        <c:forEach begin="1" end="${ll.pages}" var="i">
            <li> <a href="${pageContext.request.contextPath}/shenheJiaFengXiang?page=${i}">${i} <span class="sr-only"></span></a></li>
        </c:forEach>
        <c:if test="${ll.pageNum<ll.pages}">
            <li>
                <a href="${pageContext.request.contextPath}/shenheJiaFengXiang?page=${ll.pageNum+1}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </c:if>
    </ul>
</nav>
</body>
</html>
<script type="text/javascript">
    $(".pass1",this).click(function () {
        var m=$("#pass1").val();
        $("#pass1").click(function () {
            console.log(m);
        });
    });
    $(".pass2",this).click(function () {
        var n=$("#pass2").val();
        $("#pass2").click(function () {
            console.log(n);
        })
    })
        // var m=$("#pass1").val();
        // var n=$("#pass2").val();
        // $("#pass1").click(function () {
        //     console.log(m);
        // });
        // $("#pass2").click(function () {
        //     console.log(n);
        // })
    // var m=$("#pass1").val();
    // var n=$("#pass2").val();
    // $("#pass1").click(function () {
    //    console.log(m);
    // });
    // $("#pass2").click(function () {
    //     console.log(n);
    // })

</script>