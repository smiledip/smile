<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<%@ taglib prefix="fns" uri="/static/fns.tld" %>
<html>
<head>

    <title>内蒙古药材_赤峰中药材_赤峰中药材价格_赤峰中药材批发/采购_中药材市场_鑫华药材站</title>
    <meta name="keywords" content="中药材市场,赤峰中药材,赤峰中药材批发,赤峰中药材供应,赤峰中药材价格,中药材厂家,中药材网站,中药材,中药材公司,牛营子,桔梗片,药材出售,药材收购,安国,药材市场地址" />
    <meta name="description" content="牛营子是中药材基地,药材种类齐全：桔梗、沙参、板蓝根、田草、牛膝、黄芪、党参、黄芩、铁芪、桔梗籽、沙参籽、北沙参等,牛营子有北方药材基地的称号" />

    <script language="JavaScript" type="text/javascript">
        window.onload = function(){
            //药材
            checkfirst(0,"jyc");
            //种子
            checkfirst(1,"jzz");
        };
    </script>

</head>
<body >
<div id="primary" class="inner group">
    <div id="slogan" class="inner">
        <h1>Tel:${fns:getCompany().phone}</h1>
        <h3>   ${fns:getCompany().fax}</h3>
    </div>
    <div class="layout-sidebar-no">
        <!-- START CONTENT -->
        <div id="content" role="main" class="group wrapper-content">
            <div id="post-7" class="post-7 page type-page status-publish hentry group">
                <div class="boxed-content group">
                    <div class="box-title group">
                        <h3>热销药材</h3>
                        <p>现有大量药材</p>
                    </div>
                    <div class="box-content group">
                        <ul class="products"  id="jyc">


                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="boxed-content group">
                    <div class="box-title group">
                        <h3>热销种子</h3>
                        <p>欢迎电联</p>
                    </div>
                    <div class="box-content group">
                        <ul class="products" id="jzz">

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
