<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<html>
<head>

    <title>鑫华药材站_首页</title>
    <meta name="baidu-site-verification" content="beQteqWDyz" />
    <meta name=”Keywords” Content=”赤峰,中药材,药材,牛营子,药材市场,桔梗片,药材出售,药材收购,安国″>
    <meta name=”Description” Content=”鑫华药材购销站，位于内蒙古赤峰市喀喇沁旗牛家营子镇，长期从事药材收购，销售工作，期待合作，主要经营桔梗、沙参、板蓝根、田草、牛膝等中药材及其种子”>
    <link href="${ctxStatic}/zxy/css/zxy_index.css" rel="stylesheet" type="text/css" />
    <%--<script src="/static/zxy/js/jquery-1.4a2.min.js" type="text/javascript"></script>--%>
   <%-- <script src="/static/zxy/js/jquery.KinSlideshow-1.2.1.min.js" type="text/javascript"></script>--%>
</head>
<body  id="index" >
    <div id="box_con1">
        <!--企业简介-->
        <div id="box_qiyejj">
            <div id="box_qiyejj_top">
                <div class="clearBoth"></div>
                <div id="FrontSpecifies_show01-1373263819023" class="FrontSpecifies_show01-d1_c1"><p>
                    <img height="38" src="${ctxStatic}/zxy/images/contt1.jpg" usemap="#ckMap0" width="581" /><map name="ckMap0"><area coords="464,-1,583,39" href="" shape="rect" /></map></p></div>

            </div>
            <div id="box_qiyejj_con">
                <div class="clearBoth"></div>

                <div id="FrontSpecifies_show01-1373267067144" class="FrontSpecifies_show01-d1_c1"><table border="0" cellpadding="0" cellspacing="0" style="width: 581px; height: 178px;">
                    <tbody>
                    <tr>
                        <td align="middle" width="226">
                            <img height="139" src="${ctxStatic}/images/ycz.jpg" width="194" /></td>
                        <td style="text-align: left; line-height: 24px; color: #555555;">
                            ${company.remarks} <a href="/profile.jsp" style="color: #0093df; text-decoration: none;">【了解详情】</a></td>
                    </tr>
                    </tbody>
                </table></div>

            </div>
        </div>
        <!--资质荣誉-->
        <div id="box_zzrongyu">
            <div id="box_zzrongyu_sub1">

                <div id="FrontSpecifies_show01-1373268808102" class="FrontSpecifies_show01-d1_c1"><p>
                    <img height="38" src="${ctxStatic}/zxy/images/contt2.jpg" usemap="#ckMap2" width="406" /><map name="ckMap2"><area coords="313,-1,409,39" href="" shape="rect" /></map></p></div>

            </div>
            <div id="box_zzrongyu_sub2">

                <div id="FrontNews_list01-1373352473199" class="FrontNews_list01-d3_c1_01">
                    <div class="scrollable  scrollliner">
                        <ul class="scrollitems">


                            <div class="product_list fl" id="product_list">
                                <a class="abtn aleft" href="#left" title="左移"></a>
                                <div class="imglist_w">
                                    <ul class="imglist">
                                        <c:forEach items="${lcpage.list}" var="lc" varStatus="status" >
                                            <li>
                                                <a href="#"><img src="${ctxStatic}/${lc.url}" /></a>
                                                <p><a target="_blank" href="#"> ${lc.name}</a></p>
                                            </li>
                                        </c:forEach>

                                       <%-- <li>
                                            <a href="#"><img src="${ctxStatic}/images/wmzx.png" /></a>
                                            <p><a target="_blank" href="#">我们遵循</a></p>
                                        </li>--%>

                                    </ul><!--imglist end-->
                                </div>
                                <a class="abtn aright" href="#right" title="右移"></a>
                            </div>
                            <!--scrolllist end-->
                            <li class="clearBoth"></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <div class="clearBoth"></div>
    </div>

    <!-- 产品展示 -->
    <div id="box_product">
        <div id="box_product_sub1">
            <div class="clearBoth"></div>

            <div id="FrontSpecifies_show01-1373329972600" class="FrontSpecifies_show01-d1_c1"
                 style="background:url('/static/zxy/images/producttop.jpg')" width="1000">
            <p style="float: right; height: 38px;margin-right: 3%"> <a href="/product.jsp" >更多>></a>
             </p></div>

        </div>
        <div class="cpzs" id="box_product_sub2" style="border: #e2e2e2 1px solid; border-top:none; width:998px; ">


            <!-- 装饰器样式开始 -->
            <div class="border_00">
                <div class="border_00-topr">
                    <div class="border_00-topl">
                    </div>
                </div>
                <div class="border_00-mid">
                    <div class="borderContent">
                        <div id="FrontProducts_list01-1373330115811" class="FrontProducts_list01-d3_c1_01">
                            <div class="comptitle_00"><strong class="titlestyle_00">商品列表展示</strong></div>
                        <div class="type">
							<span class="sort">
								</span>
                        </div>
                        <ul	class="mainul productlist-02">
                            <div class="product_list1 fl " id="product_list1">
                                <a class="abtn aleft" href="#left" title="左移"></a>
                                <div class="imglist_w">
                                    <ul class="imglist">
                                        <c:forEach items="${page.list}" var="medicinal" varStatus="status" >
                                            <li>
                                                <a href="#"><img src="${ctxStatic}/${medicinal.url}" /></a>
                                                <p><a target="_blank" href="#"> ${medicinal.name}</a></p>
                                            </li>
                                        </c:forEach>

                                    </ul><!--imglist end-->
                                </div>
                                <a class="abtn aright" href="#right" title="右移"></a>
                            </div>
                            <li class="clearBoth"></li>
                        </ul>
                            <ul	class="mainul productlist-02">
                                <div class="product_list1 fl " id="product_list2">
                                    <a class="abtn aleft" href="#left" title="左移"></a>
                                    <div class="imglist_w">
                                        <ul class="imglist">
                                            <c:forEach items="${zpage.list}" var="zz" varStatus="status" >
                                                <li>
                                                    <a href="#"><img src="${ctxStatic}/${zz.url}" /></a>
                                                    <p><a target="_blank" href="#"> ${zz.name}</a></p>
                                                </li>
                                            </c:forEach>

                                        </ul><!--imglist end-->
                                    </div>
                                    <a class="abtn aright" href="#right" title="右移"></a>
                                </div>
                                <li class="clearBoth"></li>
                            </ul>
                    </div>
                        <div class="clearBoth"></div>
                    </div>
                </div>
            </div>
            <!-- 装饰器样式结束 -->

        </div>

    </div>


<%--界面上的js收集起来--%>
<script type="text/javascript" src="${ctxStatic}/zxy/js/zxy_index.js"></script>

</body>
</html>
