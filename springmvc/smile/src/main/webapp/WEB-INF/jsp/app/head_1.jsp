<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<html>
<head>
    <link href="${ctxStatic}/zxy/css/page_index.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${ctxStatic}/zxy/js/jquery.js"></script>
    <script src="${ctxStatic}/zxy/js/ebiz-tabs.js" type="text/javascript"></script>
    <script src="${ctxStatic}/zxy/js/FrontColumns_navigation01.js" type="text/javascript"></script>

<%--new--%>
    <link href="${ctxStatic}/zxy/css/zxy_index.css" rel="stylesheet" type="text/css" />
    <script src="${ctxStatic}/zxy/js/jquery-1.4a2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctxStatic}/zxy/js/slider.js"></script>


    <%--需要获取公司的信息--%>

    <script id="tabs_box_con2_sub2" type="text/javascript">$(function() {tab("box_con2_sub2");});</script>

    <script type="text/javascript">
        FrontColumns_navigation01['FrontColumns_navigation01-1373248790246_init'] = function (){
            FrontColumns_navigation01.d2ddlevelsmenu.init("d2menubar_FrontColumns_navigation01-1373248790246", "topbar");
        };
        $(FrontColumns_navigation01['FrontColumns_navigation01-1373248790246_init']);

    </script>
    <script src="${ctxStatic}/zxy/js/jquery.KinSlideshow-1.2.1.min.js" type="text/javascript"></script>
    <script>
        $(function(){
            $("#KinSlideshow").KinSlideshow({
                moveStyle:"right",
                titleBar:{titleBar_height:30,titleBar_bgColor:"#08355c",titleBar_alpha:0.5},
                titleFont:{TitleFont_size:12,TitleFont_color:"#FFFFFF",TitleFont_weight:"normal"},
                btn:{btn_bgColor:"#FFFFFF",btn_bgHoverColor:"#1072aa",btn_fontColor:"#000000",btn_fontHoverColor:"#FFFFFF",btn_borderColor:"#cccccc",btn_borderHoverColor:"#1188c0",btn_borderWidth:1}
            });
        })
    </script>

</head  id="index">
    <!-- 头部导航开始 -->

    <div id="box_header">
        <!--头部-->
        <div id="box_header_top">
            <div class="row" style="font-size:58px; margin-top:30px;text-align:center;float: left;color: #04009F;">
                <%--<a href="#" style="color: #04009F;">--%>${sessionScope.company.name}<%--</a>--%>
            </div>
            <div class="row" style="font-size:20px; text-align:center;margin-top:30px; margin-right: 5%; float: right">
               联系我们：   ${sessionScope.company.phone}
            </div>
        </div>
        <!--栏目导航-->

        <div id="box_header_menu">


            <div id="box_header_menu_con">
                <div id="FrontColumns_navigation01-1373248790246" class="FrontColumns_navigation01-d2_c1"><div id="d2menubar_FrontColumns_navigation01-1373248790246" class="mattblackmenu">
                    <ul class="nav-first">
                        <li class="first">
                            <a href="/" title="首页">
                                首页 </a>
                        </li>

                        <li >
                            <a href="/profile.jsp" title="关于我们">
                                关于我们</a>
                        </li>

                        <li >
                            <a href="/product.jsp" title="产品中心">
                                产品中心</a>
                        </li>

                        <li class="last"></li>
                    </ul>
                </div>

                </div>

            </div>



            <div class="clearBoth"></div>
        </div>
        <!--banner-->
        <div id="box_header_hdp">
            <div style="width:1000px; height:365px;">

                <div id="KinSlideshow" style="visibility:hidden;">
                    <a href="" target="_blank"><img src="${ctxStatic}/images/banner2.jpg" alt="合作共赢" width="1000" height="365" /></a>
                    <a href="" target="_blank"><img src="${ctxStatic}/images/bg-homepage.jpg" alt="互利互惠" width="1000" height="365" /></a>
                </div>
            </div>

        </div>
    </div>
    <!-- 头部导航结束 -->
</html>