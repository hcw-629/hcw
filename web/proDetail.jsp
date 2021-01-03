<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>详情页</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
</head>
<body><!------------------------------head------------------------------>
<div class="head">
    <div class="wrapper clearfix">
        <div class="clearfix" id="top"><h1 class="fl"><a href="index_2.jsp."><img src="img/logo.jpg"/></a></h1>
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
</div><!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix"><a href="index_2.jsp">首页</a><span>/</span><a
            href="flowerDer.html">首页</a><span>/</span><a href="proList.html">阳光小区果蔬店</a><span>/</span><a href="#"
                                                                                                         class="on">${pro.prodouctname}</a>
    </div>
</div><!-----------------------Detail------------------------------>
<div class="detCon">
    <div class="proDet wrapper">
        <div class="proCon clearfix">
            <div class="proImg fl">
                <img class="det" src="${pro.prodouctfilename}"/>
                <div class="smallImg clearfix">
                    <img src="${pro.prodouctfilename}">
                </div>
            </div>
            <div class="fr intro">
                <div class="title"><h4>${pro.prodouctname}</h4>
                    <p>${pro.prodouctdescription}</p><span>${pro.prodouctprice}</span></div>
                <div class="proIntro">
                    <p>数量&nbsp;&nbsp;库存<span>${pro.prodouctstock}</span>件</p>
                    <div class="num clearfix">
                        <img class="fl sub" src="img/temp/sub.jpg">
                        <span id="count" class="fl" contentEditable="true">1</span>
                        <img class="fl add" src="img/temp/add.jpg">
                        <p class="please fl">请选择商品属性!</p>
                    </div>
                </div>
                <div class="btns clearfix">
                    <a href="javascript:shopadd(${pro.prodouctid},'z')"><p class="buy fl">立即购买</p></a>
                    <a href="javascript:shopadd(${pro.prodouctid},'s')"><p class="cart fr">加入购物车</p></a>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function shopadd(id, flag) {
        var count = document.getElementById("count").innerText;
        location.href = 'cartadd?id=' + id + '&count=' + count + '&flag=' + flag;
    }
</script>

<!--返回顶部-->
<div class="gotop"><a href="showcart">
    <dl class="goCart">
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
        <span>1</span></dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="img/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="mygxin.html">
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
    <p>400-800-8200</p></div>
<div class="msk"></div><!--footer-->
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
        违法和不良信息举报电话：188-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p></div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">jQuery(".bottom").slide({
    titCell: ".hd ul",
    mainCell: ".bd .likeList",
    autoPage: true,
    autoPlay: false,
    effect: "leftLoop",
    autoPlay: true,
    vis: 1
});</script>
</body>
</html>
