<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/desktop/template/cms" %>

<c:choose>
	<c:when test="${wro4jEnabled}">
		<link rel="stylesheet" type="text/css" media="all" href="${contextPath}/wro/all_desktop.css" />
		<link rel="stylesheet" type="text/css" media="all" href="${contextPath}/wro/${themeName}_desktop.css" />
		<link rel="stylesheet" type="text/css" media="all" href="${contextPath}/wro/addons_desktop.css" />
	</c:when>
	<c:otherwise>
		<%-- colorbox CSS --%>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/jquery.colorbox-1.3.16.css"/>
		
		<%-- BeautyTips CSS --%>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/jquery.bt-0.9.5.css"/>
		
		<%-- blueprintcss --%>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/blueprint/screen.css"/>
		
		<%-- jQuery UI CSS --%>
		<link rel="stylesheet" type="text/css" media="screen" href="${commonResourcePath}/css/jquery.ui.stars-3.0.1.custom.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/jquery.ui.autocomplete-1.8.18.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/helper.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/main.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/buttons.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/forms.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/header.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/miniCart.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/siteSearch.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/navigation.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/breadcrumb.css"/>
		
		<%--  Category page --%>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/facetNav.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/paginationBar.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/productGrid.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/productList.css"/>
		
		<%--  Product page --%>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/productDetails.css"/>
		
		<%--  Checkout pages --%>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/checkoutContentPanel.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/checkoutOrderDetails.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/checkoutProgress.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/order.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/orderTotals.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/footer.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/colorBox.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/searchPOS.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/userRegister.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/userLogin.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/userGuest.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/account.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/cartItems.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/landingLayout2Page.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/storeDetail.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/storeFinder.css"/>
		
		<%-- Theme CSS files --%>
		<link rel="stylesheet" type="text/css" media="all" href="${themeResourcePath}/css/changes.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/multi-d.css"/>
		<link rel="stylesheet" type="text/css" media="all" href="${commonResourcePath}/css/futureStock.css"/>
		
		<%--  AddOn Common CSS files --%>
		<c:forEach items="${addOnCommonCssPaths}" var="addOnCommonCss">
			<link rel="stylesheet" type="text/css" media="all" href="${addOnCommonCss}"/>
		</c:forEach>
	</c:otherwise>
</c:choose>


<%--  AddOn Theme CSS files --%>
<c:forEach items="${addOnThemeCssPaths}" var="addOnThemeCss">
	<link rel="stylesheet" type="text/css" media="all" href="${addOnThemeCss}"/>
</c:forEach>

<%-- <link rel="stylesheet" href="${commonResourcePath}/blueprint/print.css" type="text/css" media="print" /> --%>
<style type="text/css" media="print">
	@IMPORT url("${commonResourcePath}/blueprint/print.css");
</style>

<cms:previewCSS cmsPageRequestContextData="${cmsPageRequestContextData}" />
