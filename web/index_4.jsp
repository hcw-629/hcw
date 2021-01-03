<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>果蔬</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
</head>
<body><!------------------------------head------------------------------>
<div class="head">
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
<!-------------------------banner--------------------------->
<!------------------------------thImg------------------------------>


<div class="news">
    <div class="wrapper">

        <div class="flower clearfix tran"><a href="productshow?id=1" class="clearfix">
            <dl>
                <dt><span class="abl"></span><img src="img/juzhi.jpg"/><span class="abr"></span></dt>
                <dd>正宗云南禇橙10斤精品礼盒装</dd>
                <dd><span>¥ 128.00</span></dd>
            </dl>
        </a><a href="productshow?id=2">
            <dl>
                <dt><span class="abl"></span><img src="img/liuliang.jpg"/><span class="abr"></span></dt>
                <dd>正宗泰国进口金枕头榴莲A果</dd>
                <dd><span>¥ 119.00</span></dd>
            </dl>
        </a><a href="productshow?id=3">
            <dl>
                <dt><span class="abl"></span><img src="img/pingguo.jpg"/><span class="abr"></span></dt>
                <dd>源外 正宗新疆阿克苏冰糖心苹果</dd>
                <dd><span>¥ 53.00</span></dd>
            </dl>
        </a></div>
        <div class="flower clearfix tran"><a href="productshow?id=4">
            <dl>
                <dt><span class="abl"></span><img src="img/youzi.jpg"/><span class="abr"></span></dt>
                <dd>福建平和琯溪蜜柚</dd>
                <dd><span>¥ 19.00</span></dd>
            </dl>
        </a><a href="productshow?id=5">
            <dl>
                <dt><span class="abl"></span><img src="img/baicai.jpg"/><span class="abr"></span></dt>
                <dd>新鲜沙拉蔬菜组合6种3.5斤</dd>
                <dd><span>¥ 20.00</span></dd>
            </dl>
        </a><a href="productshow?id=6">
            <dl>
                <dt><span class="abl"></span><img src="img/yumi.jpg"/><span class="abr"></span></dt>
                <dd>东北农嫂糯玉米棒非转基因</dd>
                <dd><span>¥ 21.00</span></dd>
            </dl>
        </a></div>
    </div>
</div><!------------------------------ad------------------------------><a href="#" class="ad"><img
        src="img/bjt1.jpg"/></a><!------------------------------people------------------------------>
<!--返回顶部-->
<div class="gotop"><a href="cart.jsp">
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
</a><a href="#" class="toptop" style="display: none">
    <dl>
        <dt><img src="img/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>400-800-8200</p></div><!-------------------login--------------------------><!--footer-->
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
    <p class="dibu">社区果蔬商城&copy;2013-2017公司版权所有 京ICP备080100-44备0000111000号<br/>
        违法和不良信息举报电话：400-800-8200，本网站所列数据，除特殊说明，所有数据均公司版权所有</p></div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.flexslider-min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">$(function () {
    $('#home_slider').flexslider({
        animation: 'slide',
        controlNav: true,
        directionNav: true,
        animationLoop: true,
        slideshow: true,
        slideshowSpeed: 2000,
        useCSS: false
    });
});</script>
</body>
</html>

