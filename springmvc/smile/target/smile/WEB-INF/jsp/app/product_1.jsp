<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<html>
<head>

    <title>鑫华药材站_主营介绍</title>
    <link href="${ctxStatic}/zxy/css/page_gywm.css" rel="stylesheet" type="text/css" />
    <meta name=”Keywords” Content=”赤峰,中药材,牛营子,药材市场,桔梗片,药材出售,药材收购,安国″>
    <meta name=”Description” Content=”牛营子是中药材基地，药材种类齐全：桔梗、沙参、板蓝根、田草、牛膝、黄芪、党参、黄芩、铁芪、桔梗籽、沙参籽、北沙参等，牛营子有北方药材基地的称号”>
   <%-- <script type="text/javascript" src="/static/zxy/js/FrontComContent_list01.js"></script>
    <script type="text/javascript">
        //<![CDATA[
        FrontComContent_list01['FrontComContent_list01-1373443843147_init'] = function (){
            FrontComContent_list01.d1extContainCategoryAlternate('FrontComContent_list01-1373443843147');
        };
        $(FrontComContent_list01['FrontComContent_list01-1373443843147_init']);
        // ]]>
--%>



    <script type="text/javascript" src="${ctxStatic}/zxy/js/zxy_json.js"></script>
    <script language="JavaScript" type="text/javascript">
        window.onload = function(){
            checkValue(1,0);
        };
    </script>
</head>
<body  id="index" >

<div id="box_con">
    <div id="box_con_sub1">
        <div id="box_con_sub1_l">
            <div id="box_con_sub1_l_sub2">
                <div id="FrontComContent_list01-1373443843147" class="FrontComContent_list01-d1_c1">
                    <div class="menu-first">

                        <ul class="list1">
                            <li ><a id="comContent_da3c40b3-e50d-43dc-a5e2-da7ffc9dada5" href="#" class="menu-text1">产品中心</a>
                                <div id="comContent_da3c40b3-e50d-43dc-a5e2-da7ffc9dada5_second" >
                                    <p class="top"></p>
                                    <ul>
                                        <li><a onclick="checkValue(1,0)" style="background-color: white" title="主营药材">主营药材</a></li>
                                        <li><a onclick="checkValue(1,1)"  style="background-color: white"  title="主营种子">主营种子</a></li>

                                    </ul>
                                    <p class="bottom"></p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
         <%--   <div id="box_con_sub1_l_sub3">

                <div id="FrontSpecifies_show01-1373447665692" class="FrontSpecifies_show01-d1_c1">TEL:${sessionScope.company.phone}</div>

            </div>--%>
        </div>
        <div id="box_con_sub1_r">

            <!-- 装饰器样式开始 -->
            <div class="border_00">
                <div class="border_00-topr">
                    <div class="border_00-topl">
                    </div>
                </div>
                <div class="border_00-mid">
                    <div class="borderContent">
                        <div id="FrontProducts_list01-1373525025532cp" class="FrontProducts_list01-d5_c1"><div class="comptitle_00"><strong class="titlestyle_00">商品列表展示</strong></div>
                        <div class="type">
			<span class="sort">
				</span>
                        </div>
                            <div id="pagelistid">

                            </div>
                       <%-- <div class="skip-pages">
                            <div class="bottom">
                                <div class="pageJump"><div class="jump">转到<input id="pageid" class="textInput" value="1" maxlength="4" type="text">页<input class="pgbtn" value="GO" onclick="jumpbutton_d29bdb3e45ce427ba36b2655805da628();" type="button"></div><div class="number"><span class="disabled">首页</span><span class="disabled">上一页</span><span class="disabled">下一页</span><span class="disabled">末页</span></div><div class="total">当前为第${page.pageNo}页/共${page.pageNo}页</div></div>
                            </div>
                        </div>--%>
                   <%--     ${page.toString}--%>
                        <div id="pageid">


                        </div>
                    </div>
                        <div class="clearBoth"></div>
                    </div>

                </div>
            </div>
            <!-- 装饰器样式结束 -->


        </div>
        <div class="clearBoth"></div>
    </div>
    <div class="clearBoth"></div>
</div>
<!-- 头部导航结束 -->

</body>
</html>
