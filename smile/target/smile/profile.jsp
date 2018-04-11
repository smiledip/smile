<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<%@ taglib prefix="fns" uri="/static/fns.tld" %>
<html>
<head>

    <title>内蒙古药材_赤峰中药材_赤峰中药材价格_赤峰中药材批发/采购_中药材市场_鑫华药材站公司简介</title>
    <meta name="keywords" content="内蒙古中药材,药材种子,内蒙古中药材批发,内蒙古中药材供应,内蒙古中药材价格,中药材,中药材价格,中药材价格信息,中药材市场,药材收购,中药材批发,药材种子批发" />
    <meta name="description" content="鑫华药材购销站主要经营有桔梗片,桔梗、沙参、板蓝根、黄芩、防风,鑫华药材站地处喀喇沁旗牛家营子药材市场,牛家营子镇一直以药材基地著称,来往商客众多,货源充足" />


    <script language="JavaScript" type="text/javascript">
        window.onload = function(){
            checkUrl();
        };
    </script>
</head>
<body>
<div id="primary" class="inner group">
    <div id="slogan" class="inner">
        <h1>${fns:getCompany().name}</h1>
        <h3>${fns:getCompany().zip_code}</h3>
    </div>
    <div class="layout-sidebar-right">
        <!-- START CONTENT -->
        <div id="content" role="main" class="group wrapper-content">
            <div id="post-663" class="post-663 page type-page status-publish hentry group">
                <span class="special-font" style="font-size:24px;">期待您的加盟！ </span>
                <p>${fns:getCompany().remarks}</p>
                <p>联系人：${fns:getCompany().primaryPerson}</p>
                <p>电话：<strong> ${fns:getCompany().phone}</strong>可以加微信</p>
                <p>地址：<strong> ${fns:getCompany().address}</strong></p>
                </div>
        </div>
        <!-- END CONTENT -->
        <!-- START SIDEBAR -->
        <div id="sidebar" class="group">
            <div id="text-image-4" class="widget-1 widget-first widget text-image">
                <h3>药材交易中心</h3>
                <div class="text-image" style="text-align:left"><img src="${ctxStatic}/images/ycz.jpg" alt="地理位置" /></div>
            </div>
        </div>
        <!-- END SIDEBAR -->
        <div id="post-201" class="post-201 page type-page status-publish hentry group">
            <div class="boxed-content group">
                <div class="border-line" id="lcurl"></div>

                <div class="border-line"></div>
            </div>
        </div>
    </div>

    <!-- START EXTRA CONTENT -->
    <!-- END EXTRA CONTENT -->
</div>
</body>
</html>
