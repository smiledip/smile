<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<html>
<head>

    <title> 公司简介</title>

    <link href="${ctxStatic}/zxy/css/page_gywm.css" rel="stylesheet" type="text/css" />

</head>
<body  id="index" >

<div id="box_weizhi">
    <div id="box_weizhi_sub1">
        <DIV xmlns="" class="columnSpace" id="elem-FrontPublic_breadCrumb01-1373427330001" name="面包屑">
            <div id="FrontPublic_breadCrumb01-1373427330001" class="FrontPublic_breadCrumb01-d1_c1"><div>
                您现在的位置：&nbsp;公司简介</div>
            </div>
        </DIV>
    </div>
    <div class="clearBoth"></div>
</div>
<div id="box_con">
    <div id="box_con_sub1">
        <div id="box_con_sub1_l">
            <div id="box_con_sub1_l_sub2">
                <script type="text/javascript" src="${ctxStatic}/zxy/js/FrontComContent_list01.js"></script>
                <script type="text/javascript">
                    //<![CDATA[
                    FrontComContent_list01['FrontComContent_list01-1373443843147_init'] = function (){
                        FrontComContent_list01.d1extContainCategoryAlternate('FrontComContent_list01-1373443843147');
                    };
                    $(FrontComContent_list01['FrontComContent_list01-1373443843147_init']);
                    // ]]>
                </script>

                <div id="FrontComContent_list01-1373443843147" class="FrontComContent_list01-d1_c1">
                    <div class="menu-first">

                        <ul class="list1">
                            <li ><a id="comContent_da3c40b3-e50d-43dc-a5e2-da7ffc9dada5" href="#" class="menu-text1">关于我们</a>
                                <div id="comContent_da3c40b3-e50d-43dc-a5e2-da7ffc9dada5_second" class="menu-second">
                                    <p class="top"></p>
                                    <ul>
                                        <li><a  href="#" style="background-color: white" title="公司简介">公司简介</a></li>
                                        <li><a  href="#" style="background-color: white" title="联系方式">联系方式</a></li>
                                    </ul>
                                    <p class="bottom"></p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>


        </div>
        <div id="box_con_sub1_r">
            <!-- 装饰器样式开始 -->
            <div class="border_00">
                <div class="border_00-topr">
                    <div class="border_00-topl">
                    </div>
                </div>
                <div class="border_00-mid">
                    <div class="borderContent"><div id="FrontComContent_detail01-1373449566147" class="FrontComContent_detail01-d1_c1"><div class="comptitle_00"><strong class="titlestyle_00">公司简介</strong></div><div class="content">
                        <div class="describe htmledit">
                            <div class="FrontComContent_detail01-1373449566147_htmlbreak" id="FrontComContent_detail01-1373449566147_cont_1"
                                 style="display: block;"><p style="text-align: center; line-height: 1.5em; margin-top: 0em; text-indent: 0em; margin-bottom: 0em; letter-spacing: 0em;">
                                <span style="font-size: 9pt;"><span style="font-family: 宋体, tahoma, arial, sans-serif;">　　<span style="font-size: 14pt;"><strong> ${sessionScope.company.name}</strong></span></span></span></p>
                                <p style="text-align: center; line-height: 1.5em; margin-top: 0em; text-indent: 0em; margin-bottom: 0em; letter-spacing: 0em;">&nbsp;
                                </p>
                                <p style="line-height: 30px; margin-top: 0em; text-indent: 2em; margin-bottom: 0em; letter-spacing: 0em;">
                                    ${sessionScope.company.remarks}

                                </p>
                            </div>
                        </div>
                    </div>
                    </div>
                        <div class="clearBoth"></div>
                    </div>
                </div>
            </div>
            <!-- 装饰器样式结束 -->
            <p style="line-height: 30px; margin-top: 0em; text-indent: 0em; margin-bottom: 0em; letter-spacing: 0em;">
                    联系人：${sessionScope.company.primaryPerson}<br/>
                    电  话：${sessionScope.company.phone}<br/>
                    邮  箱：${sessionScope.company.email}<br/>
                    地  址：${sessionScope.company.address}<br/>
            </p>
        </div>
        <div class="clearBoth"></div>
    </div>
    <div class="clearBoth"></div>
</div>
<!-- 头部导航结束 -->
</body>
</html>
