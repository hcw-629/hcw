<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>个人信息</title>


    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/mygrxx.css"/>
</head>
<body><!------------------------------head------------------------------>
<div class="head ding">
    <div class="wrapper clearfix">
        <div class="clearfix" id="top"><h1 class="fl"><a href="login.jsp"><img src="img/logo.jpg"/><span>果蔬商城</span></a></h1>

            <div class="fr clearfix" id="top1">
                <p class="fl">
                    <b>你好：</b>${user.name}<a href="loginout" id="reg">退出登录</a>
                </p>
                <div class="btn fl clearfix">
                    <a href="mygrxx.jsp"><img src="img/grzx.png"/></a>
                    <a href="showcart"><img src="img/gwc.png"/></a>
                    <a href="managerlogin.jsp">后台管理</a>
                    <p><a href="#"><img src="img/smewm.png"/></a></p>
                </div>
            </div>
        </div>
    </div>
</div><!------------------------------idea------------------------------>
<div class="address mt">
    <div class="wrapper clearfix"><a href="manager.jsp" class="on"></a>
    </div>
</div><!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3><a href="#"><img src="img/tx.png"/></a>
                <p class="clearfix"><span class="fl">${user.name}</span><span class="fr"><a
                        href="managerloginout">[退出登录]</a></span><span class="fl">商品销售额：${ManagerCountPrice}元</span></p></h3>
            <div><h4> 管理员中心</h4>
                <ul>
                    <li><a href="manager.jsp">管理员信息</a></li>
                    <li><a href="Managerpro">商品管理</a></li>
                    <li><a href="Manageruser">用户管理</a></li>
                    <li><a href="Managerorder">订单管理</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl"><h2>所有订单信息</h2>
            <div class="gxin">
                <div align="left" class="xx">
                    <h3 class="clearfix"><strong class="fl">所有商品销售额：${ManagerCountPrice}元</strong>
                    </h3>
                    <center>
                        <table border="2" align="center">
                            <thead>
                            <tr>
                                <th>商品名称</th>
                                <th>价格</th>
                                <th>数量</th>
                            </tr>
                            </thead>
                            <c:forEach items="${list }" var="s">
                                <tr>
                                    <th>${s.cart_p_name }</th>
                                    <th>${s.cart_p_price }</th>
                                    <th>${s.cart_nums }</th>
                                </tr>
                            </c:forEach>
                        </table>
                        <%--                       <a href="Managerpro?currentPage=${currentPage=1 }">首页</a>--%>
                        <a href='<c:if test="${currentPage>1 }">Managerorder?currentPage=${currentPage-1 }</c:if>'>前一页</a>&nbsp;&nbsp;&nbsp;
                        <c:forEach begin="1" end="${allPage }"  varStatus="st">
                            <a style='<c:if test="${st.count==currentPage}">color:red;</c:if>text-decoration: none' href="Managerorder?currentPage=${st.count }">
                                第${st.count }页&nbsp;&nbsp;&nbsp;&nbsp;
                            </a>
                        </c:forEach>
                        <a href='<c:if test="${currentPage<allPage }">Managerorder?currentPage=${currentPage+1 }</c:if>'>下一页</a>
                        <%--                       <a href="Managerpro?currentPage=${allPage }">末页</a>--%>
                    </center>
                </div>
            </div>
        </div>
    </div>
</div><!--遮罩-->
<div class="mask"></div><!--编辑弹框-->

<!--高级设置修改-->
<div class="xg">
    <div class="clearfix"><a href="#" class="fr gb"><img src="img/icon4.png"/></a></div>
    <h3>切换账号地区</h3>
    <form action="#" method="get"><p><label>姓名：</label><input type="text" value="六六六"/></p>
        <div class="bc"><input type="button" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div><!--修改头像-->
<div class="avatar">
    <div class="clearfix"><a href="#" class="fr gb"><img src="img/icon4.png"/></a></div>
    <h3>修改头像</h3>
    <form action="#" method="get"><h4>请上传图片</h4><input type="button" value="上传头像"/>
        <p>jpg或png，大小不超过2M</p><input type="submit" value="提交"/></form>
</div><!--返回顶部-->
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
    <p class="dibu">社区果蔬商城&copy;2013-2017公司版权所有 京ICP备080100-44备0000111000号<br/>
        违法和不良信息举报电话：400-800-8200，本网站所列数据，除特殊说明，所有数据均公司版权所有</p></div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
