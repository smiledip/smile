<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<html>
<head>

    <title>鑫华药材站_首页</title>
    <meta name=”Keywords” Content=”赤峰,中药材,药材,牛营子,药材市场,桔梗片,药材出售,药材收购,安国″>
    <meta name=”Description” Content=”鑫华药材购销站，位于内蒙古赤峰市喀喇沁旗牛家营子镇，长期从事药材收购，销售工作，期待合作，主要经营桔梗、沙参、板蓝根、田草、牛膝等中药材及其种子”>
</head>
<body >
<div id="primary" class="inner group">
    <div id="slogan" class="inner">
        <h1>Tel:${sessionScope.company.phone}</h1>
        <h3>   ${sessionScope.company.remarks}</h3>
    </div>
    <div class="layout-sidebar-no">
        <!-- START CONTENT -->
        <div id="content" role="main" class="group wrapper-content">
            <div id="post-7" class="post-7 page type-page status-publish hentry group">
                <div class="boxed-content group">
                    <div class="box-title group">
                        <h3>急售药材</h3>
                        <p>现有大量药材</p>
                    </div>
                    <div class="box-content group">
                        <ul class="products">

                            <c:forEach items="${page.list}" var="medicinal" varStatus="status" >
                                 <c:if test="${(status.index+1)%4 ==1}">
                                     <li class="product border shadow first last-row">
                                 </c:if>
                                <c:if test="${(status.index+1)%4 ==0}">
                                    <li class="product border shadow last last-row">
                                </c:if>
                                <c:if test="${(status.index+1)%4 !=0 && (status.index+1)%4 !=1}">
                                    <li class="product border shadow last-row">
                                </c:if>
                                    <a href="product_single.html">
                                        <div class="thumbnail">
                                            <img width="150" height="150" src="${ctxStatic}/${medicinal.url}" class="attachment-shop_small wp-post-image" alt="001" title="001" />
                                            <div class="thumb-shadow"></div>
                                            <strong class="below-thumb">${medicinal.name}</strong>
                                        </div>
                                     <%--   <span class="price">￥：</span>--%>
                                    </a>
                                  <%--  <div class="buttons">
                                        <a href="${ctxStatic}/app/product_single.html" class="details">DETAILS</a>&nbsp;<a href="#" class="add-to-cart">ADD TO CART</a>
                                    </div>--%>
                                </li>
                            </c:forEach>

                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="boxed-content group">
                    <div class="box-title group">
                        <h3>急售种子</h3>
                        <p>欢迎电联</p>
                    </div>
                    <div class="box-content group">
                        <ul class="products">

                            <c:forEach items="${zpage.list}" var="zz" varStatus="status" >
                                <c:if test="${(status.index+1)%4 ==1}">
                                    <li class="product border shadow first last-row">
                                </c:if>
                                <c:if test="${(status.index+1)%4 ==0}">
                                    <li class="product border shadow last last-row">
                                </c:if>
                                <c:if test="${(status.index+1)%4 !=0 && (status.index+1)%4 !=1}">
                                    <li class="product border shadow last-row">
                                </c:if>
                                    <a href="${ctxStatic}/app/product_single.html">
                                        <div class="thumbnail">
                                            <img width="150" height="150" src="${ctxStatic}/${zz.url}" class="attachment-shop_small wp-post-image" alt="interior" title="interior" />
                                            <div class="thumb-shadow"></div>
                                            <strong class="below-thumb"> ${zz.name}</strong>
                                        </div>
                                       <%-- <span class="price">&#36;60,000.00</span>--%>
                                    </a>
                                 <%--   <div class="buttons">
                                        <a href="${ctxStatic}/app/product_single.html" class="details">DETAILS</a>&nbsp;<a href="#" class="add-to-cart">ADD TO CART</a>
                                    </div>--%>
                                </li>
                            </c:forEach>

                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
                <%--  <div class="call-to-action-two group">
                      <div class="incipit">
                          <p class="special-font">
                              <span style="font-size:52px;"><strong>35% </strong></span> <span style="font-size:48px;">off everything </span>  Sign in to our list before march 21 to enjoy our special sales!<br />
                          </p>
                      </div>
                      <a href="#" class="call-button">
                          SIGN IN NOW
                      </a>
                  </div>--%>
            </div>
        </div>
        <!-- END CONTENT -->
    </div>
    <!-- START EXTRA CONTENT -->
    <!-- END EXTRA CONTENT -->
</div>
</body>
<!-- END LIGHT WRAPPER -->

</html>
