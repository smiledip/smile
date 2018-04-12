<%@ page contentType="text/html;charset=UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fns" uri="/static/fns.tld" %>


<!-- START HEADER -->
            <div id="header" class="group">
                <!-- .inner -->
                <div class="inner group">
                    <!-- START LOGO -->
                    <div id="logo" class="group">
                        <a href="/index.jsp" title="Sommerce Shop">
                            <span class="logo-title"> ${fns:getCompany().name}</span>
                        </a>
                        <p class="logo-description">http://www.smile.kim</p>
                    </div>
                    <!-- END LOGO -->
                    <!-- START LINKSBAR -->

                    <!-- END LINKSBAR -->
                    <div class="clear"></div>

                    <!-- START NAV -->
                    <div id="nav" class="group creative">
                        <ul id="menu-navigation" class="level-1">
                            <li>
                                <a href="/index.jsp">首页</a>

                            </li>
                            <li class="megamenu">
                                <a href="/profile.jsp">关于我们</a>

                            </li>
                            <li>
                                <a href="/product.jsp">主营产品</a>

                            </li>
                        </ul>
                    </div>
                    <!-- END NAV -->

                    <!-- START SEARCH FORM -->
                    <form role="search" method="get" id="searchform" action="#" class="group">
                        <div><label class="screen-reader-text" for="s">search</label>
                            <input type="text" value="" name="s" id="s" />
                            <input type="submit" id="searchsubmit" value="&gt;" />
                            <input type="hidden" name="post_type" value="product" />
                        </div>
                    </form>
                    <!-- END SEARCH FORM -->

                </div>
                <!-- end .inner -->

            </div>
            <!-- END HEADER -->


<div id="slider" class="group inner">
    <ul class="group">
        <li class="first slide-1 group image-content-type">
            <div class="slider-featured group"><a href="http://www.google.it"><img src="${ctxStatic}/images/banner2.jpg" width="960" height="338" alt="interior design" src="赤峰鑫华"/></a></div>
            <div class="slider-caption caption-right">
                <!-- TITLE -->
                <h2><a href="/profile.jsp">我们的理念</a></h2>
                <!-- TEXT -->

                <p>${fns:getCompany().zip_code}</p>
              <%--  <p><span class="special-font" style="font-size:24px;">123<span style="font-size:42px;">$45</span></span></p>--%>
            </div>
        </li>
        <li class="slide-2 group image-content-type">
            <div class="slider-featured group"><img src="${ctxStatic}/images/bg-homepage.jpg" width="960" height="338" alt="Luxury gold"  src="桔梗花"/></div>
            <div class="slider-caption caption-right">
                <!-- TITLE -->
                <h2>真诚期待与您合作</h2>
                <!-- TEXT -->
                <p>合作共赢，互利互惠</p>
            </div>
        </li>

    </ul>
</div>





            <!-- END SLIDER -->
            <div class="slider-mobile">
                <!-- START SLIDER -->
                <%--<div id="slider1" class="group mobile inner fixed-image">
                    <img src="${ctxStatic}/app/images/common/001.jpg" width="960" height="338" alt="" />
                </div>--%>
                <!-- END SLIDER -->
                <script type="text/javascript">
                    var 	yiw_slider_type = 'elegant',
                        yiw_slider_elegant_easing = null,
                        yiw_slider_elegant_fx = 'fade',
                        yiw_slider_elegant_speed = 500,
                        yiw_slider_elegant_timeout = 5000,
                        yiw_slider_elegant_caption_speed = 500;
                </script>

            </div>
            <!-- START PRIMARY SECTION -->

            <!-- END PRIMARY SECTION -->
            <!-- START NEWSLETTER FORM -->

            <!-- ENDSTART NEWSLETTER FORM -->
            <!-- START FOOTER -->

            <!-- END FOOTER -->
            <!-- START COPYRIGHT -->

            <!-- END COPYRIGHT -->





<script type="text/javascript" src="${ctxStatic}/app/js/jquery.custom.js"></script>
<script type="text/javascript" src="${ctxStatic}/app/js/contact.js"></script>
