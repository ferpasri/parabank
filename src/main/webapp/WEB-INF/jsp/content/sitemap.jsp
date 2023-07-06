<%@ include file="../include/include.jsp" %>

<jsp:include page="../include/leftmenu.jsp"/>
<br/>
<fmt:message key="account.services"/>
<br/>
<jsp:include page="../include/navmenu.jsp"/>

<!-- Injected Failure: A dummy button that does nothing -->
<button id="dummy_button">DummyButton</button>

<script>
	console.warn('Something went wrong with sitemap services!');
</script>