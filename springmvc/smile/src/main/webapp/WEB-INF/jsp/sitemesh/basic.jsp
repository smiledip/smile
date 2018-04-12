<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<%@ taglib prefix="fns" uri="/static/fns.tld" %>
<!DOCTYPE html>
<!--[if IE 6]>
<html id="ie6" dir="ltr" lang="en-US">
<![endif]-->
<!--[if IE 7]>
<html id="ie7" dir="ltr" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html id="ie8" dir="ltr" lang="en-US">
<![endif]-->
<!--[if IE 9]>
<html id="ie9" dir="ltr" lang="en-US">
<![endif]-->
<!--[if !(IE 6) | !(IE 7) | !(IE 8)  ]><!-->
<html dir="ltr" lang="en-US">
<head>
	<title><decorator:title/></title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width" />

	<link rel="stylesheet" type="text/css" media="all" href="${ctxStatic}/app/css/style.css" />
	<link rel="stylesheet" type="text/css" media="screen and (max-width: 980px)" href="${ctxStatic}/app/css/lessthen980.css" />
	<link rel="stylesheet" type="text/css" media="screen and (max-width: 600px)" href="${ctxStatic}/app/css/lessthen600.css" />
	<link rel="stylesheet" type="text/css" media="screen and (max-width: 480px)" href="${ctxStatic}/app/css/lessthen480.css" />
	<link rel="stylesheet" href="${ctxStatic}/app/css/shop.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${ctxStatic}/app/css/prettyPhoto.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${ctxStatic}/app/css/tipsy.css" type="text/css" media="all" />
	<link rel='stylesheet' href='${ctxStatic}/app/css/jquery-rotating.css' type='text/css' media='all' />
	<link rel='stylesheet' href='${ctxStatic}/app/css/slider-cycle.css' type='text/css' media='all' />

	<!-- [favicon] begin -->
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
	<link rel="icon" type="image/x-icon" href="favicon.ico" />
	<!-- [favicon] end -->

	<!-- FONT -->

	<!-- SCRIPTS -->
	<script type="text/javascript" src="${ctxStatic}/app/js/jquery.js"></script>
	<script type="text/javascript" src="${ctxStatic}/app/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="${ctxStatic}/app/js/jquery.tipsy.js"></script>
	<script type="text/javascript" src="${ctxStatic}/app/js/jquery.tweetable.js"></script>
	<script type="text/javascript" src="${ctxStatic}/app/js/jquery.nivo.slider.pack.js"></script>
	<script type="text/javascript" src="${ctxStatic}/app/js/jquery.cycle.min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/app/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="${ctxStatic}/app/js/comment-reply.js"></script>
	<script type="text/javascript" src="${ctxStatic}/zxy/js/zxy_json.js"></script>
	<link rel="stylesheet" type="text/css" media="all" href="${ctxStatic}/app/css/home.css" />
		<decorator:head />
</head>
<body class="responsive boxed-layout no_js">
<!-- START LIGHT WRAPPER -->
<div class="bgLight group">
	<!-- START WRAPPER -->
	<div class="wrapper group">
		<!-- START BG WRAPPER -->
		<div class="bgWrapper group">

     <%@include file="/WEB-INF/jsp/sitemesh/head.jsp" %>
   <decorator:body />

	 <%@include file="/WEB-INF/jsp/sitemesh/footer.jsp" %>
		</div>
		<!-- END BG WRAPPER -->
	</div>
	<!-- END WRAPPER -->
</div>
</body>



</html>