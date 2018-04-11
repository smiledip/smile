<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

        <!--底部版权-->
        <!--友情链接-->
        <div id="box_yqline">
            <div id="box_yqline_sub1">
                <div id="FrontLinks_list01-1373333419486" class="FrontLinks_list01-d1_c1"><div>
                    <ul class="main">

                        <c:forEach items="${page3.list}" var="furl" varStatus="status" >
                            <li class="content column-num9">
                                <h4>
                                    <a href='${furl.url}'
                                       title="${furl.name}" target="_blank">${furl.name}</a>
                                </h4>
                            </li>
                        </c:forEach>

                        <li class="clearBoth"></li>
                    </ul>
                </div>
                </div>

            </div>
            <div class="clearBoth"></div>
        </div>
        <!--底部版权-->
    <div id="box_foot">
            <div id="box_foot_sub">

                <div id="box_foot_sub1_sub2">

                    <div id="FrontSpecifies_show01-1373871276036" class="FrontSpecifies_show01-d1_c1">
                        <p>
                            COPYRIGHT(C) 2017 ${ sessionScope.company.name} RIGHTS RESERVED</p>
                        <p>
                            地址:${sessionScope.company.address}| 手机:${sessionScope.company.phone}| 网址:smile.kim</p>
                    </div>

                </div>
                <div class="clearBoth"></div>
            </div>

        </div>
        <!-- 底部版权结束 -->

</html>
