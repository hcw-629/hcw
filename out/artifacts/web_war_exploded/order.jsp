<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>order</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
    <link rel="stylesheet" type="text/css" href="css/mygxin.css"/>
</head>
<body><!----------------------------------------order------------------>
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
<div class="order cart mt"><!-----------------site------------------->
    <div class="site"><p class="wrapper clearfix"><span class="fl">订单确认</span><img class="top"
                                                                                   src="img/temp/cartTop02.png"></p>
    </div><!-----------------orderCon------------------->
    <div class="orderCon wrapper clearfix">
        <div class="orderL fl"><!--------h3----------------><h3>收件信息<a href="#" class="fr">新增地址</a></h3>
            <!--------addres---------------->
            <div class="addres clearfix">
                <div class="addre fl on">
                    <div class="tit clearfix"><p class="fl">${user.name} <span class="default">[默认地址]</span></p>
                        <p class="fr"></p></div>
                    <div class="addCon"><p>${user.address}</p>
                        <p>${user.mobile}</p></div>
                </div>
            </div>
            <h3>支付方式</h3><!--------way---------------->
            <div class="way clearfix"><img class="on" src="img/temp/way01.jpg"><img src="img/temp/way02.jpg"></div>
        </div>
        <div class="orderR fr">

                <div class="msg"><h3>订单内容<a href="showcart" class="fr">返回购物车</a></h3><!--------ul---------------->

                    <c:forEach var="rs" items="${requestScope.shoplist }">
                        <ul class="clearfix">
                            <li class="fl"><img width="100" height="100" src="${rs.cart_p_filename}"></li>
                            <li class="fl"><p>${rs.cart_p_name}</p>
                                <p>商品规格:常规金典版</p>
                                <p>数量：${rs.cart_nums}</p>
                                <p>单价：￥${rs.cart_p_price}.00</p>
                            </li>
                            <li class="fr">小计：￥${rs.cart_p_price * rs.cart_nums}.00</li>
                        </ul>
                    </c:forEach>

                </div><!--------tips---------------->
            <div class="tips"><p><span class="fl">商品金额：</span><span class="fr">￥${totalprice}.00</span></p>
                <p><span class="fl">优惠金额：</span><span class="fr">￥0.00</span></p>
                <p><span class="fl">运费：</span><span class="fr">免运费</span></p>
            </div><!--------tips count---------------->
            <div class="count tips">
                <p><span class="fl">合计：</span><span class="fr">￥${totalprice}.00</span></p>
            </div>
            <a href="cartpay?eids=${eids}" class="pay">支付</a>
        </div>
    </div>
</div><!--编辑弹框--><!--遮罩-->
    <div class="mask"></div>
    <div class="adddz editAddre">
        <form action="#" method="get"><input type="text" placeholder="姓名" class="on"/><input type="text"
                                                                                             placeholder="手机号"/>
            <div class="city"><select name="">
                <option value="省份/自治区">省份/自治区</option>
            </select><select>
                <option value="城市/地区">城市/地区</option>
            </select><select>
                <option value="区/县">区/县</option>
            </select><select>
                <option value="配送区域">配送区域</option>
            </select></div>
            <textarea name="" rows="" cols="" placeholder="详细地址"></textarea><input type="text" placeholder="邮政编码"/>
            <div class="bc"><input type="button" value="保存"/><input type="button" value="取消"/></div>
        </form>
    </div><!--返回顶部-->
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
                <div class="clearfix"><a href="#2" class="fl"><img src="img/foot1.png"/></a><span
                        class="fl">7天无理由退货</span>
                </div>
                <div class="clearfix"><a href="#2" class="fl"><img src="img/foot2.png"/></a><span
                        class="fl">15天免费换货</span>
                </div>
                <div class="clearfix"><a href="#2" class="fl"><img src="img/foot3.png"/></a><span
                        class="fl">满599包邮</span>
                </div>
                <div class="clearfix"><a href="#2" class="fl"><img src="img/foot4.png"/></a><span
                        class="fl">手机特色服务</span>
                </div>
            </div>
        </div>
        <p class="dibu">最家家居&copy;2013-2017公司版权所有 京ICP备080100-44备0000111000号<br/>
            违法和不良信息举报电话：188-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p></div>
    <script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/public.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
