<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>cart</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
    <script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body><!--------------------------------------cart--------------------->
<div class="head ding">
    <div class="wrapper clearfix">
        <div class="clearfix" id="top"><h1 class="fl"><a href="index_2.jsp"><img src="img/logo.jpg"/></a></h1>
            <div class="fr clearfix" id="top1">
                <p class="fl">
                    <b>你好：</b>${user.name}<a href="loginout" id="reg">退出登录</a>
                </p>

                 <form action="#" method="get" class="fl"><input type="text" placeholder="搜索"/><input type="button"/>
                </form>
                <div class="btn fl clearfix">
                    <a href="mygrxx.jsp"><img src="img/grzx.png"/></a>

                    <a href="showcart"><img src="img/gwc.png"/></a>
                    <a href="mygrxx.jsp">后台管理</a>
                    <p><a href="#"><img src="img/smewm.png"/></a></p>
                </div>
            </div>
        </div>
        <ul class="clearfix" id="bott">
            <li><a href="index_2.jsp">首页</a></li>
            <li><a href="index_2.jsp">水果</a></li>
            <li><a href="index_2.jsp">蔬菜</a></li>



        </ul>
    </div>
</div>
<div class="cart mt"><!-----------------logo------------------->
    <!--<div class="logo"><h1 class="wrapper clearfix"><a href="index_2.jsp"><img class="fl" src="img/temp/logo.jpg"></a><img class="top" src="img/temp/cartTop01.png"></h1></div>-->
    <!-----------------site------------------->
    <div class="site"><p class=" wrapper clearfix"><span class="fl">购物车</span>
        <img class="top" src="img/temp/cartTop01.png">
        <span><a style="text-decoration: none" href="mygrxx.jsp" class="fr">返回></a></span>
    </p></div><!-----------------table------------------->
    <div class="table wrapper">
        <div class="tr">
            <div>商品</div>
            <div>单价</div>
            <div>数量</div>
            <div>小计</div>
            <div>操作</div>
        </div>
        <c:forEach var="rs" items="${requestScope.cartlist }">
            <div class="th">
                <div class="pro clearfix">
                    <label class="fl">
                        <input name="ck" type="checkbox" value="${rs.cart_id }"/>
                        <span></span>
                    </label>
                    <a class="fl" href="productshow?id=${rs.cart_p_id}">
                        <dl class="clearfix">
                            <dt class="fl"><img width="120" height="120" src="${rs.cart_p_filename}"></dt>
                            <dd class="fl">
                                <p>${rs.cart_p_name}</p>
                                <p>商品规格:</p>
                                <p>常规正式版</p>
                            </dd>
                        </dl>
                    </a>
                </div>
                <div class="price">￥${rs.cart_p_price}.00</div>
                <div class="number">
                    <p class="num clearfix">
                        <img class="fl sub" src="img/temp/sub.jpg">
                        <span datasrc="${rs.cart_id }" class="fl">${rs.cart_nums}</span>
                        <img class="fl add" src="img/temp/add.jpg"></p>
                </div>
                <div class="price sAll">￥${rs.cart_p_price*rs.cart_nums}.00</div>
                <div class="price"><a class="del" datasrc="${rs.cart_id}" href="#2">删除</a></div>
            </div>
        </c:forEach>

        <div class="goOn">空空如也~<a href="index_2.jsp">去逛逛</a></div>
        <div class="tr clearfix"><label class="fl"><input class="checkAll" type="checkbox"/><span></span></label>
            <p class="fl"><a href="#">全选</a></p>
            <p class="fr">
                <span>共<small id="sl">0</small>件商品</span>
                <span>合计:&nbsp;<small id="all">￥0.00</small></span>
                <a href="javascript:toorder()" class="count">结算</a>
            </p>
        </div>
    </div>
</div>
<script>
    function toorder() {
        var str = "";
        $("input[name='ck']:checked").each(function (index, item) {
            if ($("input[name='ck']:checked").length - 1 == index) {
                str += $(this).val();
            } else {
                str += $(this).val() + ",";
            }
        });
        location.href = "cartorder?eids=" + str;
    }
</script>

<div class="mask"></div>
<div class="tipDel"><p>确定要删除该商品吗？</p>
    <p class="clearfix"><a class="fl cer" href="#">确定</a><a class="fr cancel" href="#">取消</a></p></div><!--返回顶部-->
<div class="gotop"><a href="showcart">
    <dl>
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="img/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="mygrxx.jsp">
    <dl>
        <dt><img src="img/gt3.png"/></dt>
        <dd>个人<br/>中心</dd>
    </dl>
</a><a href="#" class="toptop" style="display: none;">
    <dl>
        <dt><img src="img/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>400-800-8200</p></div><!--footer-->
<div class="footer">
    <div class="top">
        <div class="wrapper">
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot1.png"/></a><span class="fl">7天无理由退货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot2.png"/></a><span class="fl">15天免费换货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot3.png"/></a><span class="fl">满599包邮</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot4.png"/></a><span class="fl">手机特色服务</span>
            </div>
        </div>
    </div>
    <p class="dibu">最家家居&copy;2013-2017公司版权所有 京ICP备080100-44备0000111000号<br/>
        违法和不良信息举报电话：188-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p></div><!----------------mask------------------->
<div class="mask"></div><!-------------------mask内容------------------->
<div class="proDets"><img class="off" src="img/temp/off.jpg"/>
    <div class="proCon clearfix">
        <div class="proImg fr"><img class="list" src="img/temp/proDet.jpg"/>
            <div class="smallImg clearfix"><img src="img/temp/proDet01.jpg" data-src="img/temp/proDet01_big.jpg"><img
                    src="img/temp/proDet02.jpg" data-src="img/temp/proDet02_big.jpg"><img src="img/temp/proDet03.jpg"
                                                                                          data-src="img/temp/proDet03_big.jpg"><img
                    src="img/temp/proDet04.jpg" data-src="img/temp/proDet04_big.jpg"></div>
        </div>

    </div>
</div>
<div class="pleaseC"><p>请选择宝贝</p><img class="off" src="img/temp/off.jpg"/></div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
