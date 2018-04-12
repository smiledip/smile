<%@ page contentType="text/html;charset=UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>--%>


        <!--底部版权-->
        <!--友情链接-->
     <%--   <div id="copyright" class="group two-columns">
            <div class="inner group">
                <p class="left">
                    <img src="${ctxStatic}/app/images/logo1.png" alt="" />
                    <span style="padding-left:10px;">
                         <c:forEach items="${page3.list}" var="furl" varStatus="status" >
                             <a href="${furl.url}" style="margin-right:8px" target="_blank">${furl.name}</a>
                         </c:forEach>

                     </span>
                </p>

            </div>
            <div class="clearBoth"></div>
        </div>--%>
        <div id="footer" class="group footer-sidebar-right columns-3">
            <div class="inner">

        <div class="box-sections">
            <img src="${ctxStatic}/app/images/icons/set_icons/phone-black.png" width="32" height="32" alt="Customer support" class="icon" src="联系方式" />
            <h3><span style="line-height:32px">电话</span></h3>
            <p>
                <span  style="font-size:20px; color: black">${fns:getCompany().phone} </span>
                <button type="button" id="imgbutton" onclick="wx()" >加微信</button>
            <div id="wximg" style="display:none"><img src="${ctxStatic}/${fns:getCompany().email}"></div>

            </p>
        </div>
        <div class="box-sections">
            <img src="${ctxStatic}/app/images/icons/set_icons/chart-bar.png" width="32" height="32" alt="Marketing" src="药材站地址" class="icon" />
            <h3><span style="line-height:32px">地址</span></h3>
            <p>  <span  style="font-size:20px; color: black">${fns:getCompany().address} </span> </p>
        </div>
        <div class="box-sections2"  >
            <img src="${ctxStatic}/app/images/icons/set_icons/checkbox-checked.png"  height="32" src="友情链接" alt="Free shipping" class="icon" />
            <h3><span style="line-height:32px">相关连接</span></h3>
            <p> <span style="padding-left:10px;">
                <c:forEach items="${fns:getFurls()}" var="Furl" varStatus="status" >
                    <a href="${Furl.url}"  target="_blank">${Furl.name} </a>
                </c:forEach>
                  </span> </p>
        </div>

        <div class="clear"></div>
        <!--底部版权-->

            </div>
        </div>
        <!-- 底部版权结束 -->
        <div id="box_foot" style="text-align: center;background-color:#8db5d7 ">
            <div id="box_foot_sub">

                <div id="box_foot_sub1_sub2">

                    <div id="FrontSpecifies_show01-1373871276036" class="FrontSpecifies_show01-d1_c1">
                        <p>
                            COPYRIGHT(C) 2017 ${fns:getCompany().name} RIGHTS RESERVED</p>
                        <p>
                            地址:${fns:getCompany().address}| 手机:地址:${fns:getCompany().phone}| 网址:smile.kim</p>
                    </div>

                </div>

            </div>

        </div>
